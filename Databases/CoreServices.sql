SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--/* CREATE TABLE [SecondaryFunctions]( */
--/* 	[SecondaryFunctionID] [int] NOT NULL, */
--/* 	[SecondaryFunction] [nvarchar](20) NOT NULL, */
--/* 	[PrimaryFunctionID] [nvarchar](20) NOT NULL, */
--/* 	[FunctionName] [nvarchar](50) NOT NULL, */
--/* 	[DisplayPriority] [int] NOT NULL, */
--/*  CONSTRAINT [PK_SecondaryFunctions] PRIMARY KEY CLUSTERED */ 
--/* ( */
--/* 	[SecondaryFunctionID] ASC */
--/* )WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY] */
--/* ) ON [PRIMARY] */
--/* GO */
--/* SET ANSI_NULLS ON */
--/* GO */
--/* SET QUOTED_IDENTIFIER ON */
--/* GO */
--/* CREATE TABLE [SecondaryFunctionNoteTypes]( */
--/* 	[SecondaryFunctionNoteTypeID] [int] NOT NULL, */
--/* 	[RSNoteTypeID] [int] NOT NULL, */
--/* 	[SecondaryFunctionID] [int] NULL, */
--/* 	[SecondaryFunction] [nvarchar](20) NOT NULL, */
--/* 	[DisplayPriorityID] [int] NOT NULL, */
--/* 	[FunctionLookup] [nvarchar](255) NULL, */
--/*  CONSTRAINT [PK_SecondaryFunctionNoteTypes] PRIMARY KEY CLUSTERED */ 
--/* ( */
--/* 	[SecondaryFunctionNoteTypeID] ASC */
--/* )WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY] */
--/* ) ON [PRIMARY] */
--/* GO */
--/* SET ANSI_NULLS ON */
--/* GO */
--/* SET QUOTED_IDENTIFIER ON */
--/* GO */
--/* CREATE TABLE [RSWorkflowStrategyDocumentVectors]( */
--/* 	[RSWorkflowStrategyDocumentVectorID] [int] NOT NULL, */
--/* 	[WorkflowStrategyID] [int] NOT NULL, */
--/* 	[DocumentTypeID] [int] NOT NULL, */
--/* 	[MissingDocumentType] [bit] NULL, */
--/* 	[DisplayPriority] [int] NULL, */
--/* 	[RoleID] [int] NULL, */
--/* 	[AddCreate] [bit] NULL, */
--/* 	[PostCreateAction] [bit] NULL, */
--/* 	[AssociatedDocumentTypeID] [int] NULL, */
--/* 	[ActionDialogType] [int] NULL, */
--/*  CONSTRAINT [PK_RSWorkflowStrategyDocumentVectors] PRIMARY KEY CLUSTERED */ 
--/* ( */
--/* 	[RSWorkflowStrategyDocumentVectorID] ASC */
--/* )WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY] */
--/* ) ON [PRIMARY] */
--/* GO */
--/* SET ANSI_NULLS ON */
--/* GO */
--/* SET QUOTED_IDENTIFIER ON */
--/* GO */
--/* CREATE TABLE [RSWorkflowStrategyActionVectors]( */
--/* 	[RSWorkflowStrategyActionVectorID] [int] NOT NULL, */
--/* 	[WorkflowStrategyID] [int] NOT NULL, */
--/* 	[ActionID] [int] NOT NULL, */
--/* 	[DefaultAction] [bit] NULL, */
--/* 	[PreferredAction] [bit] NULL, */
--/* 	[PreferredPriority] [int] NULL, */
--/*  CONSTRAINT [PK_RSWorkflowStrategyActionVectors] PRIMARY KEY CLUSTERED */ 
--/* ( */
--/* 	[RSWorkflowStrategyActionVectorID] ASC */
--/* )WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY] */
--/* ) ON [PRIMARY] */
--/* GO */
--/* SET ANSI_NULLS ON */
--/* GO */
--/* SET QUOTED_IDENTIFIER ON */
--/* GO */
--/* CREATE TABLE [RSWorkflowStrategies]( */
--/* 	[RSWorkflowStrategyID] [int] NOT NULL, */
--/* 	[PrimaryFunctionID] [nvarchar](20) NULL, */
--/* 	[StrategyGroupID] [nvarchar](20) NULL, */
--/* 	[StrategyName] [nvarchar](50) NOT NULL, */
--/* 	[Blocking] [bit] NOT NULL, */
--/* 	[Description] [nvarchar](255) NOT NULL, */
--/* 	[PromoteTo] [int] NULL, */
--/* 	[NoCharge] [bit] NULL, */
--/* 	[Priority] [int] NULL, */
--/* 	[Legacy] [bit] NULL, */
--/* 	[ClearNoteCRDocumentID] [int] NULL, */
--/* 	[DisplayPriority] [int] NULL, */
--/* 	[DefaultActor] [nvarchar](10) NULL, */
--/* 	[AdvanceBySurgery] [bit] NULL, */
--/*  CONSTRAINT [PK_RSWorkflowStrategies] PRIMARY KEY CLUSTERED */ 
--/* ( */
--/* 	[RSWorkflowStrategyID] ASC */
--/* )WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY] */
--/* ) ON [PRIMARY] */
--/* GO */
--/* SET ANSI_NULLS ON */
--/* GO */
--/* SET QUOTED_IDENTIFIER ON */
--/* GO */
--/* CREATE TABLE [Roles]( */
--/* 	[RoleID] [int] IDENTITY(1,1) NOT NULL, */
--/* 	[RoleName] [nvarchar](50) NULL, */
--/* 	[RoleFunction] [nvarchar](255) NULL, */
--/* 	[Priority] [int] NULL, */
--/*  CONSTRAINT [PK_Roles2] PRIMARY KEY CLUSTERED */ 
--/* ( */
--/* 	[RoleID] ASC */
--/* )WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY] */
--/* ) ON [PRIMARY] */
--/* GO */
--/* SET ANSI_NULLS ON */
--/* GO */
--/* SET QUOTED_IDENTIFIER ON */
--/* GO */
--/* CREATE TABLE [RolePermissions]( */
--/* 	[RolePermissionID] [int] IDENTITY(1,1) NOT NULL, */
--/* 	[RoleID] [int] NOT NULL, */
--/* 	[PermissionID] [int] NOT NULL, */
--/*  CONSTRAINT [PK_RolePermissions] PRIMARY KEY CLUSTERED */ 
--/* ( */
--/* 	[RolePermissionID] ASC */
--/* )WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY] */
--/* ) ON [PRIMARY] */
--/* GO */
--/* SET ANSI_NULLS ON */
--/* GO */
--/* SET QUOTED_IDENTIFIER ON */
--/* GO */
CREATE TABLE [Providers](
	[ProviderID] [int] IDENTITY(1,1) NOT NULL,
	[Last] [nvarchar](255) NOT NULL,
	[First] [nvarchar](255) NULL,
	[DisplayName] [nvarchar] (50) NULL,
	[ExternalID] [nvarchar] (50) NULL,
 CONSTRAINT [PK_Providers] PRIMARY KEY CLUSTERED 
(
	[ProviderID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] 
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--/* CREATE TABLE [PrimaryFunctions]( */
--/* 	[PrimaryFunctionID] [nvarchar](20) NOT NULL, */
--/* 	[FunctionName] [nvarchar](50) NOT NULL, */
--/* 	[DisplayPriority] [int] NOT NULL, */
--/* 	[DirectoryName] [nvarchar](255) NULL, */
--/* 	[Tabs] [nvarchar](50) NULL, */
--/*  CONSTRAINT [PK_PrimaryFunctions] PRIMARY KEY CLUSTERED */ 
--/* ( */
--/* 	[PrimaryFunctionID] ASC */
--/* )WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY] */
--/* ) ON [PRIMARY] */
--/* GO */
--/* SET ANSI_NULLS ON */
--/* GO */
--/* SET QUOTED_IDENTIFIER ON */
--/* GO */
--/* CREATE TABLE [Permissions]( */
--/* 	[PermissionID] [int] IDENTITY(1,1) NOT NULL, */
--/* 	[PermissionFunction] [nvarchar](50) NOT NULL, */
--/*  CONSTRAINT [PK_Permissions] PRIMARY KEY CLUSTERED */ 
--/* ( */
--/* 	[PermissionID] ASC */
--/* )WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY] */
--/* ) ON [PRIMARY] */
--/* GO */
--/* SET ANSI_NULLS ON */
--/* GO */
--/* SET QUOTED_IDENTIFIER ON */
--/* GO */
CREATE TABLE [Patients](
	[PatientID] [int] IDENTITY(1,1) NOT NULL,
	[Last] [nvarchar](255) NOT NULL,
	[First] [nvarchar](255) NOT NULL,
	[DOB] [datetime] NULL,
	[Gender] [nvarchar](255) NULL,
	[LookupKey] [nvarchar](50) NULL,
	[DisplayName] [nvarchar](128) NULL,
 CONSTRAINT [PK_Patients_1] PRIMARY KEY CLUSTERED 
(
	[PatientCoreID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--/* CREATE TABLE [Logins]( */
--/* 	[LoginID] [int] IDENTITY(1,1) NOT NULL, */
--/* 	[LoginName] [nvarchar](50) NOT NULL, */
--/* 	[Password] [nvarchar](50) NULL, */
--/* 	[ActorID] [nvarchar](10) NULL, */
--/* 	[Created] [datetime] NULL, */
--/* 	[InUse] [bit] NOT NULL, */
--/*  CONSTRAINT [PK_Logins] PRIMARY KEY CLUSTERED */ 
--/* ( */
--/* 	[LoginID] ASC */
--/* )WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY] */
--/* ) ON [PRIMARY] */
--/* GO */
--/* SET ANSI_NULLS ON */
--/* GO */
--/* SET QUOTED_IDENTIFIER ON */
--/* GO */
--/* CREATE TABLE [Errors]( */
--/* 	[ErrorID] [int] IDENTITY(1,1) NOT NULL, */
--/* 	[Message] [nvarchar](512) NOT NULL, */
--/* 	[FileTrackerID] [int] NULL, */
--/* 	[DocumentID] [int] NULL, */
--/* 	[SourceFilePath] [nvarchar](255) NULL, */
--/* 	[ExceptionFilePath] [nvarchar](255) NULL, */
--/* 	[ErrorSource] [nchar](50) NOT NULL, */
--/* 	[DateAndTime] [datetime] NOT NULL, */
--/* 	[Resolved] [bit] NOT NULL, */
--/* 	[Fix] [nvarchar](512) NULL, */
--/* 	[Fixed] [bit] NULL, */
--/*  CONSTRAINT [PK_Errors] PRIMARY KEY CLUSTERED */ 
--/* ( */
--/* 	[ErrorID] ASC */
--/* )WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY] */
--/* ) ON [PRIMARY] */
--/* GO */
--/* SET ANSI_NULLS ON */
--/* GO */
--/* SET QUOTED_IDENTIFIER ON */
--/* GO */
--/* CREATE TABLE [EncounterTypes]( */
--/* 	[EncounterTypeID] [nvarchar](255) NOT NULL, */
--/* 	[Type] [nvarchar](255) NOT NULL, */
--/*  CONSTRAINT [PK_EncounterTypes] PRIMARY KEY CLUSTERED */ 
--/* ( */
--/* 	[EncounterTypeID] ASC */
--/* )WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY] */
--/* ) ON [PRIMARY] */
--/* GO */
--/* SET ANSI_NULLS ON */
--/* GO */
--/* SET QUOTED_IDENTIFIER ON */
--/* GO */
CREATE TABLE [Facilities](
	[FaclitiyID] [int] IDENTITY(1,1) NOT NULL,
	[FaclitiyCode] [nvarchar](50) NULL,
	[Name] [nvarchar](75) NULL,
 CONSTRAINT [PK_Facilities] PRIMARY KEY CLUSTERED 
(
	[FaclilityID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

CREATE TABLE [Encounters](
	[EncounterID] [int] IDENTITY(1,1) NOT NULL,
	[PatientID] [int] NOT NULL,
	[AppointmentStatus] [nvarchar](255) NULL,
	[EncounterType] [nvarchar](50) NULL,
	[Duration] [int] NULL,
	[ProviderID] [nvarchar](255) NULL,
	[FacilityID] [int] NULL,
	[DOS] [datetime] NULL,
	[StartTime] [datetime] NULL,
	[EncounterReason] [nvarchar](255) NULL,
 CONSTRAINT [PK_Encounters] PRIMARY KEY CLUSTERED 
(
	[EncounterCoreiD] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [DocumentTypes](
	[DocumentTypeID] [int] NOT NULL,
	[PrimaryFunction] [nvarchar](20) NULL,
	[FullName] [nvarchar](255) NULL,
	[CategoryID] [nvarchar](255) NULL,
  /* TODO: Text Field?\\ */
  [Notes] [nvarchar](255) NULL,
	[ShortName] [nvarchar](255) NOT NULL,
	[TeachableName] [nvarchar](255) NOT NULL,
	[NeedProvider] [int] NULL,
  /* TODO: FK */
  [ProviderID] [int] NULL,
	[TemplateFile] [nvarchar](255) NULL,
	[UseTemplate] [int] NULL,
	[Priority] [int] NULL,
	[AssociatedCategoryID] [nvarchar](255) NULL,
 CONSTRAINT [PK_DocumentTypes] PRIMARY KEY CLUSTERED 
(
	[DocumentTypeID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--/* CREATE TABLE [CRActions]( */
--/* 	[CRActionID] [int] NOT NULL, */
--/* 	[PrimaryFunction] [nvarchar](20) NULL, */
--/* 	[ActionCategory] [nvarchar](10) NULL, */
--/* 	[ActionName] [nvarchar](50) NULL, */
--/* 	[NextActionID] [int] NULL, */
--/* 	[Explanation] [nvarchar](255) NULL, */
--/* 	[IsPrompt] [bit] NOT NULL, */
--/* 	[DisplayPriority] [int] NULL, */
--/*  CONSTRAINT [PK_CRActions] PRIMARY KEY CLUSTERED */ 
--/* ( */
--/* 	[CRActionID] ASC */
--/* )WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY] */
--/* ) ON [PRIMARY] */
--/* GO */
--/* SET ANSI_NULLS ON */
--/* GO */
--/* SET QUOTED_IDENTIFIER ON */
--/* GO */
CREATE TABLE [Categories](
	[CategoryID] [int] IDENTITY(1,1) NOT NULL,
	[CategoryName] [nvarchar](20) NOT NULL,
	[PrimaryFunction] [nvarchar](20) NULL,
	[Description] [nvarchar](255) NULL,
	[ForCataloging] [int] NULL,
	[DisplayOrder] [int] NULL,
 CONSTRAINT [PK_Categories] PRIMARY KEY CLUSTERED 
(
	[CategoryName] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--/* CREATE TABLE [AppPaths]( */
--/* 	[AppPathID] [int] IDENTITY(1,1) NOT NULL, */
--/* 	[PartialType] [int] NOT NULL, */
--/* 	[AccessName] [nvarchar](50) NOT NULL, */
--/* 	[Path] [nvarchar](255) NOT NULL, */
--/* 	[UsedBy] [nvarchar](512) NULL, */
--/*  CONSTRAINT [PK_AppPaths] PRIMARY KEY CLUSTERED */ 
--/* ( */
--/* 	[AppPathID] ASC */
--/* )WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY] */
--/* ) ON [PRIMARY] */
--/* GO */
--/* SET ANSI_NULLS ON */
--/* GO */
--/* SET QUOTED_IDENTIFIER ON */
--/* GO */
--/* CREATE TABLE [Actors]( */
--/* 	[ActorID] [nvarchar](10) NOT NULL, */
--/* 	[Last] [nvarchar](255) NULL, */
--/* 	[First] [nvarchar](255) NULL, */
--/* 	[Internal] [bit] NULL, */
--/* 	[Email] [nvarchar](255) NULL, */
--/* 	[UserName] [nvarchar](255) NULL, */
--/* 	[IsProvider] [bit] NULL, */
--/* 	[ProviderID] [nvarchar](255) NULL, */
--/* 	[ActorUserID] [int] NOT NULL, */
--/*  CONSTRAINT [PK_Actors] PRIMARY KEY CLUSTERED */ 
--/* ( */
--/* 	[ActorID] ASC */
--/* )WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY] */
--/* ) ON [PRIMARY] */
--/* GO */
--/* SET ANSI_NULLS ON */
--/* GO */
--/* SET QUOTED_IDENTIFIER ON */
--/* GO */
--/* CREATE TABLE [ActorRoles]( */
--/* 	[ActorRoleID] [int] IDENTITY(1,1) NOT NULL, */
--/* 	[ActorID] [nvarchar](10) NULL, */
--/* 	[RoleID] [int] NULL, */
--/* 	[PreferredPriority] [int] NULL, */
--/*  CONSTRAINT [PK_ActorRoles2] PRIMARY KEY CLUSTERED */ 
--/* ( */
--/* 	[ActorRoleID] ASC */
--/* )WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY] */
--/* ) ON [PRIMARY] */
--/* GO */
