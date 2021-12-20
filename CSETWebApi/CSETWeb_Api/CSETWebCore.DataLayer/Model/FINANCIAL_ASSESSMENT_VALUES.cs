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
    /// A collection of FINANCIAL_ASSESSMENT_VALUES records
    /// </summary>
    public partial class FINANCIAL_ASSESSMENT_VALUES
    {
        [Key]
        public int Assessment_Id { get; set; }
        [Key]
        [StringLength(250)]
        public string AttributeName { get; set; }
        [StringLength(50)]
        public string AttributeValue { get; set; }

        [ForeignKey(nameof(Assessment_Id))]
        [InverseProperty(nameof(ASSESSMENTS.FINANCIAL_ASSESSMENT_VALUES))]
        public virtual ASSESSMENTS Assessment { get; set; }
        [ForeignKey(nameof(AttributeName))]
        [InverseProperty(nameof(FINANCIAL_ATTRIBUTES.FINANCIAL_ASSESSMENT_VALUES))]
        public virtual FINANCIAL_ATTRIBUTES AttributeNameNavigation { get; set; }
    }
}