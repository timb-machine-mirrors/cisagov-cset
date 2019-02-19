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
    
    public partial class PROCUREMENT_LANGUAGE_DATA
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public PROCUREMENT_LANGUAGE_DATA()
        {
            this.PROCUREMENT_LANGUAGE_DATA1 = new HashSet<PROCUREMENT_LANGUAGE_DATA>();
            this.PROCUREMENT_LANGUAGE_DATA2 = new HashSet<PROCUREMENT_LANGUAGE_DATA>();
            this.REFERENCES_DATA = new HashSet<REFERENCES_DATA>();
        }
    
        public int Procurement_Id { get; set; }
        public Nullable<int> Parent_Heading_Id { get; set; }
        public string Section_Number { get; set; }
        public string Topic_Name { get; set; }
        public string Heading { get; set; }
        public string Basis { get; set; }
        public string Language_Guidance { get; set; }
        public string Procurement_Language { get; set; }
        public string Fatmeasures { get; set; }
        public string Satmeasures { get; set; }
        public string Maintenance_Guidance { get; set; }
        public string References_Doc { get; set; }
        public string Flow_Document { get; set; }
    
        public virtual PROCUREMENT_LANGUAGE_HEADINGS PROCUREMENT_LANGUAGE_HEADINGS { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<PROCUREMENT_LANGUAGE_DATA> PROCUREMENT_LANGUAGE_DATA1 { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<PROCUREMENT_LANGUAGE_DATA> PROCUREMENT_LANGUAGE_DATA2 { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<REFERENCES_DATA> REFERENCES_DATA { get; set; }
    }
}

