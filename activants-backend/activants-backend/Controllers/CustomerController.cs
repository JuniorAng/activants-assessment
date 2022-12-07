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
    public class CustomerController : ControllerBase
    {
        private readonly DBContext DBContext;

        public CustomerController(DBContext DBContext)
        {
            this.DBContext = DBContext;
        }

        [HttpGet("GetCustomers")]
        public async Task<ActionResult<List<CustDTO>>> Get()
        {
            var List = await DBContext.Customers.Select(
                s => new CustDTO
                {
                    id = s.id,
                    fullName = s.fullName,
                    email = s.email,
                    amount = s.amount,
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

        [HttpPost("InsertCustomer")]
        public async Task<HttpStatusCode> InsertUser(CustDTO Customer)
        {
            var entity = new Customer()
            {
                fullName = Customer.fullName,
                email = Customer.email,
                amount = Customer.amount,
            };

            DBContext.Customers.Add(entity);
            await DBContext.SaveChangesAsync();

            return HttpStatusCode.Created;
        }

    }
}
