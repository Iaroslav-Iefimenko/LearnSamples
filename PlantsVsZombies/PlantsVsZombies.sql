USE [master]
GO
/****** Object:  Database [PlantsVsZombies]    Script Date: 02/05/2014 11:41:30 ******/
CREATE DATABASE [PlantsVsZombies] ON  PRIMARY 
( NAME = N'PlantsVsZombies', FILENAME = N'C:\Program Files (x86)\Microsoft SQL Server\MSSQL.1\MSSQL\DATA\PlantsVsZombies.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'PlantsVsZombies_log', FILENAME = N'C:\Program Files (x86)\Microsoft SQL Server\MSSQL.1\MSSQL\DATA\PlantsVsZombies_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [PlantsVsZombies] SET COMPATIBILITY_LEVEL = 90
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [PlantsVsZombies].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [PlantsVsZombies] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [PlantsVsZombies] SET ANSI_NULLS OFF
GO
ALTER DATABASE [PlantsVsZombies] SET ANSI_PADDING OFF
GO
ALTER DATABASE [PlantsVsZombies] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [PlantsVsZombies] SET ARITHABORT OFF
GO
ALTER DATABASE [PlantsVsZombies] SET AUTO_CLOSE OFF
GO
ALTER DATABASE [PlantsVsZombies] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [PlantsVsZombies] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [PlantsVsZombies] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [PlantsVsZombies] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [PlantsVsZombies] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [PlantsVsZombies] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [PlantsVsZombies] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [PlantsVsZombies] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [PlantsVsZombies] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [PlantsVsZombies] SET  DISABLE_BROKER
GO
ALTER DATABASE [PlantsVsZombies] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [PlantsVsZombies] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [PlantsVsZombies] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [PlantsVsZombies] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [PlantsVsZombies] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [PlantsVsZombies] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [PlantsVsZombies] SET  READ_WRITE
GO
ALTER DATABASE [PlantsVsZombies] SET RECOVERY SIMPLE
GO
ALTER DATABASE [PlantsVsZombies] SET  MULTI_USER
GO
ALTER DATABASE [PlantsVsZombies] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [PlantsVsZombies] SET DB_CHAINING OFF
GO
USE [PlantsVsZombies]
GO
/****** Object:  Table [dbo].[GameSettings]    Script Date: 02/05/2014 11:41:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GameSettings](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[Value] [nvarchar](1024) NOT NULL,
 CONSTRAINT [PK_GameSettings] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[GameSettings] ON
INSERT [dbo].[GameSettings] ([Id], [Name], [Value]) VALUES (1, N'MaxFinishedZombies', N'5')
INSERT [dbo].[GameSettings] ([Id], [Name], [Value]) VALUES (2, N'MoneyOnStart', N'525')
INSERT [dbo].[GameSettings] ([Id], [Name], [Value]) VALUES (3, N'PeaStepWidth', N'30')
INSERT [dbo].[GameSettings] ([Id], [Name], [Value]) VALUES (4, N'PeaDamage', N'10')
INSERT [dbo].[GameSettings] ([Id], [Name], [Value]) VALUES (5, N'ZombieCostOfDestroyed', N'30')
INSERT [dbo].[GameSettings] ([Id], [Name], [Value]) VALUES (6, N'ZombieStepWidth', N'60')
INSERT [dbo].[GameSettings] ([Id], [Name], [Value]) VALUES (7, N'TopShift', N'100')
INSERT [dbo].[GameSettings] ([Id], [Name], [Value]) VALUES (8, N'BorderWidth', N'10')
INSERT [dbo].[GameSettings] ([Id], [Name], [Value]) VALUES (9, N'SquareWidth', N'100')
INSERT [dbo].[GameSettings] ([Id], [Name], [Value]) VALUES (10, N'SquareHeight', N'100')
INSERT [dbo].[GameSettings] ([Id], [Name], [Value]) VALUES (11, N'LinesQuantity', N'5')
INSERT [dbo].[GameSettings] ([Id], [Name], [Value]) VALUES (12, N'VLinesQuantity', N'8')
INSERT [dbo].[GameSettings] ([Id], [Name], [Value]) VALUES (13, N'MainInterval', N'500')
INSERT [dbo].[GameSettings] ([Id], [Name], [Value]) VALUES (14, N'ZombiesCreateInterval', N'2000')
INSERT [dbo].[GameSettings] ([Id], [Name], [Value]) VALUES (15, N'BackgroundColor', N'black')
INSERT [dbo].[GameSettings] ([Id], [Name], [Value]) VALUES (16, N'BorderColor', N'#FF6A00')
INSERT [dbo].[GameSettings] ([Id], [Name], [Value]) VALUES (17, N'TextColor', N'#FF0000')
INSERT [dbo].[GameSettings] ([Id], [Name], [Value]) VALUES (18, N'FontName', N'14px Arial')
INSERT [dbo].[GameSettings] ([Id], [Name], [Value]) VALUES (19, N'DeskColor1', N'#00FF21')
INSERT [dbo].[GameSettings] ([Id], [Name], [Value]) VALUES (20, N'DeskColor2', N'#007F46')
INSERT [dbo].[GameSettings] ([Id], [Name], [Value]) VALUES (21, N'StartText', N'Начать игру!!!')
INSERT [dbo].[GameSettings] ([Id], [Name], [Value]) VALUES (22, N'StartedText', N'Игра начата!!!')
INSERT [dbo].[GameSettings] ([Id], [Name], [Value]) VALUES (23, N'StartCaptionX', N'20')
INSERT [dbo].[GameSettings] ([Id], [Name], [Value]) VALUES (24, N'StartCaptionY', N'30')
INSERT [dbo].[GameSettings] ([Id], [Name], [Value]) VALUES (25, N'StartCaptionWidth', N'100')
INSERT [dbo].[GameSettings] ([Id], [Name], [Value]) VALUES (26, N'StartCaptionHeight', N'30')
INSERT [dbo].[GameSettings] ([Id], [Name], [Value]) VALUES (27, N'ZombiesFinishedText', N'Прошло зомби: ')
INSERT [dbo].[GameSettings] ([Id], [Name], [Value]) VALUES (28, N'ZombiesFinishedCaptionX', N'550')
INSERT [dbo].[GameSettings] ([Id], [Name], [Value]) VALUES (29, N'ZombiesFinishedCaptionY', N'25')
INSERT [dbo].[GameSettings] ([Id], [Name], [Value]) VALUES (30, N'ZombiesFinishedX', N'750')
INSERT [dbo].[GameSettings] ([Id], [Name], [Value]) VALUES (31, N'ZombiesFinishedY', N'25')
INSERT [dbo].[GameSettings] ([Id], [Name], [Value]) VALUES (32, N'MoneyText', N'Золото: ')
INSERT [dbo].[GameSettings] ([Id], [Name], [Value]) VALUES (33, N'MoneyCaptionX', N'550')
INSERT [dbo].[GameSettings] ([Id], [Name], [Value]) VALUES (34, N'MoneyCaptionY', N'45')
INSERT [dbo].[GameSettings] ([Id], [Name], [Value]) VALUES (35, N'MoneyX', N'750')
INSERT [dbo].[GameSettings] ([Id], [Name], [Value]) VALUES (36, N'MoneyY', N'45')
INSERT [dbo].[GameSettings] ([Id], [Name], [Value]) VALUES (37, N'ZombiesDestroyedText', N'Уничтожено зомби: ')
INSERT [dbo].[GameSettings] ([Id], [Name], [Value]) VALUES (38, N'ZombiesDestroyedCaptionX', N'550')
INSERT [dbo].[GameSettings] ([Id], [Name], [Value]) VALUES (39, N'ZombiesDestroyedCaptionY', N'65')
INSERT [dbo].[GameSettings] ([Id], [Name], [Value]) VALUES (40, N'ZombiesDestroyedX', N'750')
INSERT [dbo].[GameSettings] ([Id], [Name], [Value]) VALUES (41, N'ZombiesDestroyedY', N'65')
INSERT [dbo].[GameSettings] ([Id], [Name], [Value]) VALUES (42, N'ZombieImgSrc', N'../Images/Zombie1.gif')
INSERT [dbo].[GameSettings] ([Id], [Name], [Value]) VALUES (43, N'PeaCanonImgSrc', N'../Images/gun.gif')
INSERT [dbo].[GameSettings] ([Id], [Name], [Value]) VALUES (44, N'PeaImgSrc', N'../Images/gorox.gif')
SET IDENTITY_INSERT [dbo].[GameSettings] OFF
/****** Object:  Table [dbo].[Users]    Script Date: 02/05/2014 11:41:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [nvarchar](128) NOT NULL,
	[Password] [nvarchar](128) NOT NULL,
	[Email] [nvarchar](128) NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[FirstName] [nvarchar](128) NOT NULL,
	[LastName] [nvarchar](128) NOT NULL,
	[MiddleName] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Users] ON
INSERT [dbo].[Users] ([Id], [UserName], [Password], [Email], [CreatedDate], [FirstName], [LastName], [MiddleName]) VALUES (1, N't', N't', N'tt@tt.com', CAST(0x0000A2C300CD6E59 AS DateTime), N'test', N'test', N'test')
INSERT [dbo].[Users] ([Id], [UserName], [Password], [Email], [CreatedDate], [FirstName], [LastName], [MiddleName]) VALUES (2, N't2', N't2', N't2@t2.com', CAST(0x0000A2C300D69575 AS DateTime), N't2', N't2', N't2')
SET IDENTITY_INSERT [dbo].[Users] OFF
/****** Object:  Table [dbo].[GameResults]    Script Date: 02/05/2014 11:41:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GameResults](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [int] NOT NULL,
	[DestroyedZombies] [int] NOT NULL,
	[GameDate] [datetime] NOT NULL,
 CONSTRAINT [PK_GameResults] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[GameResults] ON
INSERT [dbo].[GameResults] ([Id], [UserId], [DestroyedZombies], [GameDate]) VALUES (1, 1, 15, CAST(0x0000A2C300D6AC63 AS DateTime))
INSERT [dbo].[GameResults] ([Id], [UserId], [DestroyedZombies], [GameDate]) VALUES (2, 1, 20, CAST(0x0000A2C300D6B17F AS DateTime))
INSERT [dbo].[GameResults] ([Id], [UserId], [DestroyedZombies], [GameDate]) VALUES (3, 2, 20, CAST(0x0000A2C300D6B53B AS DateTime))
INSERT [dbo].[GameResults] ([Id], [UserId], [DestroyedZombies], [GameDate]) VALUES (4, 2, 25, CAST(0x0000A2C300D6B8B3 AS DateTime))
INSERT [dbo].[GameResults] ([Id], [UserId], [DestroyedZombies], [GameDate]) VALUES (5, 1, 0, CAST(0x0000A2C301263118 AS DateTime))
INSERT [dbo].[GameResults] ([Id], [UserId], [DestroyedZombies], [GameDate]) VALUES (6, 1, 18, CAST(0x0000A2C30126B2C3 AS DateTime))
INSERT [dbo].[GameResults] ([Id], [UserId], [DestroyedZombies], [GameDate]) VALUES (7, 1, 37, CAST(0x0000A2C4010CCC8C AS DateTime))
INSERT [dbo].[GameResults] ([Id], [UserId], [DestroyedZombies], [GameDate]) VALUES (8, 1, 113, CAST(0x0000A2C40120AC8B AS DateTime))
INSERT [dbo].[GameResults] ([Id], [UserId], [DestroyedZombies], [GameDate]) VALUES (9, 1, 20, CAST(0x0000A2C7011FDA54 AS DateTime))
INSERT [dbo].[GameResults] ([Id], [UserId], [DestroyedZombies], [GameDate]) VALUES (10, 1, 0, CAST(0x0000A2C8010653BE AS DateTime))
INSERT [dbo].[GameResults] ([Id], [UserId], [DestroyedZombies], [GameDate]) VALUES (11, 1, 35, CAST(0x0000A2C8010A44B8 AS DateTime))
INSERT [dbo].[GameResults] ([Id], [UserId], [DestroyedZombies], [GameDate]) VALUES (12, 1, 24, CAST(0x0000A2C8010BC153 AS DateTime))
INSERT [dbo].[GameResults] ([Id], [UserId], [DestroyedZombies], [GameDate]) VALUES (13, 1, 0, CAST(0x0000A2C801191110 AS DateTime))
INSERT [dbo].[GameResults] ([Id], [UserId], [DestroyedZombies], [GameDate]) VALUES (14, 1, 12, CAST(0x0000A2C80124389F AS DateTime))
INSERT [dbo].[GameResults] ([Id], [UserId], [DestroyedZombies], [GameDate]) VALUES (15, 1, 23, CAST(0x0000A2C900BBD880 AS DateTime))
SET IDENTITY_INSERT [dbo].[GameResults] OFF
/****** Object:  ForeignKey [FK_GameResults_Users]    Script Date: 02/05/2014 11:41:30 ******/
ALTER TABLE [dbo].[GameResults]  WITH CHECK ADD  CONSTRAINT [FK_GameResults_Users] FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([Id])
GO
ALTER TABLE [dbo].[GameResults] CHECK CONSTRAINT [FK_GameResults_Users]
GO
