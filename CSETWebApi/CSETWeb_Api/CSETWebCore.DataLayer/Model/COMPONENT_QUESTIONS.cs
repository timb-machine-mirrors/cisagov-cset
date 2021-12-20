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
    /// A collection of COMPONENT_QUESTIONS records
    /// </summary>
    public partial class COMPONENT_QUESTIONS
    {
        /// <summary>
        /// The Question Id is used to
        /// </summary>
        [Key]
        public int Question_Id { get; set; }
        [Key]
        public int Component_Symbol_Id { get; set; }
        /// <summary>
        /// The Weight is used to
        /// </summary>
        public int Weight { get; set; }
        /// <summary>
        /// The Rank is used to
        /// </summary>
        public int Rank { get; set; }
        /// <summary>
        /// The Seq is used to
        /// </summary>
        [StringLength(50)]
        public string Seq { get; set; }

        [ForeignKey(nameof(Component_Symbol_Id))]
        [InverseProperty(nameof(COMPONENT_SYMBOLS.COMPONENT_QUESTIONS))]
        public virtual COMPONENT_SYMBOLS Component_Symbol { get; set; }
        [ForeignKey(nameof(Question_Id))]
        [InverseProperty(nameof(NEW_QUESTION.COMPONENT_QUESTIONS))]
        public virtual NEW_QUESTION Question { get; set; }
    }
}