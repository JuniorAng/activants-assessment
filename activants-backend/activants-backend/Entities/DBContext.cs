using Microsoft.EntityFrameworkCore;

namespace activants_backend.Entities
{
    public partial class DBContext : DbContext
    {
        public DBContext()
        {
        }

        public DBContext(DbContextOptions<DBContext> options)
            : base(options)
        {
        }

        public virtual DbSet<Customer> Customers { get; set; }
        public virtual DbSet<Sushi> Sushis { get; set; }

        protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
        {
            if (!optionsBuilder.IsConfigured)
            {
                optionsBuilder.UseMySQL("server=localhost;port=3306;user=root;password=p@ssw0rd;database=demo");
            }
        }

        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            modelBuilder.Entity<Customer>(entity =>
            {
                entity.ToTable("customer");

                entity.Property(e => e.id).HasColumnType("int(11)");

                entity.Property(e => e.fullName)
                    .IsRequired()
                    .HasMaxLength(45);

                entity.Property(e => e.email)
                    .IsRequired()
                    .HasMaxLength(100);

                entity.Property(e => e.amount)
                    .IsRequired()
                    .HasColumnType("int(11)");
            });

            modelBuilder.Entity<Sushi>(entity =>
            {
                entity.ToTable("sushi");

                entity.Property(e => e.id).HasColumnType("int(11)");

                entity.Property(e => e.name)
                    .IsRequired()
                    .HasMaxLength(60);

                entity.Property(e => e.img_url)
                    .IsRequired()
                    .HasMaxLength(150);

                entity.Property(e => e.price)
                    .IsRequired()
                    .HasColumnType("int(11)");

                entity.Property(e => e.created_at)
                    .IsRequired()
                    .HasColumnType("datetime");
            });
            OnModelCreatingPartial(modelBuilder);
        }

        partial void OnModelCreatingPartial(ModelBuilder modelBuilder);
    }
}
