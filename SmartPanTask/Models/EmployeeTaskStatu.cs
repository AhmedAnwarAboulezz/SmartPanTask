//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace SmartPanTask.Models
{
    using System;
    using System.Collections.Generic;
    
    public partial class EmployeeTaskStatu
    {
        public int Id { get; set; }
        public string TaskStatus { get; set; }
        public Nullable<int> TaskID { get; set; }
        public Nullable<System.DateTime> DateUpdated { get; set; }
    
        public virtual EmployeeTask EmployeeTask { get; set; }
    }
}