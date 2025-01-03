/*
Run this script on:

(localdb)\v11.0.csetweb922    -  This database will be modified

to synchronize it with:

(localdb)\v11.0.csetweb923

You are recommended to back up your database before running this script

Script created by SQL Data Compare version 14.0.7.13517 from Red Gate Software Ltd at 2/14/2020 1:02:29 PM

*/
		
SET NUMERIC_ROUNDABORT OFF
GO
SET ANSI_PADDING, ANSI_WARNINGS, CONCAT_NULL_YIELDS_NULL, ARITHABORT, QUOTED_IDENTIFIER, ANSI_NULLS, NOCOUNT ON
GO
SET DATEFORMAT YMD
GO
SET XACT_ABORT ON
GO
SET TRANSACTION ISOLATION LEVEL Serializable
GO
BEGIN TRANSACTION

PRINT(N'Drop constraints from [dbo].[NEW_QUESTION_LEVELS]')
ALTER TABLE [dbo].[NEW_QUESTION_LEVELS] NOCHECK CONSTRAINT [FK_NEW_QUESTION_LEVELS_NEW_QUESTION_SETS]
ALTER TABLE [dbo].[NEW_QUESTION_LEVELS] NOCHECK CONSTRAINT [FK_NEW_QUESTION_LEVELS_UNIVERSAL_SAL_LEVEL]

PRINT(N'Drop constraints from [dbo].[REQUIREMENT_SETS]')
ALTER TABLE [dbo].[REQUIREMENT_SETS] NOCHECK CONSTRAINT [FK_QUESTION_SETS_SETS]
ALTER TABLE [dbo].[REQUIREMENT_SETS] NOCHECK CONSTRAINT [FK_REQUIREMENT_SETS_NEW_REQUIREMENT]

PRINT(N'Drop constraints from [dbo].[REQUIREMENT_QUESTIONS_SETS]')
ALTER TABLE [dbo].[REQUIREMENT_QUESTIONS_SETS] NOCHECK CONSTRAINT [FK_REQUIREMENT_QUESTIONS_SETS_NEW_QUESTION]
ALTER TABLE [dbo].[REQUIREMENT_QUESTIONS_SETS] NOCHECK CONSTRAINT [FK_REQUIREMENT_QUESTIONS_SETS_NEW_REQUIREMENT]
ALTER TABLE [dbo].[REQUIREMENT_QUESTIONS_SETS] NOCHECK CONSTRAINT [FK_REQUIREMENT_QUESTIONS_SETS_SETS]

PRINT(N'Drop constraints from [dbo].[NEW_QUESTION_SETS]')
ALTER TABLE [dbo].[NEW_QUESTION_SETS] NOCHECK CONSTRAINT [FK_NEW_QUESTION_SETS_NEW_QUESTION]
ALTER TABLE [dbo].[NEW_QUESTION_SETS] NOCHECK CONSTRAINT [FK_NEW_QUESTION_SETS_SETS]

PRINT(N'Drop constraints from [dbo].[SETS]')
ALTER TABLE [dbo].[SETS] NOCHECK CONSTRAINT [FK_SETS_Sets_Category]

PRINT(N'Drop constraint FK_AVAILABLE_STANDARDS_SETS from [dbo].[AVAILABLE_STANDARDS]')
ALTER TABLE [dbo].[AVAILABLE_STANDARDS] NOCHECK CONSTRAINT [FK_AVAILABLE_STANDARDS_SETS]

PRINT(N'Drop constraint FK_CUSTOM_STANDARD_BASE_STANDARD_SETS from [dbo].[CUSTOM_STANDARD_BASE_STANDARD]')
ALTER TABLE [dbo].[CUSTOM_STANDARD_BASE_STANDARD] NOCHECK CONSTRAINT [FK_CUSTOM_STANDARD_BASE_STANDARD_SETS]

PRINT(N'Drop constraint FK_CUSTOM_STANDARD_BASE_STANDARD_SETS1 from [dbo].[CUSTOM_STANDARD_BASE_STANDARD]')
ALTER TABLE [dbo].[CUSTOM_STANDARD_BASE_STANDARD] NOCHECK CONSTRAINT [FK_CUSTOM_STANDARD_BASE_STANDARD_SETS1]

PRINT(N'Drop constraint FK_REPORT_STANDARDS_SELECTION_SETS from [dbo].[REPORT_STANDARDS_SELECTION]')
ALTER TABLE [dbo].[REPORT_STANDARDS_SELECTION] NOCHECK CONSTRAINT [FK_REPORT_STANDARDS_SELECTION_SETS]

PRINT(N'Drop constraint FK_SECTOR_STANDARD_RECOMMENDATIONS_SETS from [dbo].[SECTOR_STANDARD_RECOMMENDATIONS]')
ALTER TABLE [dbo].[SECTOR_STANDARD_RECOMMENDATIONS] NOCHECK CONSTRAINT [FK_SECTOR_STANDARD_RECOMMENDATIONS_SETS]

PRINT(N'Drop constraint FK_SET_FILES_SETS from [dbo].[SET_FILES]')
ALTER TABLE [dbo].[SET_FILES] NOCHECK CONSTRAINT [FK_SET_FILES_SETS]

PRINT(N'Drop constraint FK_STANDARD_CATEGORY_SEQUENCE_SETS from [dbo].[STANDARD_CATEGORY_SEQUENCE]')
ALTER TABLE [dbo].[STANDARD_CATEGORY_SEQUENCE] NOCHECK CONSTRAINT [FK_STANDARD_CATEGORY_SEQUENCE_SETS]

PRINT(N'Drop constraint FK_Standard_Source_File_SETS from [dbo].[STANDARD_SOURCE_FILE]')
ALTER TABLE [dbo].[STANDARD_SOURCE_FILE] NOCHECK CONSTRAINT [FK_Standard_Source_File_SETS]

PRINT(N'Drop constraint FK_UNIVERSAL_SUB_CATEGORY_HEADINGS_SETS from [dbo].[UNIVERSAL_SUB_CATEGORY_HEADINGS]')
ALTER TABLE [dbo].[UNIVERSAL_SUB_CATEGORY_HEADINGS] NOCHECK CONSTRAINT [FK_UNIVERSAL_SUB_CATEGORY_HEADINGS_SETS]

PRINT(N'Update row in [dbo].[CSET_VERSION]')
UPDATE [dbo].[CSET_VERSION] SET [Version_Id]=9.2300, [Cset_Version]='9.2.3' WHERE [Id] = 1

