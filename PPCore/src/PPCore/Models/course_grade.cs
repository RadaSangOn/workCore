using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace PPCore.Models
{
    public class course_grade
    {
        public string cgrade_code { get; set; }
        public Guid id { get; set; }
        public string cgrade_desc { get; set; }
        public byte[] rowversion { get; set; }
        public string x_log { get; set; }
        public string x_note { get; set; }
        public string x_status { get; set; }
    }
}
