USE [WebSchedule]
GO
SET IDENTITY_INSERT [dbo].[Room] ON 

INSERT [dbo].[Room] ([Id], [Room]) VALUES (1, N'TEC-104')
INSERT [dbo].[Room] ([Id], [Room]) VALUES (2, N'RVC-230')
INSERT [dbo].[Room] ([Id], [Room]) VALUES (3, N'SPG-123')
SET IDENTITY_INSERT [dbo].[Room] OFF
GO
SET IDENTITY_INSERT [dbo].[Location] ON 

INSERT [dbo].[Location] ([Id], [Location]) VALUES (1, N'SPG')
INSERT [dbo].[Location] ([Id], [Location]) VALUES (2, N'LEB')
INSERT [dbo].[Location] ([Id], [Location]) VALUES (3, N'RVC')
SET IDENTITY_INSERT [dbo].[Location] OFF
GO
SET IDENTITY_INSERT [dbo].[Instructor] ON 

INSERT [dbo].[Instructor] ([Id], [FName], [LName]) VALUES (1, N'Ryan', N'Butler')
INSERT [dbo].[Instructor] ([Id], [FName], [LName]) VALUES (2, N'Kelly', N'Brand')
INSERT [dbo].[Instructor] ([Id], [FName], [LName]) VALUES (3, N'Holly', N'Butler')
SET IDENTITY_INSERT [dbo].[Instructor] OFF
GO
SET IDENTITY_INSERT [dbo].[MeetDay] ON 

INSERT [dbo].[MeetDay] ([Id], [MeetDay]) VALUES (1, N'M-W-F')
INSERT [dbo].[MeetDay] ([Id], [MeetDay]) VALUES (2, N'M-W')
INSERT [dbo].[MeetDay] ([Id], [MeetDay]) VALUES (3, N'TTH')
SET IDENTITY_INSERT [dbo].[MeetDay] OFF
GO
SET IDENTITY_INSERT [dbo].[MeetType] ON 

INSERT [dbo].[MeetType] ([Id], [MeetType]) VALUES (1, N'LEC')
INSERT [dbo].[MeetType] ([Id], [MeetType]) VALUES (2, N'LAB')
SET IDENTITY_INSERT [dbo].[MeetType] OFF
GO
SET IDENTITY_INSERT [dbo].[Course] ON 

INSERT [dbo].[Course] ([Id], [Title], [TotalSeats], [RemainingSeats], [RoomId], [StartTime], [EndTime], [InstructorId], [LocationId], [MeetDayId], [MeetTypeId]) VALUES (1, N'Web Site Development 1', N'20', 2, 1, N'5:30PM', N'7:20PM', 1, 1, 1, 1)
INSERT [dbo].[Course] ([Id], [Title], [TotalSeats], [RemainingSeats], [RoomId], [StartTime], [EndTime], [InstructorId], [LocationId], [MeetDayId], [MeetTypeId]) VALUES (4, N'Marketing', N'20', 0, 3, N'8:00AM', N'10:00AM', 3, 3, 3, 2)
SET IDENTITY_INSERT [dbo].[Course] OFF
GO
