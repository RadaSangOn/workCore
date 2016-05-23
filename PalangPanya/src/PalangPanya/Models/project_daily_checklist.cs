using System;
using System.Collections.Generic;

namespace PalangPanya.Models
{
    public partial class project_daily_checklist
    {
        public DateTime course_date { get; set; }
        public string course_code { get; set; }
        public string member_code { get; set; }
        public Guid id { get; set; }
        public string x_log { get; set; }
        public string x_note { get; set; }
        public string x_status { get; set; }
    }
}
