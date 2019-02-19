﻿using System;
using System.Collections.Generic;

namespace DataLayerCore.Model
{
    public partial class ASSESSMENTS
    {
        public ASSESSMENTS()
        {
            ANSWER = new HashSet<ANSWER>();
            ASSESSMENT_CONTACTS = new HashSet<ASSESSMENT_CONTACTS>();
            AVAILABLE_STANDARDS = new HashSet<AVAILABLE_STANDARDS>();
            CNSS_CIA_JUSTIFICATIONS = new HashSet<CNSS_CIA_JUSTIFICATIONS>();
            DOCUMENT_FILE = new HashSet<DOCUMENT_FILE>();
            FRAMEWORK_TIER_TYPE_ANSWER = new HashSet<FRAMEWORK_TIER_TYPE_ANSWER>();
            GENERAL_SAL = new HashSet<GENERAL_SAL>();
            PARAMETER_ASSESSMENT = new HashSet<PARAMETER_ASSESSMENT>();
            REPORT_DETAIL_SECTION_SELECTION = new HashSet<REPORT_DETAIL_SECTION_SELECTION>();
            REPORT_OPTIONS_SELECTION = new HashSet<REPORT_OPTIONS_SELECTION>();
            REPORT_STANDARDS_SELECTION = new HashSet<REPORT_STANDARDS_SELECTION>();
            SUB_CATEGORY_ANSWERS = new HashSet<SUB_CATEGORY_ANSWERS>();
        }

        public int Assessment_Id { get; set; }
        public DateTime AssessmentCreatedDate { get; set; }
        public int? AssessmentCreatorId { get; set; }
        public DateTime? LastAccessedDate { get; set; }
        public string Alias { get; set; }
        public Guid Assessment_GUID { get; set; }
        public DateTime Assessment_Date { get; set; }

        public virtual USERS AssessmentCreator { get; set; }
        public virtual DEMOGRAPHICS DEMOGRAPHICS { get; set; }
        public virtual INFORMATION INFORMATION { get; set; }
        public virtual STANDARD_SELECTION STANDARD_SELECTION { get; set; }
        public virtual ICollection<ANSWER> ANSWER { get; set; }
        public virtual ICollection<ASSESSMENT_CONTACTS> ASSESSMENT_CONTACTS { get; set; }
        public virtual ICollection<AVAILABLE_STANDARDS> AVAILABLE_STANDARDS { get; set; }
        public virtual ICollection<CNSS_CIA_JUSTIFICATIONS> CNSS_CIA_JUSTIFICATIONS { get; set; }
        public virtual ICollection<DOCUMENT_FILE> DOCUMENT_FILE { get; set; }
        public virtual ICollection<FRAMEWORK_TIER_TYPE_ANSWER> FRAMEWORK_TIER_TYPE_ANSWER { get; set; }
        public virtual ICollection<GENERAL_SAL> GENERAL_SAL { get; set; }
        public virtual ICollection<PARAMETER_ASSESSMENT> PARAMETER_ASSESSMENT { get; set; }
        public virtual ICollection<REPORT_DETAIL_SECTION_SELECTION> REPORT_DETAIL_SECTION_SELECTION { get; set; }
        public virtual ICollection<REPORT_OPTIONS_SELECTION> REPORT_OPTIONS_SELECTION { get; set; }
        public virtual ICollection<REPORT_STANDARDS_SELECTION> REPORT_STANDARDS_SELECTION { get; set; }
        public virtual ICollection<SUB_CATEGORY_ANSWERS> SUB_CATEGORY_ANSWERS { get; set; }
    }
}