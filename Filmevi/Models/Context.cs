using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace Filmevi.Models
{
    public class Context : DbContext
    {
        protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)

        { optionsBuilder.UseSqlServer("server = DESKTOP-9N19NIP; database = FilmDb; integrated security = true"); }
        public DbSet<Admin> Admins { get; set; } 
        public DbSet<film> films { get; set; } 
        public DbSet<comment> comments { get; set; }

    }
}
