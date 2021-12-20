﻿// <auto-generated> This file has been auto generated by EF Core Power Tools. </auto-generated>
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using Microsoft.EntityFrameworkCore;

#nullable disable

namespace CSETWebCore.DataLayer.Model
{
    /// <summary>
    /// A collection of REPORT_OPTIONS records
    /// </summary>
    public partial class REPORT_OPTIONS
    {
        public REPORT_OPTIONS()
        {
            REPORT_OPTIONS_SELECTION = new HashSet<REPORT_OPTIONS_SELECTION>();
        }

        [Key]
        public int Report_Option_Id { get; set; }
        [Required]
        [StringLength(250)]
        public string Display_Name { get; set; }

        [InverseProperty("Report_Option")]
        public virtual ICollection<REPORT_OPTIONS_SELECTION> REPORT_OPTIONS_SELECTION { get; set; }
    }
}