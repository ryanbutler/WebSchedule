USE [WebSchedule]
GO

/****** Object:  Table [dbo].[Course]    Script Date: 7/12/2025 10:15:57 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Course](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Title] [varchar](50) NULL,
	[TotalSeats] [varchar](50) NULL,
	[RemainingSeats] [int] NULL,
	[RoomId] [int] NOT NULL,
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

ALTER TABLE [dbo].[Course]  WITH CHECK ADD  CONSTRAINT [FK_Course_Instructor] FOREIGN KEY([InstructorId])
REFERENCES [dbo].[Instructor] ([Id])
GO

ALTER TABLE [dbo].[Course] CHECK CONSTRAINT [FK_Course_Instructor]
GO

ALTER TABLE [dbo].[Course]  WITH CHECK ADD  CONSTRAINT [FK_Course_Location] FOREIGN KEY([LocationId])
REFERENCES [dbo].[Location] ([Id])
GO

ALTER TABLE [dbo].[Course] CHECK CONSTRAINT [FK_Course_Location]
GO

ALTER TABLE [dbo].[Course]  WITH CHECK ADD  CONSTRAINT [FK_Course_MeetDay] FOREIGN KEY([MeetDayId])
REFERENCES [dbo].[MeetDay] ([Id])
GO

ALTER TABLE [dbo].[Course] CHECK CONSTRAINT [FK_Course_MeetDay]
GO

ALTER TABLE [dbo].[Course]  WITH CHECK ADD  CONSTRAINT [FK_Course_MeetType] FOREIGN KEY([MeetTypeId])
REFERENCES [dbo].[MeetType] ([Id])
GO

ALTER TABLE [dbo].[Course] CHECK CONSTRAINT [FK_Course_MeetType]
GO

ALTER TABLE [dbo].[Course]  WITH CHECK ADD  CONSTRAINT [FK_Course_Room] FOREIGN KEY([RoomId])
REFERENCES [dbo].[Room] ([Id])
GO

ALTER TABLE [dbo].[Course] CHECK CONSTRAINT [FK_Course_Room]
GO

