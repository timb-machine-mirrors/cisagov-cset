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
    /// A collection of SECTOR_INDUSTRY records
    /// </summary>
    [Index(nameof(IndustryId), Name = "IX_SECTOR_INDUSTRY", IsUnique = true)]
    public partial class SECTOR_INDUSTRY
    {
        public SECTOR_INDUSTRY()
        {
            DEMOGRAPHICS = new HashSet<DEMOGRAPHICS>();
        }

        [Key]
        public int SectorId { get; set; }
        [Key]
        public int IndustryId { get; set; }
        [Required]
        [StringLength(150)]
        public string IndustryName { get; set; }

        [ForeignKey(nameof(SectorId))]
        [InverseProperty(nameof(SECTOR.SECTOR_INDUSTRY))]
        public virtual SECTOR Sector { get; set; }
        public virtual ICollection<DEMOGRAPHICS> DEMOGRAPHICS { get; set; }
    }
}