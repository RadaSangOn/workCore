using Microsoft.EntityFrameworkCore;

namespace PalangPanya.Models
{
    public partial class PalangPanyaDBContext : DbContext
    {
        public PalangPanyaDBContext(DbContextOptions<PalangPanyaDBContext> options)
            : base(options)
        { }

        public virtual DbSet<member> member { get; set; }
    }
}