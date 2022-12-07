using activants_backend.DTO;
using activants_backend.Entities;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using System.Net;

namespace activants_backend.Controllers
{
    [ApiController]
    [Route("api/[controller]")]
    public class SushiController : ControllerBase
    {
        private readonly DBContext DBContext;

        public SushiController(DBContext DBContext)
        {
            this.DBContext = DBContext;
        }

        [HttpGet("GetSushis")]
        public async Task<ActionResult<List<SushiDTO>>> Get()
        {
            var List = await DBContext.Sushis.Select(
                s => new SushiDTO
                {
                    id = s.id,
                    name = s.name,
                    img_url = s.img_url,
                    price = s.price,
                    created_at = s.created_at,
                }
            ).ToListAsync();

            if (List.Count < 0)
            {
                return NotFound();
            }
            else
            {
                return List;
            }
        }

        [HttpPost("InsertSushi")]
        public async Task<HttpStatusCode> InsertSushi(SushiDTO Sushi)
        {
            var entity = new Sushi()
            {
                id = Sushi.id,
                name = Sushi.name,
                img_url = Sushi.img_url,
                price = Sushi.price,
                created_at = Sushi.created_at,
            };

            DBContext.Sushis.Add(entity);
            await DBContext.SaveChangesAsync();

            return HttpStatusCode.Created;
        }
    }
}