PRINT(N'Add row to [dbo].[SETS]')
INSERT INTO [dbo].[SETS] ([Set_Name], [Full_Name], [Short_Name], [Is_Displayed], [Is_Pass_Fail], [Old_Std_Name], [Set_Category_Id], [Order_In_Category], [Report_Order_Section_Number], [Aggregation_Standard_Number], [Is_Question], [Is_Requirement], [Order_Framework_Standards], [Standard_ToolTip], [Is_Deprecated], [Upgrade_Set_Name], [Is_Custom], [Date], [IsEncryptedModule], [IsEncryptedModuleOpen], [IsACET]) VALUES ('HLCIA', 'High Level Critical Infrastructure Assessment', 'HL CIA', 1, 0, NULL, 5, NULL, NULL, NULL, 0, 0, 0, 'A question set developed to determine high level critical infrastructure cybersecurity, in short 34 question set', 0, NULL, 0, NULL, 0, 1, 0)

PRINT(N'Add rows to [dbo].[NEW_QUESTION_SETS]')
SET IDENTITY_INSERT [dbo].[NEW_QUESTION_SETS] ON
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (31438, 'HLCIA', 26)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (31440, 'HLCIA', 44)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (31441, 'HLCIA', 58)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (31442, 'HLCIA', 71)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (31443, 'HLCIA', 89)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (31444, 'HLCIA', 123)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (31445, 'HLCIA', 143)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (31446, 'HLCIA', 158)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (31447, 'HLCIA', 187)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (31448, 'HLCIA', 192)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (31449, 'HLCIA', 201)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (31450, 'HLCIA', 206)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (31451, 'HLCIA', 208)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (31452, 'HLCIA', 233)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (31453, 'HLCIA', 285)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (31454, 'HLCIA', 287)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (31455, 'HLCIA', 306)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (31456, 'HLCIA', 336)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (31457, 'HLCIA', 347)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (31458, 'HLCIA', 387)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (31459, 'HLCIA', 390)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (31460, 'HLCIA', 396)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (31461, 'HLCIA', 536)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (31462, 'HLCIA', 548)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (31463, 'HLCIA', 557)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (31464, 'HLCIA', 569)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (31465, 'HLCIA', 591)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (31466, 'HLCIA', 606)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (31467, 'HLCIA', 659)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (31468, 'HLCIA', 788)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (31469, 'HLCIA', 1298)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (31470, 'HLCIA', 1326)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (31471, 'HLCIA', 1871)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (31472, 'HLCIA', 1880)
SET IDENTITY_INSERT [dbo].[NEW_QUESTION_SETS] OFF
PRINT(N'Operation applied to 34 rows out of 34')

PRINT(N'Add rows to [dbo].[REQUIREMENT_QUESTIONS_SETS]')
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS_SETS] ([Question_Id], [Set_Name], [Requirement_Id]) VALUES (26, 'HLCIA', 16454)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS_SETS] ([Question_Id], [Set_Name], [Requirement_Id]) VALUES (44, 'HLCIA', 16467)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS_SETS] ([Question_Id], [Set_Name], [Requirement_Id]) VALUES (58, 'HLCIA', 16312)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS_SETS] ([Question_Id], [Set_Name], [Requirement_Id]) VALUES (71, 'HLCIA', 16226)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS_SETS] ([Question_Id], [Set_Name], [Requirement_Id]) VALUES (89, 'HLCIA', 16227)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS_SETS] ([Question_Id], [Set_Name], [Requirement_Id]) VALUES (123, 'HLCIA', 16155)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS_SETS] ([Question_Id], [Set_Name], [Requirement_Id]) VALUES (143, 'HLCIA', 16484)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS_SETS] ([Question_Id], [Set_Name], [Requirement_Id]) VALUES (158, 'HLCIA', 16761)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS_SETS] ([Question_Id], [Set_Name], [Requirement_Id]) VALUES (187, 'HLCIA', 16093)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS_SETS] ([Question_Id], [Set_Name], [Requirement_Id]) VALUES (192, 'HLCIA', 16094)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS_SETS] ([Question_Id], [Set_Name], [Requirement_Id]) VALUES (206, 'HLCIA', 15985)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS_SETS] ([Question_Id], [Set_Name], [Requirement_Id]) VALUES (208, 'HLCIA', 15986)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS_SETS] ([Question_Id], [Set_Name], [Requirement_Id]) VALUES (233, 'HLCIA', 16031)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS_SETS] ([Question_Id], [Set_Name], [Requirement_Id]) VALUES (287, 'HLCIA', 16063)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS_SETS] ([Question_Id], [Set_Name], [Requirement_Id]) VALUES (306, 'HLCIA', 16077)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS_SETS] ([Question_Id], [Set_Name], [Requirement_Id]) VALUES (336, 'HLCIA', 16600)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS_SETS] ([Question_Id], [Set_Name], [Requirement_Id]) VALUES (347, 'HLCIA', 16652)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS_SETS] ([Question_Id], [Set_Name], [Requirement_Id]) VALUES (387, 'HLCIA', 16579)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS_SETS] ([Question_Id], [Set_Name], [Requirement_Id]) VALUES (390, 'HLCIA', 16582)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS_SETS] ([Question_Id], [Set_Name], [Requirement_Id]) VALUES (396, 'HLCIA', 16584)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS_SETS] ([Question_Id], [Set_Name], [Requirement_Id]) VALUES (536, 'HLCIA', 16183)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS_SETS] ([Question_Id], [Set_Name], [Requirement_Id]) VALUES (548, 'HLCIA', 16200)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS_SETS] ([Question_Id], [Set_Name], [Requirement_Id]) VALUES (557, 'HLCIA', 16209)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS_SETS] ([Question_Id], [Set_Name], [Requirement_Id]) VALUES (569, 'HLCIA', 16295)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS_SETS] ([Question_Id], [Set_Name], [Requirement_Id]) VALUES (591, 'HLCIA', 16685)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS_SETS] ([Question_Id], [Set_Name], [Requirement_Id]) VALUES (606, 'HLCIA', 16694)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS_SETS] ([Question_Id], [Set_Name], [Requirement_Id]) VALUES (659, 'HLCIA', 16260)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS_SETS] ([Question_Id], [Set_Name], [Requirement_Id]) VALUES (788, 'HLCIA', 16109)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS_SETS] ([Question_Id], [Set_Name], [Requirement_Id]) VALUES (1298, 'HLCIA', 16170)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS_SETS] ([Question_Id], [Set_Name], [Requirement_Id]) VALUES (1326, 'HLCIA', 16289)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS_SETS] ([Question_Id], [Set_Name], [Requirement_Id]) VALUES (1871, 'HLCIA', 16168)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS_SETS] ([Question_Id], [Set_Name], [Requirement_Id]) VALUES (1880, 'HLCIA', 16208)
PRINT(N'Operation applied to 32 rows out of 32')

