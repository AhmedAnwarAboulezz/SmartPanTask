using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace SmartPanTask.Models
{



     [MetadataType(typeof(EmployeeMetaData))]
    public partial class Employee
    {
    }
     public class EmployeeMetaData
    {
        [DisplayName( "First Name")]
        [Required(ErrorMessage = "Please enter your first name")]
        public string FirstName { get; set; }
        [DisplayName("Last Name")]
        [Required(ErrorMessage = "Please enter your Last name")]
        public string LastName { get; set; }
        [Required(ErrorMessage = "Please enter your salary")]
        public Nullable<decimal> Salary { get; set; }
        public string Image { get; set; }
        public Nullable<int> ManagerID { get; set; }
        public Nullable<int> DepartmentID { get; set; }
        public string UserId { get; set; }
        public string Type { get; set; }
    }

}