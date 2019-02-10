using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace noskhe_Admin.Controller
{
    public class Medicine
    {
        public int MedicineId { get; set; }
        public string Name { get; set; }
        public decimal Price { get; set; }
        public string ProductPictureUrl { get; set; }
        public DateTime ProductPictureUploadDate { get; set; }
        public bool Type { get; set; }
        
    }
}
