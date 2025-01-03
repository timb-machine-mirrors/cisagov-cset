/*
Run this script on:

(localdb)\v11.0.NCUAWeb10310    -  This database will be modified

to synchronize it with:

(localdb)\v11.0.NCUAWeb10312

You are recommended to back up your database before running this script

Script created by SQL Data Compare version 14.5.1.18536 from Red Gate Software Ltd at 9/14/2021 6:21:02 PM

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

PRINT(N'Drop constraints from [dbo].[IRP]')
ALTER TABLE [dbo].[IRP] NOCHECK CONSTRAINT [FK_IRP_IRP_HEADER]

PRINT(N'Drop constraint FK__Assessmen__IRP_I__5EDF0F2E from [dbo].[ASSESSMENT_IRP]')
ALTER TABLE [dbo].[ASSESSMENT_IRP] NOCHECK CONSTRAINT [FK__Assessmen__IRP_I__5EDF0F2E]

PRINT(N'Update rows in [dbo].[IRP]')
UPDATE [dbo].[IRP] SET [Validation_Approach]='Review the listing of third-party service providers, list of services running on network servers, and network topology diagrams to determine the nature of delivery channels offeredDiscuss with management which of these include retail account origination or management of large value assets.' WHERE [IRP_ID] = 17
UPDATE [dbo].[IRP] SET [Validation_Approach]='Review the credit union’s list of third party service providers, risk assessment for electronic banking services, software inventory, and network topology diagrams to determine the complexity of mobile banking offeringsDiscuss with management if these services are provided to corporate clients and if they are originating ACH or accepting wires via mobile devices.' WHERE [IRP_ID] = 18
UPDATE [dbo].[IRP] SET [Validation_Approach]='Review the credit union number of branch locations and network topology diagrams to determine the level of ATM offerings. Discuss with management if the ATM services are managed internally, reloaded internally, if they provide ATM services to other institutions, and if they have international ATMs.' WHERE [IRP_ID] = 19
UPDATE [dbo].[IRP] SET [Validation_Approach]='If a debit or credit card program exists, discuss with management the volume of debit or credit cards issued directly or via a third party service provider' WHERE [IRP_ID] = 21
UPDATE [dbo].[IRP] SET [Validation_Approach]='If a prepaid card program existsDiscuss with management the volume of prepaid cards issued directly or via a third party service provider.' WHERE [IRP_ID] = 22
UPDATE [dbo].[IRP] SET [Validation_Approach]='If the credit union originates ACH transactions, discuss with management if they have third party payment senders or nested third party sendersAsk management for the daily volume of debits and credits originated.' WHERE [IRP_ID] = 25
UPDATE [dbo].[IRP] SET [Validation_Approach]='if the credit union originates wholesale payments (CHIPS), confirm with management whether the credit union originates wholesale payments and confirm the volume to total assets.' WHERE [IRP_ID] = 26
UPDATE [dbo].[IRP] SET [Validation_Approach]='If the credit union performs domestic and international wires , confirm with management the various ways they receive wire requests and perform wire transfers.' WHERE [IRP_ID] = 27
UPDATE [dbo].[IRP] SET [Validation_Approach]='If the credit union offers merchant processing, discuss with management if they offer merchants remote deposit capture and how many clients use it and to provide a list of daily transaction volume.' WHERE [IRP_ID] = 28
UPDATE [dbo].[IRP] SET [Validation_Approach]='If the credit union offers global (international) remittances, discuss with management the gross daily transaction volume of global remittances' WHERE [IRP_ID] = 29
UPDATE [dbo].[IRP] SET [Validation_Approach]='If the credit union provides merchant processing, discus with management the number of merchants for whom they provide this service.' WHERE [IRP_ID] = 33
UPDATE [dbo].[IRP] SET [Validation_Approach]='Discuss with management the strategic and/or business plans for IT, list of recent and planned IT projects, and the information security and technology budget to identify potential mergers or acquisitions or divestitures and joint venturesDiscuss with management their intentions regarding mergers, acquisitions, divestitures or joint ventures.' WHERE [IRP_ID] = 36
UPDATE [dbo].[IRP] SET [Validation_Approach]='Discuss with management the total number of employees including information technology and cybersecurity contractors' WHERE [IRP_ID] = 37
UPDATE [dbo].[IRP] SET [Validation_Approach]='Discuss with management the location of credit union records; taking into consideration the number of sites, states, regions and countries in which they operate' WHERE [IRP_ID] = 42
PRINT(N'Operation applied to 14 rows out of 14')

PRINT(N'Add constraints to [dbo].[IRP]')
ALTER TABLE [dbo].[IRP] WITH CHECK CHECK CONSTRAINT [FK_IRP_IRP_HEADER]
ALTER TABLE [dbo].[ASSESSMENT_IRP] WITH CHECK CHECK CONSTRAINT [FK__Assessmen__IRP_I__5EDF0F2E]
COMMIT TRANSACTION
GO
