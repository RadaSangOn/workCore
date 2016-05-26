using System;
using System.Collections.Generic;

namespace PalangPanya.Models
{
    public partial class course_group
    {
        public string cgroup_code { get; set; }
        public string cgroup_desc { get; set; }
        public Guid id { get; set; }
        public byte[] rowversion { get; set; }
        public string x_log { get; set; }
        public string x_note { get; set; }
        public string x_status { get; set; }
    }
}
