using Microsoft.AspNetCore.Mvc;
using System.Diagnostics;
using WebSchedule.DAL;
using WebSchedule.Models;
using WebSchedule.ViewModel;

namespace WebSchedule.Controllers
{
    public class HomeController : Controller
    {
        private readonly ILogger<HomeController> _logger;
        private readonly ApplicationDbContext _context;

        public HomeController(ILogger<HomeController> logger, ApplicationDbContext context)
        {
            _logger = logger;
            _context = context;
        }

        public IActionResult Index()
        {
            return View();
        }

        public IActionResult Privacy()
        {
            return View();
        }

        public IActionResult Schedule()
        {
            var result = (from p in _context.Course
                         join q in _context.Location
                         on p.LocationId equals q.Id
                         join a in _context.Instructor
                         on p.InstructorId equals a.Id
                         join b in _context.MeetDay
                         on p.MeetDayId equals b.Id
                         join c in _context.MeetType
                         on p.MeetTypeId equals c.Id
                         join d in _context.Room
                         on p.RoomId equals d.Id
                         select new CourseViewModel
                         {
                             Title = p.Title,
                             TotalSeats = p.TotalSeats,
                             RemainingSeats = p.RemainingSeats,
                             Room=d.Room,
                             StartTime = p.StartTime,
                             EndTime = p.EndTime,
                             InstructorName = a.FName + ' ' + a.LName,
                             Location = q.Location,
                             MeetDay = b.MeetDay,
                             MeetType = c.MeetType,
                         }).ToList();
            

            return View(result);
        }

        [ResponseCache(Duration = 0, Location = ResponseCacheLocation.None, NoStore = true)]
        public IActionResult Error()
        {
            return View(new ErrorViewModel { RequestId = Activity.Current?.Id ?? HttpContext.TraceIdentifier });
        }
    }
}
