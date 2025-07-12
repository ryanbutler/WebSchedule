namespace WebSchedule.Models
{
    public class Courses
    {
        public int Id{get; set; }
        public int LocationId{get;set; }
        public int InstructorId { get; set; }
        public int MeetDayId{get;set; }
        public int MeetTypeId { get; set; }
        public int RoomId { get; set; }
        public string Title { get; set; } = string.Empty;
        public string TotalSeats { get; set; } = string.Empty;
        public string StartTime { get; set; } = string.Empty;
        public string EndTime { get; set; } = string.Empty;
        public int RemainingSeats { get; set; }
    }
}
