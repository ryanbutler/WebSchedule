using Microsoft.EntityFrameworkCore;
using WebSchedule.Models;
using WebSchedule.ViewModel;
namespace WebSchedule.DAL
{
    public class ApplicationDbContext : DbContext
    {
        public DbSet<Instructors> Instructor { get; set; }
        public DbSet<Locations> Location { get; set; }
        public DbSet<Rooms> Room { get; set; }
        public DbSet<Courses> Course { get; set; }
        public DbSet<MeetDays> MeetDay { get; set; }
        public DbSet<MeetTypes> MeetType { get; set; }
        public ApplicationDbContext(DbContextOptions<ApplicationDbContext> options) : base(options)
        {

        }

        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            modelBuilder.Entity<CourseViewModel>().HasNoKey();
        }
    }
}
