USE [WebSchedule]
GO

/****** Object:  Table [dbo].[Course]    Script Date: 7/1/2025 6:20:29 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Course](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Title] [varchar](50) NULL,
	[TotalSeats] [varchar](50) NULL,
	[RemainingSeats] [varchar](50) NULL,
	[RoomId] [int] NULL,
	[StartTime] [varchar](50) NULL,
	[EndTime] [varchar](50) NULL,
	[InstructorId] [int] NOT NULL,
	[LocationId] [int] NOT NULL,
	[MeetDayId] [int] NOT NULL,
	[MeetTypeId] [int] NOT NULL,
 CONSTRAINT [PK_SectionName] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

