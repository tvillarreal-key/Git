CREATE TABLE [dbo].[KeyView_Activities2] (
    [Well_API_Num]         VARCHAR (50)    NULL,
    [Well_Name]            VARCHAR (128)   NULL,
    [Well_Field]           VARCHAR (50)    NULL,
    [Rig]                  VARCHAR (50)    NULL,
    [JobNumber]            VARCHAR (50)    NULL,
    [MasterWorkType]       VARCHAR (50)    NULL,
    [MasterJobType]        VARCHAR (50)    NULL,
    [WorkType]             VARCHAR (50)    NULL,
    [JobType]              VARCHAR (50)    NULL,
    [JobStartTime]         DATETIME        NULL,
    [JobEndTime]           DATETIME        NULL,
    [ActivityCode]         NVARCHAR (50)   NULL,
    [ActivityDescription]  VARCHAR (MAX)   NULL,
    [ActivityStartTime]    DATETIME        NULL,
    [ActivityEndTime]      DATETIME        NULL,
    [DurationMinutes]      NUMERIC (18, 6) NULL,
    [WorkingDepth]         INT             NULL,
    [WellboreConfig]       VARCHAR (50)    NULL,
    [Yard]                 VARCHAR (50)    NULL,
    [ActivityCategory]     VARCHAR (20)    NULL,
    [ActivityCategoryDesc] VARCHAR (50)    NULL,
    [JobClass]             VARCHAR (20)    NULL,
    [KeyViewOrgUnit]       VARCHAR (128)   NULL,
    [CustomerOrgUnit]      VARCHAR (128)   NULL,
    [E_Start_Time]         DATETIME        NULL,
    [E_End_Time]           DATETIME        NULL,
    [E_Duration]           NUMERIC (9, 2)  NULL,
    [E_Exception_Type]     VARCHAR (50)    NULL,
    [E_Exception_Number]   INT             NULL,
    [E_Complete]           VARCHAR (5)     NULL,
    [E_Note]               VARCHAR (MAX)   NULL,
    [E_Billable]           VARCHAR (5)     NULL
);
GO

