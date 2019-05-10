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
        [DisplayFormat(ApplyFormatInEditMode = true, DataFormatString = "{0:c}")]
        public Nullable<decimal> Salary { get; set; }
        [DisplayName("Profile Photo")]
        [Required(ErrorMessage = "Please Load an image")]
        public string Image { get; set; }
        [DisplayName("Manager Name")]
        public Nullable<int> ManagerID { get; set; }
    }

}