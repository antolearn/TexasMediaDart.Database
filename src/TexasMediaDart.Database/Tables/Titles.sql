CREATE TABLE [dbo].[Titles]
(
    [Id] INT IDENTITY(1,1) NOT NULL,

    [Name] NVARCHAR(255) NOT NULL,
    
    [Description] NVARCHAR(500) NULL,

    [CreatedBy] NVARCHAR(255) NOT NULL,

    [CreatedDateTimeUTC] DATETIME2 NOT NULL
        CONSTRAINT [DF_Titles_CreatedDateTimeUTC]
        DEFAULT (SYSUTCDATETIME()),

    [ModifiedBy] NVARCHAR(255) NULL,

    [ModifiedDateTimeUTC] DATETIME2 NULL,

    [ApprovedBy] NVARCHAR(255) NULL,

    [ApprovedDateTimeUTC] DATETIME2 NULL,

    [IsActive] BIT NOT NULL
        CONSTRAINT [DF_Titles_IsActive]
        DEFAULT (1),

    [IsDeleted] BIT NOT NULL
        CONSTRAINT [DF_Titles_IsDeleted]
        DEFAULT (0),

    [IsApproved] BIT NOT NULL
        CONSTRAINT [DF_Titles_IsApproved]
        DEFAULT (0),

    CONSTRAINT [PK_Titles]
        PRIMARY KEY CLUSTERED ([Id]),

    CONSTRAINT [UQ_Titles_Name]
        UNIQUE ([Name])
);