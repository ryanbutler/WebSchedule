namespace WebSchedule.ViewModel
{
    public class CourseViewModel
    {
        public string Title { get; set; } = string.Empty;
        public string Location { get; set; } = string.Empty;
        public string MeetDay { get; set; } = string.Empty;
        public string MeetType { get; set; } = string.Empty;
        public string TotalSeats { get; set; } = string.Empty;
        public string StartTime { get; set; } = string.Empty;
        public string EndTime { get; set; } = string.Empty;
        public int RemainingSeats { get; set; }
        public string FName { get; set; } = string.Empty;
        public string LName { get; set; } = string.Empty;
        public string Room { get; set; } = string.Empty;
        public string InstructorName { get; set; } = string.Empty;
    }
}