PRINT(N'Add rows to [dbo].[REQUIREMENT_SETS]')
INSERT INTO [dbo].[REQUIREMENT_SETS] ([Requirement_Id], [Set_Name], [Requirement_Sequence]) VALUES (15985, 'HLCIA', 0)
INSERT INTO [dbo].[REQUIREMENT_SETS] ([Requirement_Id], [Set_Name], [Requirement_Sequence]) VALUES (15986, 'HLCIA', 0)
INSERT INTO [dbo].[REQUIREMENT_SETS] ([Requirement_Id], [Set_Name], [Requirement_Sequence]) VALUES (16031, 'HLCIA', 0)
INSERT INTO [dbo].[REQUIREMENT_SETS] ([Requirement_Id], [Set_Name], [Requirement_Sequence]) VALUES (16063, 'HLCIA', 0)
INSERT INTO [dbo].[REQUIREMENT_SETS] ([Requirement_Id], [Set_Name], [Requirement_Sequence]) VALUES (16077, 'HLCIA', 0)
INSERT INTO [dbo].[REQUIREMENT_SETS] ([Requirement_Id], [Set_Name], [Requirement_Sequence]) VALUES (16093, 'HLCIA', 0)
INSERT INTO [dbo].[REQUIREMENT_SETS] ([Requirement_Id], [Set_Name], [Requirement_Sequence]) VALUES (16094, 'HLCIA', 0)
INSERT INTO [dbo].[REQUIREMENT_SETS] ([Requirement_Id], [Set_Name], [Requirement_Sequence]) VALUES (16109, 'HLCIA', 0)
INSERT INTO [dbo].[REQUIREMENT_SETS] ([Requirement_Id], [Set_Name], [Requirement_Sequence]) VALUES (16155, 'HLCIA', 0)
INSERT INTO [dbo].[REQUIREMENT_SETS] ([Requirement_Id], [Set_Name], [Requirement_Sequence]) VALUES (16168, 'HLCIA', 0)
INSERT INTO [dbo].[REQUIREMENT_SETS] ([Requirement_Id], [Set_Name], [Requirement_Sequence]) VALUES (16170, 'HLCIA', 0)
INSERT INTO [dbo].[REQUIREMENT_SETS] ([Requirement_Id], [Set_Name], [Requirement_Sequence]) VALUES (16183, 'HLCIA', 0)
INSERT INTO [dbo].[REQUIREMENT_SETS] ([Requirement_Id], [Set_Name], [Requirement_Sequence]) VALUES (16200, 'HLCIA', 0)
INSERT INTO [dbo].[REQUIREMENT_SETS] ([Requirement_Id], [Set_Name], [Requirement_Sequence]) VALUES (16208, 'HLCIA', 0)
INSERT INTO [dbo].[REQUIREMENT_SETS] ([Requirement_Id], [Set_Name], [Requirement_Sequence]) VALUES (16209, 'HLCIA', 0)
INSERT INTO [dbo].[REQUIREMENT_SETS] ([Requirement_Id], [Set_Name], [Requirement_Sequence]) VALUES (16226, 'HLCIA', 0)
INSERT INTO [dbo].[REQUIREMENT_SETS] ([Requirement_Id], [Set_Name], [Requirement_Sequence]) VALUES (16227, 'HLCIA', 0)
INSERT INTO [dbo].[REQUIREMENT_SETS] ([Requirement_Id], [Set_Name], [Requirement_Sequence]) VALUES (16260, 'HLCIA', 0)
INSERT INTO [dbo].[REQUIREMENT_SETS] ([Requirement_Id], [Set_Name], [Requirement_Sequence]) VALUES (16289, 'HLCIA', 0)
INSERT INTO [dbo].[REQUIREMENT_SETS] ([Requirement_Id], [Set_Name], [Requirement_Sequence]) VALUES (16295, 'HLCIA', 0)
INSERT INTO [dbo].[REQUIREMENT_SETS] ([Requirement_Id], [Set_Name], [Requirement_Sequence]) VALUES (16312, 'HLCIA', 0)
INSERT INTO [dbo].[REQUIREMENT_SETS] ([Requirement_Id], [Set_Name], [Requirement_Sequence]) VALUES (16454, 'HLCIA', 0)
INSERT INTO [dbo].[REQUIREMENT_SETS] ([Requirement_Id], [Set_Name], [Requirement_Sequence]) VALUES (16467, 'HLCIA', 0)
INSERT INTO [dbo].[REQUIREMENT_SETS] ([Requirement_Id], [Set_Name], [Requirement_Sequence]) VALUES (16484, 'HLCIA', 0)
INSERT INTO [dbo].[REQUIREMENT_SETS] ([Requirement_Id], [Set_Name], [Requirement_Sequence]) VALUES (16579, 'HLCIA', 0)
INSERT INTO [dbo].[REQUIREMENT_SETS] ([Requirement_Id], [Set_Name], [Requirement_Sequence]) VALUES (16582, 'HLCIA', 0)
INSERT INTO [dbo].[REQUIREMENT_SETS] ([Requirement_Id], [Set_Name], [Requirement_Sequence]) VALUES (16584, 'HLCIA', 0)
INSERT INTO [dbo].[REQUIREMENT_SETS] ([Requirement_Id], [Set_Name], [Requirement_Sequence]) VALUES (16600, 'HLCIA', 0)
INSERT INTO [dbo].[REQUIREMENT_SETS] ([Requirement_Id], [Set_Name], [Requirement_Sequence]) VALUES (16652, 'HLCIA', 0)
INSERT INTO [dbo].[REQUIREMENT_SETS] ([Requirement_Id], [Set_Name], [Requirement_Sequence]) VALUES (16685, 'HLCIA', 0)
INSERT INTO [dbo].[REQUIREMENT_SETS] ([Requirement_Id], [Set_Name], [Requirement_Sequence]) VALUES (16694, 'HLCIA', 0)
INSERT INTO [dbo].[REQUIREMENT_SETS] ([Requirement_Id], [Set_Name], [Requirement_Sequence]) VALUES (16761, 'HLCIA', 0)
PRINT(N'Operation applied to 32 rows out of 32')

