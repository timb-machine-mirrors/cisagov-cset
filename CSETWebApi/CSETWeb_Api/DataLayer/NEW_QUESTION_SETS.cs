//////////////////////////////// 
// 
//   Copyright 2018 Battelle Energy Alliance, LLC  
// 
// 
//////////////////////////////// 
//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace DataLayer
{
    using System;
    using System.Collections.Generic;
    
    public partial class NEW_QUESTION_SETS
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public NEW_QUESTION_SETS()
        {
            this.NEW_QUESTION_LEVELS = new HashSet<NEW_QUESTION_LEVELS>();
        }
    
        public string Set_Name { get; set; }
        public int Question_Id { get; set; }
        public int New_Question_Set_Id { get; set; }
    
        public virtual NEW_QUESTION NEW_QUESTION { get; set; }
        public virtual SET SET { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<NEW_QUESTION_LEVELS> NEW_QUESTION_LEVELS { get; set; }
    }
}

