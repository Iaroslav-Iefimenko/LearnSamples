USE [master]
GO
/****** Object:  Database [SocialNetwork]    Script Date: 01/21/2014 11:32:46 ******/
CREATE DATABASE [SocialNetwork] ON  PRIMARY 
( NAME = N'SocialNetwork', FILENAME = N'C:\Program Files (x86)\Microsoft SQL Server\MSSQL.1\MSSQL\DATA\SocialNetwork.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'SocialNetwork_log', FILENAME = N'C:\Program Files (x86)\Microsoft SQL Server\MSSQL.1\MSSQL\DATA\SocialNetwork_log.ldf' , SIZE = 1536KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [SocialNetwork] SET COMPATIBILITY_LEVEL = 90
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [SocialNetwork].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [SocialNetwork] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [SocialNetwork] SET ANSI_NULLS OFF
GO
ALTER DATABASE [SocialNetwork] SET ANSI_PADDING OFF
GO
ALTER DATABASE [SocialNetwork] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [SocialNetwork] SET ARITHABORT OFF
GO
ALTER DATABASE [SocialNetwork] SET AUTO_CLOSE OFF
GO
ALTER DATABASE [SocialNetwork] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [SocialNetwork] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [SocialNetwork] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [SocialNetwork] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [SocialNetwork] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [SocialNetwork] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [SocialNetwork] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [SocialNetwork] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [SocialNetwork] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [SocialNetwork] SET  DISABLE_BROKER
GO
ALTER DATABASE [SocialNetwork] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [SocialNetwork] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [SocialNetwork] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [SocialNetwork] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [SocialNetwork] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [SocialNetwork] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [SocialNetwork] SET  READ_WRITE
GO
ALTER DATABASE [SocialNetwork] SET RECOVERY SIMPLE
GO
ALTER DATABASE [SocialNetwork] SET  MULTI_USER
GO
ALTER DATABASE [SocialNetwork] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [SocialNetwork] SET DB_CHAINING OFF
GO
USE [SocialNetwork]
GO
/****** Object:  User [socialnetwork]    Script Date: 01/21/2014 11:32:46 ******/
CREATE USER [socialnetwork] FOR LOGIN [socialnetwork] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 01/21/2014 11:32:46 ******/
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
/****** Object:  Table [dbo].[Friends]    Script Date: 01/21/2014 11:32:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Friends](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [int] NOT NULL,
	[FriendId] [int] NOT NULL,
 CONSTRAINT [PK_Friends] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FriendRequests]    Script Date: 01/21/2014 11:32:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FriendRequests](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [int] NOT NULL,
	[PossibleFriendId] [int] NOT NULL,
 CONSTRAINT [PK_FriendRequests] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[WallMessages]    Script Date: 01/21/2014 11:32:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WallMessages](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[WallOwnerId] [int] NOT NULL,
	[AuthorId] [int] NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[Text] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_WallMessages] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Photos]    Script Date: 01/21/2014 11:32:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Photos](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [int] NOT NULL,
	[Image] [varbinary](max) NOT NULL,
	[Comment] [nvarchar](2048) NULL,
	[CreatedDate] [datetime] NOT NULL,
 CONSTRAINT [PK_Photos] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Messages]    Script Date: 01/21/2014 11:32:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Messages](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserToId] [int] NOT NULL,
	[UserFromId] [int] NOT NULL,
	[Text] [nvarchar](1024) NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
 CONSTRAINT [PK_Messages] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  ForeignKey [FK_Friends_Users_FriendId]    Script Date: 01/21/2014 11:32:46 ******/
ALTER TABLE [dbo].[Friends]  WITH CHECK ADD  CONSTRAINT [FK_Friends_Users_FriendId] FOREIGN KEY([FriendId])
REFERENCES [dbo].[Users] ([Id])
GO
ALTER TABLE [dbo].[Friends] CHECK CONSTRAINT [FK_Friends_Users_FriendId]
GO
/****** Object:  ForeignKey [FK_Friends_Users_UserId]    Script Date: 01/21/2014 11:32:46 ******/
ALTER TABLE [dbo].[Friends]  WITH CHECK ADD  CONSTRAINT [FK_Friends_Users_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([Id])
GO
ALTER TABLE [dbo].[Friends] CHECK CONSTRAINT [FK_Friends_Users_UserId]
GO
/****** Object:  ForeignKey [FK_FriendRequests_Users_PossibleFriendId]    Script Date: 01/21/2014 11:32:46 ******/
ALTER TABLE [dbo].[FriendRequests]  WITH CHECK ADD  CONSTRAINT [FK_FriendRequests_Users_PossibleFriendId] FOREIGN KEY([PossibleFriendId])
REFERENCES [dbo].[Users] ([Id])
GO
ALTER TABLE [dbo].[FriendRequests] CHECK CONSTRAINT [FK_FriendRequests_Users_PossibleFriendId]
GO
/****** Object:  ForeignKey [FK_FriendRequests_Users_UserId]    Script Date: 01/21/2014 11:32:46 ******/
ALTER TABLE [dbo].[FriendRequests]  WITH CHECK ADD  CONSTRAINT [FK_FriendRequests_Users_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([Id])
GO
ALTER TABLE [dbo].[FriendRequests] CHECK CONSTRAINT [FK_FriendRequests_Users_UserId]
GO
/****** Object:  ForeignKey [FK_WallMessages_Users_AuthorId]    Script Date: 01/21/2014 11:32:46 ******/
ALTER TABLE [dbo].[WallMessages]  WITH CHECK ADD  CONSTRAINT [FK_WallMessages_Users_AuthorId] FOREIGN KEY([AuthorId])
REFERENCES [dbo].[Users] ([Id])
GO
ALTER TABLE [dbo].[WallMessages] CHECK CONSTRAINT [FK_WallMessages_Users_AuthorId]
GO
/****** Object:  ForeignKey [FK_WallMessages_Users_WallOwnerId]    Script Date: 01/21/2014 11:32:46 ******/
ALTER TABLE [dbo].[WallMessages]  WITH CHECK ADD  CONSTRAINT [FK_WallMessages_Users_WallOwnerId] FOREIGN KEY([WallOwnerId])
REFERENCES [dbo].[Users] ([Id])
GO
ALTER TABLE [dbo].[WallMessages] CHECK CONSTRAINT [FK_WallMessages_Users_WallOwnerId]
GO
/****** Object:  ForeignKey [FK_Photos_Users]    Script Date: 01/21/2014 11:32:46 ******/
ALTER TABLE [dbo].[Photos]  WITH CHECK ADD  CONSTRAINT [FK_Photos_Users] FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([Id])
GO
ALTER TABLE [dbo].[Photos] CHECK CONSTRAINT [FK_Photos_Users]
GO
/****** Object:  ForeignKey [FK_Messages_Users_UserFromId]    Script Date: 01/21/2014 11:32:46 ******/
ALTER TABLE [dbo].[Messages]  WITH CHECK ADD  CONSTRAINT [FK_Messages_Users_UserFromId] FOREIGN KEY([UserFromId])
REFERENCES [dbo].[Users] ([Id])
GO
ALTER TABLE [dbo].[Messages] CHECK CONSTRAINT [FK_Messages_Users_UserFromId]
GO
/****** Object:  ForeignKey [FK_Messages_Users_UserToId]    Script Date: 01/21/2014 11:32:46 ******/
ALTER TABLE [dbo].[Messages]  WITH CHECK ADD  CONSTRAINT [FK_Messages_Users_UserToId] FOREIGN KEY([UserToId])
REFERENCES [dbo].[Users] ([Id])
GO
ALTER TABLE [dbo].[Messages] CHECK CONSTRAINT [FK_Messages_Users_UserToId]
GO