PRINT(N'Add rows to [dbo].[NEW_QUESTION_LEVELS]')
INSERT INTO [dbo].[NEW_QUESTION_LEVELS] ([Universal_Sal_Level], [New_Question_Set_Id], [IgnoreMe]) VALUES ('H', 31438, NULL)
INSERT INTO [dbo].[NEW_QUESTION_LEVELS] ([Universal_Sal_Level], [New_Question_Set_Id], [IgnoreMe]) VALUES ('H', 31440, NULL)
INSERT INTO [dbo].[NEW_QUESTION_LEVELS] ([Universal_Sal_Level], [New_Question_Set_Id], [IgnoreMe]) VALUES ('H', 31441, NULL)
INSERT INTO [dbo].[NEW_QUESTION_LEVELS] ([Universal_Sal_Level], [New_Question_Set_Id], [IgnoreMe]) VALUES ('H', 31442, NULL)
INSERT INTO [dbo].[NEW_QUESTION_LEVELS] ([Universal_Sal_Level], [New_Question_Set_Id], [IgnoreMe]) VALUES ('H', 31443, NULL)
INSERT INTO [dbo].[NEW_QUESTION_LEVELS] ([Universal_Sal_Level], [New_Question_Set_Id], [IgnoreMe]) VALUES ('H', 31444, NULL)
INSERT INTO [dbo].[NEW_QUESTION_LEVELS] ([Universal_Sal_Level], [New_Question_Set_Id], [IgnoreMe]) VALUES ('H', 31445, NULL)
INSERT INTO [dbo].[NEW_QUESTION_LEVELS] ([Universal_Sal_Level], [New_Question_Set_Id], [IgnoreMe]) VALUES ('H', 31446, NULL)
INSERT INTO [dbo].[NEW_QUESTION_LEVELS] ([Universal_Sal_Level], [New_Question_Set_Id], [IgnoreMe]) VALUES ('H', 31447, NULL)
INSERT INTO [dbo].[NEW_QUESTION_LEVELS] ([Universal_Sal_Level], [New_Question_Set_Id], [IgnoreMe]) VALUES ('H', 31448, NULL)
INSERT INTO [dbo].[NEW_QUESTION_LEVELS] ([Universal_Sal_Level], [New_Question_Set_Id], [IgnoreMe]) VALUES ('H', 31449, NULL)
INSERT INTO [dbo].[NEW_QUESTION_LEVELS] ([Universal_Sal_Level], [New_Question_Set_Id], [IgnoreMe]) VALUES ('H', 31450, NULL)
INSERT INTO [dbo].[NEW_QUESTION_LEVELS] ([Universal_Sal_Level], [New_Question_Set_Id], [IgnoreMe]) VALUES ('H', 31451, NULL)
INSERT INTO [dbo].[NEW_QUESTION_LEVELS] ([Universal_Sal_Level], [New_Question_Set_Id], [IgnoreMe]) VALUES ('H', 31452, NULL)
INSERT INTO [dbo].[NEW_QUESTION_LEVELS] ([Universal_Sal_Level], [New_Question_Set_Id], [IgnoreMe]) VALUES ('H', 31453, NULL)
INSERT INTO [dbo].[NEW_QUESTION_LEVELS] ([Universal_Sal_Level], [New_Question_Set_Id], [IgnoreMe]) VALUES ('H', 31454, NULL)
INSERT INTO [dbo].[NEW_QUESTION_LEVELS] ([Universal_Sal_Level], [New_Question_Set_Id], [IgnoreMe]) VALUES ('H', 31455, NULL)
INSERT INTO [dbo].[NEW_QUESTION_LEVELS] ([Universal_Sal_Level], [New_Question_Set_Id], [IgnoreMe]) VALUES ('H', 31456, NULL)
INSERT INTO [dbo].[NEW_QUESTION_LEVELS] ([Universal_Sal_Level], [New_Question_Set_Id], [IgnoreMe]) VALUES ('H', 31457, NULL)
INSERT INTO [dbo].[NEW_QUESTION_LEVELS] ([Universal_Sal_Level], [New_Question_Set_Id], [IgnoreMe]) VALUES ('H', 31458, NULL)
INSERT INTO [dbo].[NEW_QUESTION_LEVELS] ([Universal_Sal_Level], [New_Question_Set_Id], [IgnoreMe]) VALUES ('H', 31459, NULL)
INSERT INTO [dbo].[NEW_QUESTION_LEVELS] ([Universal_Sal_Level], [New_Question_Set_Id], [IgnoreMe]) VALUES ('H', 31460, NULL)
INSERT INTO [dbo].[NEW_QUESTION_LEVELS] ([Universal_Sal_Level], [New_Question_Set_Id], [IgnoreMe]) VALUES ('H', 31461, NULL)
INSERT INTO [dbo].[NEW_QUESTION_LEVELS] ([Universal_Sal_Level], [New_Question_Set_Id], [IgnoreMe]) VALUES ('H', 31462, NULL)
INSERT INTO [dbo].[NEW_QUESTION_LEVELS] ([Universal_Sal_Level], [New_Question_Set_Id], [IgnoreMe]) VALUES ('H', 31463, NULL)
INSERT INTO [dbo].[NEW_QUESTION_LEVELS] ([Universal_Sal_Level], [New_Question_Set_Id], [IgnoreMe]) VALUES ('H', 31464, NULL)
INSERT INTO [dbo].[NEW_QUESTION_LEVELS] ([Universal_Sal_Level], [New_Question_Set_Id], [IgnoreMe]) VALUES ('H', 31465, NULL)
INSERT INTO [dbo].[NEW_QUESTION_LEVELS] ([Universal_Sal_Level], [New_Question_Set_Id], [IgnoreMe]) VALUES ('H', 31466, NULL)
INSERT INTO [dbo].[NEW_QUESTION_LEVELS] ([Universal_Sal_Level], [New_Question_Set_Id], [IgnoreMe]) VALUES ('H', 31467, NULL)
INSERT INTO [dbo].[NEW_QUESTION_LEVELS] ([Universal_Sal_Level], [New_Question_Set_Id], [IgnoreMe]) VALUES ('H', 31468, NULL)
INSERT INTO [dbo].[NEW_QUESTION_LEVELS] ([Universal_Sal_Level], [New_Question_Set_Id], [IgnoreMe]) VALUES ('H', 31469, NULL)
INSERT INTO [dbo].[NEW_QUESTION_LEVELS] ([Universal_Sal_Level], [New_Question_Set_Id], [IgnoreMe]) VALUES ('H', 31470, NULL)
INSERT INTO [dbo].[NEW_QUESTION_LEVELS] ([Universal_Sal_Level], [New_Question_Set_Id], [IgnoreMe]) VALUES ('H', 31471, NULL)
INSERT INTO [dbo].[NEW_QUESTION_LEVELS] ([Universal_Sal_Level], [New_Question_Set_Id], [IgnoreMe]) VALUES ('H', 31472, NULL)
INSERT INTO [dbo].[NEW_QUESTION_LEVELS] ([Universal_Sal_Level], [New_Question_Set_Id], [IgnoreMe]) VALUES ('L', 31438, NULL)
INSERT INTO [dbo].[NEW_QUESTION_LEVELS] ([Universal_Sal_Level], [New_Question_Set_Id], [IgnoreMe]) VALUES ('L', 31440, NULL)
INSERT INTO [dbo].[NEW_QUESTION_LEVELS] ([Universal_Sal_Level], [New_Question_Set_Id], [IgnoreMe]) VALUES ('L', 31441, NULL)
INSERT INTO [dbo].[NEW_QUESTION_LEVELS] ([Universal_Sal_Level], [New_Question_Set_Id], [IgnoreMe]) VALUES ('L', 31442, NULL)
INSERT INTO [dbo].[NEW_QUESTION_LEVELS] ([Universal_Sal_Level], [New_Question_Set_Id], [IgnoreMe]) VALUES ('L', 31443, NULL)
INSERT INTO [dbo].[NEW_QUESTION_LEVELS] ([Universal_Sal_Level], [New_Question_Set_Id], [IgnoreMe]) VALUES ('L', 31444, NULL)
INSERT INTO [dbo].[NEW_QUESTION_LEVELS] ([Universal_Sal_Level], [New_Question_Set_Id], [IgnoreMe]) VALUES ('L', 31445, NULL)
INSERT INTO [dbo].[NEW_QUESTION_LEVELS] ([Universal_Sal_Level], [New_Question_Set_Id], [IgnoreMe]) VALUES ('L', 31446, NULL)
INSERT INTO [dbo].[NEW_QUESTION_LEVELS] ([Universal_Sal_Level], [New_Question_Set_Id], [IgnoreMe]) VALUES ('L', 31447, NULL)
INSERT INTO [dbo].[NEW_QUESTION_LEVELS] ([Universal_Sal_Level], [New_Question_Set_Id], [IgnoreMe]) VALUES ('L', 31448, NULL)
INSERT INTO [dbo].[NEW_QUESTION_LEVELS] ([Universal_Sal_Level], [New_Question_Set_Id], [IgnoreMe]) VALUES ('L', 31449, NULL)
INSERT INTO [dbo].[NEW_QUESTION_LEVELS] ([Universal_Sal_Level], [New_Question_Set_Id], [IgnoreMe]) VALUES ('L', 31450, NULL)
INSERT INTO [dbo].[NEW_QUESTION_LEVELS] ([Universal_Sal_Level], [New_Question_Set_Id], [IgnoreMe]) VALUES ('L', 31451, NULL)
INSERT INTO [dbo].[NEW_QUESTION_LEVELS] ([Universal_Sal_Level], [New_Question_Set_Id], [IgnoreMe]) VALUES ('L', 31452, NULL)
INSERT INTO [dbo].[NEW_QUESTION_LEVELS] ([Universal_Sal_Level], [New_Question_Set_Id], [IgnoreMe]) VALUES ('L', 31453, NULL)
INSERT INTO [dbo].[NEW_QUESTION_LEVELS] ([Universal_Sal_Level], [New_Question_Set_Id], [IgnoreMe]) VALUES ('L', 31454, NULL)
INSERT INTO [dbo].[NEW_QUESTION_LEVELS] ([Universal_Sal_Level], [New_Question_Set_Id], [IgnoreMe]) VALUES ('L', 31455, NULL)
INSERT INTO [dbo].[NEW_QUESTION_LEVELS] ([Universal_Sal_Level], [New_Question_Set_Id], [IgnoreMe]) VALUES ('L', 31456, NULL)
INSERT INTO [dbo].[NEW_QUESTION_LEVELS] ([Universal_Sal_Level], [New_Question_Set_Id], [IgnoreMe]) VALUES ('L', 31457, NULL)
INSERT INTO [dbo].[NEW_QUESTION_LEVELS] ([Universal_Sal_Level], [New_Question_Set_Id], [IgnoreMe]) VALUES ('L', 31458, NULL)
INSERT INTO [dbo].[NEW_QUESTION_LEVELS] ([Universal_Sal_Level], [New_Question_Set_Id], [IgnoreMe]) VALUES ('L', 31459, NULL)
INSERT INTO [dbo].[NEW_QUESTION_LEVELS] ([Universal_Sal_Level], [New_Question_Set_Id], [IgnoreMe]) VALUES ('L', 31460, NULL)
INSERT INTO [dbo].[NEW_QUESTION_LEVELS] ([Universal_Sal_Level], [New_Question_Set_Id], [IgnoreMe]) VALUES ('L', 31461, NULL)
INSERT INTO [dbo].[NEW_QUESTION_LEVELS] ([Universal_Sal_Level], [New_Question_Set_Id], [IgnoreMe]) VALUES ('L', 31462, NULL)
INSERT INTO [dbo].[NEW_QUESTION_LEVELS] ([Universal_Sal_Level], [New_Question_Set_Id], [IgnoreMe]) VALUES ('L', 31463, NULL)
INSERT INTO [dbo].[NEW_QUESTION_LEVELS] ([Universal_Sal_Level], [New_Question_Set_Id], [IgnoreMe]) VALUES ('L', 31464, NULL)
INSERT INTO [dbo].[NEW_QUESTION_LEVELS] ([Universal_Sal_Level], [New_Question_Set_Id], [IgnoreMe]) VALUES ('L', 31465, NULL)
INSERT INTO [dbo].[NEW_QUESTION_LEVELS] ([Universal_Sal_Level], [New_Question_Set_Id], [IgnoreMe]) VALUES ('L', 31466, NULL)
INSERT INTO [dbo].[NEW_QUESTION_LEVELS] ([Universal_Sal_Level], [New_Question_Set_Id], [IgnoreMe]) VALUES ('L', 31467, NULL)
INSERT INTO [dbo].[NEW_QUESTION_LEVELS] ([Universal_Sal_Level], [New_Question_Set_Id], [IgnoreMe]) VALUES ('L', 31468, NULL)
INSERT INTO [dbo].[NEW_QUESTION_LEVELS] ([Universal_Sal_Level], [New_Question_Set_Id], [IgnoreMe]) VALUES ('L', 31469, NULL)
INSERT INTO [dbo].[NEW_QUESTION_LEVELS] ([Universal_Sal_Level], [New_Question_Set_Id], [IgnoreMe]) VALUES ('L', 31470, NULL)
INSERT INTO [dbo].[NEW_QUESTION_LEVELS] ([Universal_Sal_Level], [New_Question_Set_Id], [IgnoreMe]) VALUES ('L', 31471, NULL)
INSERT INTO [dbo].[NEW_QUESTION_LEVELS] ([Universal_Sal_Level], [New_Question_Set_Id], [IgnoreMe]) VALUES ('L', 31472, NULL)
INSERT INTO [dbo].[NEW_QUESTION_LEVELS] ([Universal_Sal_Level], [New_Question_Set_Id], [IgnoreMe]) VALUES ('M', 31438, NULL)
INSERT INTO [dbo].[NEW_QUESTION_LEVELS] ([Universal_Sal_Level], [New_Question_Set_Id], [IgnoreMe]) VALUES ('M', 31440, NULL)
INSERT INTO [dbo].[NEW_QUESTION_LEVELS] ([Universal_Sal_Level], [New_Question_Set_Id], [IgnoreMe]) VALUES ('M', 31441, NULL)
INSERT INTO [dbo].[NEW_QUESTION_LEVELS] ([Universal_Sal_Level], [New_Question_Set_Id], [IgnoreMe]) VALUES ('M', 31442, NULL)
INSERT INTO [dbo].[NEW_QUESTION_LEVELS] ([Universal_Sal_Level], [New_Question_Set_Id], [IgnoreMe]) VALUES ('M', 31443, NULL)
INSERT INTO [dbo].[NEW_QUESTION_LEVELS] ([Universal_Sal_Level], [New_Question_Set_Id], [IgnoreMe]) VALUES ('M', 31444, NULL)
INSERT INTO [dbo].[NEW_QUESTION_LEVELS] ([Universal_Sal_Level], [New_Question_Set_Id], [IgnoreMe]) VALUES ('M', 31445, NULL)
INSERT INTO [dbo].[NEW_QUESTION_LEVELS] ([Universal_Sal_Level], [New_Question_Set_Id], [IgnoreMe]) VALUES ('M', 31446, NULL)
INSERT INTO [dbo].[NEW_QUESTION_LEVELS] ([Universal_Sal_Level], [New_Question_Set_Id], [IgnoreMe]) VALUES ('M', 31447, NULL)
INSERT INTO [dbo].[NEW_QUESTION_LEVELS] ([Universal_Sal_Level], [New_Question_Set_Id], [IgnoreMe]) VALUES ('M', 31448, NULL)
INSERT INTO [dbo].[NEW_QUESTION_LEVELS] ([Universal_Sal_Level], [New_Question_Set_Id], [IgnoreMe]) VALUES ('M', 31449, NULL)
INSERT INTO [dbo].[NEW_QUESTION_LEVELS] ([Universal_Sal_Level], [New_Question_Set_Id], [IgnoreMe]) VALUES ('M', 31450, NULL)
INSERT INTO [dbo].[NEW_QUESTION_LEVELS] ([Universal_Sal_Level], [New_Question_Set_Id], [IgnoreMe]) VALUES ('M', 31451, NULL)
INSERT INTO [dbo].[NEW_QUESTION_LEVELS] ([Universal_Sal_Level], [New_Question_Set_Id], [IgnoreMe]) VALUES ('M', 31452, NULL)
INSERT INTO [dbo].[NEW_QUESTION_LEVELS] ([Universal_Sal_Level], [New_Question_Set_Id], [IgnoreMe]) VALUES ('M', 31453, NULL)
INSERT INTO [dbo].[NEW_QUESTION_LEVELS] ([Universal_Sal_Level], [New_Question_Set_Id], [IgnoreMe]) VALUES ('M', 31454, NULL)
INSERT INTO [dbo].[NEW_QUESTION_LEVELS] ([Universal_Sal_Level], [New_Question_Set_Id], [IgnoreMe]) VALUES ('M', 31455, NULL)
INSERT INTO [dbo].[NEW_QUESTION_LEVELS] ([Universal_Sal_Level], [New_Question_Set_Id], [IgnoreMe]) VALUES ('M', 31456, NULL)
INSERT INTO [dbo].[NEW_QUESTION_LEVELS] ([Universal_Sal_Level], [New_Question_Set_Id], [IgnoreMe]) VALUES ('M', 31457, NULL)
INSERT INTO [dbo].[NEW_QUESTION_LEVELS] ([Universal_Sal_Level], [New_Question_Set_Id], [IgnoreMe]) VALUES ('M', 31458, NULL)
INSERT INTO [dbo].[NEW_QUESTION_LEVELS] ([Universal_Sal_Level], [New_Question_Set_Id], [IgnoreMe]) VALUES ('M', 31459, NULL)
INSERT INTO [dbo].[NEW_QUESTION_LEVELS] ([Universal_Sal_Level], [New_Question_Set_Id], [IgnoreMe]) VALUES ('M', 31460, NULL)
INSERT INTO [dbo].[NEW_QUESTION_LEVELS] ([Universal_Sal_Level], [New_Question_Set_Id], [IgnoreMe]) VALUES ('M', 31461, NULL)
INSERT INTO [dbo].[NEW_QUESTION_LEVELS] ([Universal_Sal_Level], [New_Question_Set_Id], [IgnoreMe]) VALUES ('M', 31462, NULL)
INSERT INTO [dbo].[NEW_QUESTION_LEVELS] ([Universal_Sal_Level], [New_Question_Set_Id], [IgnoreMe]) VALUES ('M', 31463, NULL)
INSERT INTO [dbo].[NEW_QUESTION_LEVELS] ([Universal_Sal_Level], [New_Question_Set_Id], [IgnoreMe]) VALUES ('M', 31464, NULL)
INSERT INTO [dbo].[NEW_QUESTION_LEVELS] ([Universal_Sal_Level], [New_Question_Set_Id], [IgnoreMe]) VALUES ('M', 31465, NULL)
INSERT INTO [dbo].[NEW_QUESTION_LEVELS] ([Universal_Sal_Level], [New_Question_Set_Id], [IgnoreMe]) VALUES ('M', 31466, NULL)
INSERT INTO [dbo].[NEW_QUESTION_LEVELS] ([Universal_Sal_Level], [New_Question_Set_Id], [IgnoreMe]) VALUES ('M', 31467, NULL)
INSERT INTO [dbo].[NEW_QUESTION_LEVELS] ([Universal_Sal_Level], [New_Question_Set_Id], [IgnoreMe]) VALUES ('M', 31468, NULL)
INSERT INTO [dbo].[NEW_QUESTION_LEVELS] ([Universal_Sal_Level], [New_Question_Set_Id], [IgnoreMe]) VALUES ('M', 31469, NULL)
INSERT INTO [dbo].[NEW_QUESTION_LEVELS] ([Universal_Sal_Level], [New_Question_Set_Id], [IgnoreMe]) VALUES ('M', 31470, NULL)
INSERT INTO [dbo].[NEW_QUESTION_LEVELS] ([Universal_Sal_Level], [New_Question_Set_Id], [IgnoreMe]) VALUES ('M', 31471, NULL)
INSERT INTO [dbo].[NEW_QUESTION_LEVELS] ([Universal_Sal_Level], [New_Question_Set_Id], [IgnoreMe]) VALUES ('M', 31472, NULL)
INSERT INTO [dbo].[NEW_QUESTION_LEVELS] ([Universal_Sal_Level], [New_Question_Set_Id], [IgnoreMe]) VALUES ('VH', 31438, NULL)
INSERT INTO [dbo].[NEW_QUESTION_LEVELS] ([Universal_Sal_Level], [New_Question_Set_Id], [IgnoreMe]) VALUES ('VH', 31440, NULL)
INSERT INTO [dbo].[NEW_QUESTION_LEVELS] ([Universal_Sal_Level], [New_Question_Set_Id], [IgnoreMe]) VALUES ('VH', 31441, NULL)
INSERT INTO [dbo].[NEW_QUESTION_LEVELS] ([Universal_Sal_Level], [New_Question_Set_Id], [IgnoreMe]) VALUES ('VH', 31442, NULL)
INSERT INTO [dbo].[NEW_QUESTION_LEVELS] ([Universal_Sal_Level], [New_Question_Set_Id], [IgnoreMe]) VALUES ('VH', 31443, NULL)
INSERT INTO [dbo].[NEW_QUESTION_LEVELS] ([Universal_Sal_Level], [New_Question_Set_Id], [IgnoreMe]) VALUES ('VH', 31444, NULL)
INSERT INTO [dbo].[NEW_QUESTION_LEVELS] ([Universal_Sal_Level], [New_Question_Set_Id], [IgnoreMe]) VALUES ('VH', 31445, NULL)
INSERT INTO [dbo].[NEW_QUESTION_LEVELS] ([Universal_Sal_Level], [New_Question_Set_Id], [IgnoreMe]) VALUES ('VH', 31446, NULL)
INSERT INTO [dbo].[NEW_QUESTION_LEVELS] ([Universal_Sal_Level], [New_Question_Set_Id], [IgnoreMe]) VALUES ('VH', 31447, NULL)
INSERT INTO [dbo].[NEW_QUESTION_LEVELS] ([Universal_Sal_Level], [New_Question_Set_Id], [IgnoreMe]) VALUES ('VH', 31448, NULL)
INSERT INTO [dbo].[NEW_QUESTION_LEVELS] ([Universal_Sal_Level], [New_Question_Set_Id], [IgnoreMe]) VALUES ('VH', 31449, NULL)
INSERT INTO [dbo].[NEW_QUESTION_LEVELS] ([Universal_Sal_Level], [New_Question_Set_Id], [IgnoreMe]) VALUES ('VH', 31450, NULL)
INSERT INTO [dbo].[NEW_QUESTION_LEVELS] ([Universal_Sal_Level], [New_Question_Set_Id], [IgnoreMe]) VALUES ('VH', 31451, NULL)
INSERT INTO [dbo].[NEW_QUESTION_LEVELS] ([Universal_Sal_Level], [New_Question_Set_Id], [IgnoreMe]) VALUES ('VH', 31452, NULL)
INSERT INTO [dbo].[NEW_QUESTION_LEVELS] ([Universal_Sal_Level], [New_Question_Set_Id], [IgnoreMe]) VALUES ('VH', 31453, NULL)
INSERT INTO [dbo].[NEW_QUESTION_LEVELS] ([Universal_Sal_Level], [New_Question_Set_Id], [IgnoreMe]) VALUES ('VH', 31454, NULL)
INSERT INTO [dbo].[NEW_QUESTION_LEVELS] ([Universal_Sal_Level], [New_Question_Set_Id], [IgnoreMe]) VALUES ('VH', 31455, NULL)
INSERT INTO [dbo].[NEW_QUESTION_LEVELS] ([Universal_Sal_Level], [New_Question_Set_Id], [IgnoreMe]) VALUES ('VH', 31456, NULL)
INSERT INTO [dbo].[NEW_QUESTION_LEVELS] ([Universal_Sal_Level], [New_Question_Set_Id], [IgnoreMe]) VALUES ('VH', 31457, NULL)
INSERT INTO [dbo].[NEW_QUESTION_LEVELS] ([Universal_Sal_Level], [New_Question_Set_Id], [IgnoreMe]) VALUES ('VH', 31458, NULL)
INSERT INTO [dbo].[NEW_QUESTION_LEVELS] ([Universal_Sal_Level], [New_Question_Set_Id], [IgnoreMe]) VALUES ('VH', 31459, NULL)
INSERT INTO [dbo].[NEW_QUESTION_LEVELS] ([Universal_Sal_Level], [New_Question_Set_Id], [IgnoreMe]) VALUES ('VH', 31460, NULL)
INSERT INTO [dbo].[NEW_QUESTION_LEVELS] ([Universal_Sal_Level], [New_Question_Set_Id], [IgnoreMe]) VALUES ('VH', 31461, NULL)
INSERT INTO [dbo].[NEW_QUESTION_LEVELS] ([Universal_Sal_Level], [New_Question_Set_Id], [IgnoreMe]) VALUES ('VH', 31462, NULL)
INSERT INTO [dbo].[NEW_QUESTION_LEVELS] ([Universal_Sal_Level], [New_Question_Set_Id], [IgnoreMe]) VALUES ('VH', 31463, NULL)
INSERT INTO [dbo].[NEW_QUESTION_LEVELS] ([Universal_Sal_Level], [New_Question_Set_Id], [IgnoreMe]) VALUES ('VH', 31464, NULL)
INSERT INTO [dbo].[NEW_QUESTION_LEVELS] ([Universal_Sal_Level], [New_Question_Set_Id], [IgnoreMe]) VALUES ('VH', 31465, NULL)
INSERT INTO [dbo].[NEW_QUESTION_LEVELS] ([Universal_Sal_Level], [New_Question_Set_Id], [IgnoreMe]) VALUES ('VH', 31466, NULL)
INSERT INTO [dbo].[NEW_QUESTION_LEVELS] ([Universal_Sal_Level], [New_Question_Set_Id], [IgnoreMe]) VALUES ('VH', 31467, NULL)
INSERT INTO [dbo].[NEW_QUESTION_LEVELS] ([Universal_Sal_Level], [New_Question_Set_Id], [IgnoreMe]) VALUES ('VH', 31468, NULL)
INSERT INTO [dbo].[NEW_QUESTION_LEVELS] ([Universal_Sal_Level], [New_Question_Set_Id], [IgnoreMe]) VALUES ('VH', 31469, NULL)
INSERT INTO [dbo].[NEW_QUESTION_LEVELS] ([Universal_Sal_Level], [New_Question_Set_Id], [IgnoreMe]) VALUES ('VH', 31470, NULL)
INSERT INTO [dbo].[NEW_QUESTION_LEVELS] ([Universal_Sal_Level], [New_Question_Set_Id], [IgnoreMe]) VALUES ('VH', 31471, NULL)
INSERT INTO [dbo].[NEW_QUESTION_LEVELS] ([Universal_Sal_Level], [New_Question_Set_Id], [IgnoreMe]) VALUES ('VH', 31472, NULL)
PRINT(N'Operation applied to 136 rows out of 136')

