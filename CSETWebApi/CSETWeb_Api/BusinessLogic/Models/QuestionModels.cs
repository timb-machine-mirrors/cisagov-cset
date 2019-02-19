//////////////////////////////// 
// 
//   Copyright 2018 Battelle Energy Alliance, LLC  
// 
// 
//////////////////////////////// 
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace CSETWeb_Api.Models
{
    /// <summary>
    /// A response containing a structure of questions in their group/subgroups
    /// plus the current application mode (questions/requirements) of the assessment.
    /// </summary>
    public class QuestionResponse
    {
        public List<QuestionGroup> QuestionGroups;
        public string ApplicationMode;
    }

    /// <summary>
    /// A grouping of subgroups.
    /// </summary>
    public class QuestionGroup
    {
        public int GroupHeadingId;
        public string GroupHeadingText;
        public string StandardShortName;
        public List<QuestionSubCategory> SubCategories = new List<QuestionSubCategory>();
    }

    /// <summary>
    /// A subgroup containing a list of questions.
    /// </summary>
    public class QuestionSubCategory
    {
        public int GroupHeadingId;
        public int SubCategoryId;
        public string SubCategoryHeadingText;
        public string HeaderQuestionText;
        public string SubCategoryAnswer;
        public List<QuestionAnswer> Questions = new List<QuestionAnswer>();
    }

    /// <summary>
    /// One question and its answer fields.  This is used for both Question and Requirement modes.
    /// </summary>
    public class QuestionAnswer
    {
        /// <summary>
        /// An ordinal number in the case of a Question, and the requirement title/version
        /// in the case of Requirement.
        /// </summary>
        public string DisplayNumber;
        public int QuestionId;
        public string QuestionText;
        public List<ParameterToken> ParmSubs;
        public string StdRefId;
        public string Answer;
        public string AltAnswerText;
        public string Comment;
        public bool MarkForReview;
        public bool HasComment { get; set; }        
        public bool HasDocument { get; set; }
        public int docnum { get; set; }
        public bool HasDiscovery { get; set; }
        public int findingnum { get; set; }
        public int? Answer_Id { get; set; }
    }


    /// <summary>
    /// Describes the user's answer, including Y/N/NA/ALT as well as
    /// comments and alt text.
    /// </summary>
    public class Answer
    {
        public int QuestionId;

        /// <summary>
        /// The sequential number that was assigned when the question list was built.
        /// </summary>
        public int QuestionNumber;

        public string AnswerText;
        public string AltAnswerText;
        public string Comment;
        public bool MarkForReview;
    }


    /// <summary>
    /// A response object containing the total number of active
    /// questions and requirements.  
    /// </summary>
    public class QuestionRequirementCounts
    {
        /// <summary>
        /// The number of active Questions based on the selected Standards.
        /// </summary>
        public int QuestionCount;

        /// <summary>
        /// The number of active Requirements based on the selected Standards.
        /// </summary>
        public int RequirementCount;
    }


    /// <summary>
    /// Encapsulates a mass answer update request, such as when the user 
    /// selects an 'N' or 'NA' answer for a subcategory.
    /// </summary>
    public class SubCategoryAnswers
    {
        /// <summary>
        /// 
        /// </summary>
        public int GroupHeadingId;

        /// <summary>
        /// 
        /// </summary>
        public int SubCategoryId;

        /// <summary>
        /// The answer stored in the SUB_CATEGORY_ANSWERS table.
        /// </summary>
        public string SubCategoryAnswer;

        /// <summary>
        /// The collection of answers to the questions in the subcategory
        /// </summary>
        public List<Answer> Answers;
    }


    /// <summary>
    /// This is used to quickly get the IDs for Question_Group_Heading and Universal_Sub_Category
    /// relationships.
    /// </summary>
    public class GroupAndSubcategory
    {
        public int QuestionGroupHeadingId;
        public string QuestionGroupHeadingText;
        public int SubCategoryId;
        public string SubCategoryHeadingText;
        public string SubCategoryHeaderQuestionText;
    }


    /// <summary>
    /// A collection of PARAMETERS [tokens] and their 
    /// configured substitution text values.
    /// </summary>
    public class ParameterSubstitution
    {
        public List<ParameterToken> Tokens = new List<ParameterToken>();


        /// <summary>
        /// Adds a new element to the tokens list or overwrites
        /// if it already exists.  This is so that we can overlay
        /// global settings with local/answer settings.
        /// </summary>
        /// <param name="token"></param>
        /// <param name="substitution"></param>
        public void Set(int id, string token, string substitution, int reqId, int ansId)
        {
            var t = this.Tokens.Find(x => x.Token == token);
            if (t != null)
            {
                t.Substitution = substitution;
                t.RequirementId = reqId;
                t.AnswerId = ansId;
            }
            else
            {
                Tokens.Add(new ParameterToken(id, token, substitution, reqId, ansId));
            }
        }
    }


    /// <summary>
    /// Defines one parameter override token.
    /// </summary>
    public class ParameterToken
    {
        public int Id;
        public string Token;
        public string Substitution;
        public int RequirementId;
        public int AnswerId;

        /// <summary>
        /// Constructor
        /// </summary>
        public ParameterToken(int id, string token, string substitution, int reqId, int ansId)
        {
            this.Id = id;
            this.Token = token;
            this.Substitution = substitution;
            this.RequirementId = reqId;
            this.AnswerId = ansId;
        }
    }
}
