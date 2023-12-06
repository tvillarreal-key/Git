CREATE TABLE [dbo].[IScout_160405] (
    [link]                 NVARCHAR (128)  NULL,
    [report]               NVARCHAR (128)  NULL,
    [report_number]        NVARCHAR (20)   NULL,
    [report_date]          NVARCHAR (30)   NULL,
    [updated]              NVARCHAR (30)   NULL,
    [updated_time]         NVARCHAR (20)   NULL,
    [version]              NVARCHAR (5)    NULL,
    [observer]             NVARCHAR (64)   NULL,
    [observer_emp_num]     NVARCHAR (64)   NULL,
    [duration]             NVARCHAR (10)   NULL,
    [latitude]             NVARCHAR (30)   NULL,
    [longitude]            NVARCHAR (30)   NULL,
    [temperature]          NVARCHAR (7)    NULL,
    [wind_speed]           NVARCHAR (20)   NULL,
    [weather]              NVARCHAR (20)   NULL,
    [dateTime]             NVARCHAR (40)   NULL,
    [marketplace]          NVARCHAR (64)   NULL,
    [LCO]                  NVARCHAR (64)   NULL,
    [district_manager]     NVARCHAR (64)   NULL,
    [supervisor_PIC]       NVARCHAR (64)   NULL,
    [AssetNum]             NVARCHAR (64)   NULL,
    [ShiftType]            NVARCHAR (64)   NULL,
    [CrewType]             NVARCHAR (64)   NULL,
    [WellLocation]         NVARCHAR (128)  NULL,
    [Customer]             NVARCHAR (128)  NULL,
    [S1_R13]               NVARCHAR (5)    NULL,
    [S1_R14]               NVARCHAR (1024) NULL,
    [S1_R15]               NVARCHAR (5)    NULL,
    [S1_R16]               NVARCHAR (1024) NULL,
    [S1_R17]               NVARCHAR (5)    NULL,
    [S1_R18]               NVARCHAR (1024) NULL,
    [S2_R22]               NVARCHAR (5)    NULL,
    [S2_R23]               NVARCHAR (1024) NULL,
    [S2_R24]               NVARCHAR (5)    NULL,
    [S2_R25]               NVARCHAR (1024) NULL,
    [S2_R26]               NVARCHAR (5)    NULL,
    [S2_R27]               NVARCHAR (1024) NULL,
    [S3_R28]               NVARCHAR (5)    NULL,
    [S3_R29]               NVARCHAR (5)    NULL,
    [S3_R30]               NVARCHAR (1024) NULL,
    [S3_R30B]              NVARCHAR (5)    NULL,
    [S3_R30C]              NVARCHAR (2048) NULL,
    [S3_R30D]              NVARCHAR (5)    NULL,
    [S3_R30E]              NVARCHAR (2048) NULL,
    [S3_R30F]              NVARCHAR (5)    NULL,
    [S3_R30G]              NVARCHAR (5)    NULL,
    [S3_R30H]              NVARCHAR (2048) NULL,
    [S3_R30I]              NVARCHAR (2048) NULL,
    [S3_R30J]              NVARCHAR (2048) NULL,
    [S3_R30K]              NVARCHAR (2048) NULL,
    [S3_R30L]              NVARCHAR (5)    NULL,
    [S3_R30M]              NVARCHAR (2048) NULL,
    [S3_R31]               NVARCHAR (5)    NULL,
    [S3_R32]               NVARCHAR (1024) NULL,
    [S3_R33]               NVARCHAR (5)    NULL,
    [S3_R34]               NVARCHAR (1024) NULL,
    [S3_R35]               NVARCHAR (5)    NULL,
    [S3_R36]               NVARCHAR (1024) NULL,
    [S3_R37]               NVARCHAR (5)    NULL,
    [S3_R38]               NVARCHAR (1024) NULL,
    [S4_R40]               NVARCHAR (5)    NULL,
    [S4_R41]               NVARCHAR (1024) NULL,
    [S4_R42]               NVARCHAR (5)    NULL,
    [S4_R43]               NVARCHAR (1024) NULL,
    [S4_R44]               NVARCHAR (5)    NULL,
    [S4_R45]               NVARCHAR (1024) NULL,
    [S4_R46]               NVARCHAR (5)    NULL,
    [S4_R47]               NVARCHAR (1024) NULL,
    [S4_R48]               NVARCHAR (5)    NULL,
    [S4_R49]               NVARCHAR (1024) NULL,
    [S4_R50]               NVARCHAR (5)    NULL,
    [S4_R51]               NVARCHAR (1024) NULL,
    [S4_R52]               NVARCHAR (5)    NULL,
    [S4_R53]               NVARCHAR (1024) NULL,
    [S5_R55]               NVARCHAR (1024) NULL,
    [S5_R56]               NVARCHAR (64)   NULL,
    [S5_R57]               NVARCHAR (1024) NULL,
    [Select_daylight]      NVARCHAR (5)    NULL,
    [Select_24hour]        NVARCHAR (5)    NULL,
    [Select_daycrew]       NVARCHAR (5)    NULL,
    [Select_nightcrew]     NVARCHAR (5)    NULL,
    [Select_yes]           NVARCHAR (5)    NULL,
    [Select_no]            NVARCHAR (5)    NULL,
    [Select_na]            NVARCHAR (5)    NULL,
    [select_key_built_rig] INT             NULL,
    [select_nov_c_5_rig]   INT             NULL,
    [Select_approved]      NVARCHAR (5)    NULL,
    [Select_rejected]      NVARCHAR (5)    NULL,
    [InsertedOn]           DATETIME        NULL,
    [BatchID]              INT             NULL
);
GO