PRINT(N'Add constraints to [dbo].[NEW_QUESTION_LEVELS]')
ALTER TABLE [dbo].[NEW_QUESTION_LEVELS] WITH CHECK CHECK CONSTRAINT [FK_NEW_QUESTION_LEVELS_NEW_QUESTION_SETS]
ALTER TABLE [dbo].[NEW_QUESTION_LEVELS] WITH CHECK CHECK CONSTRAINT [FK_NEW_QUESTION_LEVELS_UNIVERSAL_SAL_LEVEL]

PRINT(N'Add constraints to [dbo].[REQUIREMENT_SETS]')
ALTER TABLE [dbo].[REQUIREMENT_SETS] CHECK CONSTRAINT [FK_QUESTION_SETS_SETS]
ALTER TABLE [dbo].[REQUIREMENT_SETS] CHECK CONSTRAINT [FK_REQUIREMENT_SETS_NEW_REQUIREMENT]

PRINT(N'Add constraints to [dbo].[REQUIREMENT_QUESTIONS_SETS]')
ALTER TABLE [dbo].[REQUIREMENT_QUESTIONS_SETS] WITH CHECK CHECK CONSTRAINT [FK_REQUIREMENT_QUESTIONS_SETS_NEW_QUESTION]
ALTER TABLE [dbo].[REQUIREMENT_QUESTIONS_SETS] WITH CHECK CHECK CONSTRAINT [FK_REQUIREMENT_QUESTIONS_SETS_NEW_REQUIREMENT]
ALTER TABLE [dbo].[REQUIREMENT_QUESTIONS_SETS] WITH CHECK CHECK CONSTRAINT [FK_REQUIREMENT_QUESTIONS_SETS_SETS]

