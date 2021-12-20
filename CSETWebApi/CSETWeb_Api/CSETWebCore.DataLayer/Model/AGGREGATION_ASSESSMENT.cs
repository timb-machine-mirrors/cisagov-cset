﻿// <auto-generated> This file has been auto generated by EF Core Power Tools. </auto-generated>
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using Microsoft.EntityFrameworkCore;

#nullable disable

namespace CSETWebCore.DataLayer.Model
{
    public partial class AGGREGATION_ASSESSMENT
    {
        [Key]
        public int Assessment_Id { get; set; }
        [Key]
        public int Aggregation_Id { get; set; }
        public int? Sequence { get; set; }
        [StringLength(15)]
        public string Alias { get; set; }

        [ForeignKey(nameof(Aggregation_Id))]
        [InverseProperty(nameof(AGGREGATION_INFORMATION.AGGREGATION_ASSESSMENT))]
        public virtual AGGREGATION_INFORMATION Aggregation { get; set; }
        [ForeignKey(nameof(Assessment_Id))]
        [InverseProperty(nameof(ASSESSMENTS.AGGREGATION_ASSESSMENT))]
        public virtual ASSESSMENTS Assessment { get; set; }
    }
}