PRINT(N'Add constraints to [dbo].[NEW_QUESTION_SETS]')
ALTER TABLE [dbo].[NEW_QUESTION_SETS] CHECK CONSTRAINT [FK_NEW_QUESTION_SETS_NEW_QUESTION]
ALTER TABLE [dbo].[NEW_QUESTION_SETS] CHECK CONSTRAINT [FK_NEW_QUESTION_SETS_SETS]

PRINT(N'Add constraints to [dbo].[SETS]')
ALTER TABLE [dbo].[SETS] WITH CHECK CHECK CONSTRAINT [FK_SETS_Sets_Category]
ALTER TABLE [dbo].[AVAILABLE_STANDARDS] WITH CHECK CHECK CONSTRAINT [FK_AVAILABLE_STANDARDS_SETS]
ALTER TABLE [dbo].[CUSTOM_STANDARD_BASE_STANDARD] CHECK CONSTRAINT [FK_CUSTOM_STANDARD_BASE_STANDARD_SETS]
ALTER TABLE [dbo].[CUSTOM_STANDARD_BASE_STANDARD] CHECK CONSTRAINT [FK_CUSTOM_STANDARD_BASE_STANDARD_SETS1]
ALTER TABLE [dbo].[REPORT_STANDARDS_SELECTION] WITH CHECK CHECK CONSTRAINT [FK_REPORT_STANDARDS_SELECTION_SETS]
ALTER TABLE [dbo].[SECTOR_STANDARD_RECOMMENDATIONS] CHECK CONSTRAINT [FK_SECTOR_STANDARD_RECOMMENDATIONS_SETS]
ALTER TABLE [dbo].[SET_FILES] WITH CHECK CHECK CONSTRAINT [FK_SET_FILES_SETS]
ALTER TABLE [dbo].[STANDARD_CATEGORY_SEQUENCE] CHECK CONSTRAINT [FK_STANDARD_CATEGORY_SEQUENCE_SETS]
ALTER TABLE [dbo].[STANDARD_SOURCE_FILE] CHECK CONSTRAINT [FK_Standard_Source_File_SETS]
ALTER TABLE [dbo].[UNIVERSAL_SUB_CATEGORY_HEADINGS] WITH CHECK CHECK CONSTRAINT [FK_UNIVERSAL_SUB_CATEGORY_HEADINGS_SETS]
COMMIT TRANSACTION
GO
