USE [master]
GO
/****** Object:  Database [SmartPan]    Script Date: 10/05/2019 02:12:57 ص ******/
CREATE DATABASE [SmartPan]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'SmartPan', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\SmartPan.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'SmartPan_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\SmartPan_log.ldf' , SIZE = 2048KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [SmartPan] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [SmartPan].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [SmartPan] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [SmartPan] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [SmartPan] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [SmartPan] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [SmartPan] SET ARITHABORT OFF 
GO
ALTER DATABASE [SmartPan] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [SmartPan] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [SmartPan] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [SmartPan] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [SmartPan] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [SmartPan] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [SmartPan] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [SmartPan] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [SmartPan] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [SmartPan] SET  DISABLE_BROKER 
GO
ALTER DATABASE [SmartPan] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [SmartPan] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [SmartPan] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [SmartPan] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [SmartPan] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [SmartPan] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [SmartPan] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [SmartPan] SET RECOVERY FULL 
GO
ALTER DATABASE [SmartPan] SET  MULTI_USER 
GO
ALTER DATABASE [SmartPan] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [SmartPan] SET DB_CHAINING OFF 
GO
ALTER DATABASE [SmartPan] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [SmartPan] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [SmartPan] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'SmartPan', N'ON'
GO
USE [SmartPan]
GO
/****** Object:  Table [dbo].[__MigrationHistory]    Script Date: 10/05/2019 02:12:58 ص ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[__MigrationHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ContextKey] [nvarchar](300) NOT NULL,
	[Model] [varbinary](max) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK_dbo.__MigrationHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC,
	[ContextKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 10/05/2019 02:12:58 ص ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](128) NOT NULL,
	[Name] [nvarchar](256) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 10/05/2019 02:12:58 ص ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 10/05/2019 02:12:58 ص ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](128) NOT NULL,
	[ProviderKey] [nvarchar](128) NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC,
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 10/05/2019 02:12:58 ص ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](128) NOT NULL,
	[RoleId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 10/05/2019 02:12:58 ص ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](128) NOT NULL,
	[Email] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEndDateUtc] [datetime] NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
	[UserName] [nvarchar](256) NOT NULL,
	[Type] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Department]    Script Date: 10/05/2019 02:12:58 ص ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Department](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[DepartmentName] [nvarchar](max) NULL,
	[EmployeeID] [int] NULL,
 CONSTRAINT [PK_Department] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Employee]    Script Date: 10/05/2019 02:12:58 ص ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employee](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [nvarchar](max) NULL,
	[LastName] [nvarchar](max) NULL,
	[Salary] [money] NULL,
	[Image] [nvarchar](max) NULL,
	[ManagerID] [int] NULL,
	[DepartmentID] [int] NULL,
	[UserId] [nvarchar](128) NULL,
	[Type] [nvarchar](max) NULL,
 CONSTRAINT [PK_Employee] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[EmployeeTasks]    Script Date: 10/05/2019 02:12:58 ص ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EmployeeTasks](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[TaskTitle] [nvarchar](max) NULL,
	[TaskDescription] [nvarchar](max) NULL,
	[EmployeeID] [int] NULL,
	[DateAssigned] [datetime] NULL,
 CONSTRAINT [PK_Tasks] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[EmployeeTaskStatus]    Script Date: 10/05/2019 02:12:58 ص ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EmployeeTaskStatus](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[TaskStatus] [nvarchar](max) NULL,
	[TaskID] [int] NULL,
	[DateUpdated] [datetime] NULL,
 CONSTRAINT [PK_TaskStatus] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
INSERT [dbo].[__MigrationHistory] ([MigrationId], [ContextKey], [Model], [ProductVersion]) VALUES (N'201905091542522_InitialCreate', N'SmartPanTask.Models.ApplicationDbContext', 0x1F8B0800000000000400DD5C5B6FDB36147E1FB0FF20E8691B522B97B5E802BB45EA245BB0E6823A2DF656D012ED0895284DA2D204C37ED91EF693F617762851375E74B115DB29060CB578F89DC3C38FE4217998FFFEF977FCF6C1F78C7B1CC56E4026E6C168DF3430B103C725CB8999D0C58BD7E6DB37DF7F373E73FC07E3532E77C4E4A0268927E61DA5E1B165C5F61DF6513CF25D3B0AE260414776E05BC809ACC3FDFD5FAC83030B038409588631FE9010EAFA38FD013FA701B1714813E45D060EF662FE1D4A6629AA71857C1C87C8C61373E6A388DE20728BE22FA34CDC344E3C17812933EC2D4C0311125044C1D0E38F319ED12820CB59081F9077FB1862905B202FC6BC01C7A578D7B6EC1FB2B65865C51CCA4E621AF83D010F8EB8732CB1FA4A2E360BE781FBCEC0CDF491B53A75E1C4BC7070FAE943E081034485C7532F62C213F3B25071128757988EF28AA30CF23C02B8AF41F4655445DC333AD7DB2BC87438DA67FFED19D3C4A349842704273442DE9E7193CC3DD7FE1D3FDE065F30991C1DCC1747AF5FBE42CED1AB9FF1D1CB6A4BA1AD2057FB009F6EA220C411D8861745FB4DC3AAD7B3C48A45B54A9DCC2BC0251817A671891EDE63B2A47730620E5F9BC6B9FB809DFC0B27D747E2C230824A344AE0E755E27968EEE1A2DC6AD4C9FEDFA0F5F0E5AB41B45EA17B779976BDA01F064E04E3EA03F6D2D2F8CE0DB3E155EBEFCF5CEC3C0A7CF6BBCEAFACF4F32C48229B3526D08ADCA2688969DDBAB15592B713A519D4F0B4CE51779FDACC5299DE4A51D6A0554642AE62D3A321B7F769F57666DC491842E7A5D4621E69229C62B51A09D5F78CAA50499E83AEE421D0A86F792E3CF391EB0D301976D00281C8C28D7C5CB4F25D00D443A4B7CD37288E612E707E43F15D83E9F0CF014C9F613B8980A2338AFCF0C9B5DDDC05045F25FE9C317F73BA06EB9ADBAFC139B269109D11566B6DBCF781FD2548E819714E11C51FA99D03B29FB7AEDF1D6010734E6C1BC7F13990193BD300E2EC1CF082D0A3C3DE706C86DA763032F590EBABA311612EFD9C8B9611895A428A4A3462AAC8A4C9D4F7C1D225DD4CCD45F5A66612ADA672B1BEA632B06E967249BDA1A940AB9D99D460B15EDA43C3077B29ECEE477BEB2DDEBAB9A0E2C619CC90F8574C7004D398738328C511297BA0CBBCB18D6021ED3EA6F4C9D7A654D327E42543AB5A6934A493C0F0A32185DDFDD1909A099FEF5D8745251DB640B930C0779257EFAEDAC79C60D9A68743AD999B56BE993940375C4EE238B0DD7414280EBFF8D145DD7E88E18CF6738CAC35E25908340C88EEB2250FBE40DB4C9154D7E4147B9862E3C4CE0E07A728B69123BB111AE4F4302C5F51158695672275E37E927402D371C42A21B6098A61A4BA84CAC3C225B61B22AFD54B42CD8E4B186B7BA1432C39C521264C61AB27BA28571F8130030A3D42A7B479686C5518D74C444DD4AAEBF3B610B6EC77E96462239C6C899D35BCE4F1DB9310B3D9631B2067B34BBA18A03DCEDB0641F95EA52B01C48DCBAE1154D8316908CA43AA8D10B4EEB12D10B4EE926747D06C8BDAB5FF85FDEAAED1B3BE51DEFCB2DEE8AE2D70B3E68F1DA366167B421D0A357024D3F374CE0AF103556CCEC04EBE3F8B79A82B528481CF30AD1FD994F1AE320EB59A414412350196446B01E51781129034A07A18979FE5355AC7A3881EB0F9B95B232C9FFB05D80A0764ECEA856845507F6D2A92B3D3EEA36859C10689E49D360B151C0521C4C9ABDEF00E4ED19DCBCA8EE9120BF789862B0DE39DD1E0A096C855E3A4BC31837B29A766BB975401599F906C2D2F09E193C64B796306F712E768BB931441418FB0602D17D597F081065B7ED251AC3645D9D8CA12A5F887B1A5C9A81A5FA23074C9B29261C5BF18B32CBD6AFA62D63FEDC8CF302C3B56641F15D6169A6810A125164A4135587AEE46313D4514CD113BE7993ABE24A65C5B35D37FAEB2BA7CCA9D98AF03B934FB37BF59555CDFD7165B391AE120E7D0449F8534E939BA8200EAEA064B79431E8A1447F7D3C04B7CA28FB0F4B5B30BBC6AFDEC8B8C30B604FBA5084A729714E7D67DDFA967E45131542F1511CCEA3DA587D0F93B8F3FAB1ED7C5A47A94FC88AA8AA23BB6DA5ACFE942997EBD258689FD3BAB15E1694616CF4DA902F04F3D312AE90D1258A5AC3B6A3D03A58A592FE98E28A499542185A21E565693496A46560B56C2D378542DD15D839C3E5245974BBB232B1249AAD08AE215B015368B65DD5115B9265560457177EC32F1449C457778EDD26E5E565FBCB20DEE7AAB9706E369A6C46116BFCA3D7E15A8F2B92716BFA997C0F8F79DA4937697B73A9DB2838DF5E8A4C1D0CF3DB52BF0FAD4D3786FAFC7ACDD6BD7A6F7A67B7D3D5E3FD23E2935A45D9E2852682F767BC2AE6ECC7758ED8F69A42D5726621AB91B81508F31C5FE88098C667F7A53CFC56C22CF052E11711738A6592E8779B87F70283CC7D99DA731561C3B9E6287AA7B1F53EFB30DA465917B14D97728929324D6783E52824AE7CF17C4C10F13F3AFB4D6717A94C1FE957EDE332EE28FC4FD338182DB28C1C6DF72D2E730E9F4CDFBAC1D7DFCD0DDAB177F7CCEAAEE19D7118C9863635FF0E52A3D5C7F12D1CB9AACEA1AD6ACFC50E2F90EA8DA1B0425AA3020567F723077E920CF0D722B7FF0D1C38F7D4D533E29580B51F16C6028BC415CA87B16B00A96F64980033F69FA24A05F63D54F0456314DFB3CC025FDC1C4C701DDA7A1BCE616971AC5A668135352EAE7D6E4EAB5322DB7BD364939D86B0D7439CFBA07DC1AB9D42B30E399A5210FB63A2AB28C07C3DE26B59F3CB57857B289CB3C8FED26116F326FB8E166E89B4A17DE81043745C2CEF6938237CD35DD41EE8E6756F64BFDDD31B2F134AEED27F86E9A6CBA63DE1D275BAF34DE1DE3DAB6D6CF2D33ADF312BAF5A45C39BF487321A33A0B6E4BBACD0ECE61873F0F8004594499BD955467793565A8B6282C45F44AF5E965A26269E0487A258966B5FDDACA17FCC6C6729966B59AA4CC26DD7CFE6FD4CD659A756B521DB7912EAC4C3654A570B7CC634D7950CF293DB8D692966CF4B698B5F176FD3965030FE294DAE8D1DC113F9FE4DF415C32E4D0E991EC2B5FF7C2DA59F90B8BB07EC7EEB284607F6F9160BBB66A1632176411E48BB760512E229CD05C628A1C58524F22EA2E904DA1989D31A78FBDD3733B76D331C7CE05B94E6898506832F6E75EEDC08B05014DFAD38CE6BACDE3EB30FDBB25433401CC74D9D9FC357997B89E53D87DAE3813D240B0E8829FE8B2BEA4EC6477F958205D05A42310775F1114DD623FF4002CBE2633748F57B10DE8F71E2F91FD589E00EA40DA3BA2EEF6F1A98B9611F2638E51D6879FC061C77F78F33FCAB74A4868540000, N'6.1.3-40302')
INSERT [dbo].[AspNetRoles] ([Id], [Name]) VALUES (N'1', N'AdminRole')
INSERT [dbo].[AspNetRoles] ([Id], [Name]) VALUES (N'3', N'EmployeeRole')
INSERT [dbo].[AspNetRoles] ([Id], [Name]) VALUES (N'2', N'ManagerRole')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'fea6767d-8996-46f4-993d-986140978955', N'1')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [Type]) VALUES (N'fea6767d-8996-46f4-993d-986140978955', N'Admin@SmartPan.com', 0, N'ACDu1TtakcpuQrHIucWxRfmTiNizQxCssdT498/6myfj6xK1FK0+rHlLfJPppowR5Q==', N'2add5119-e2ed-47e3-b7b7-c2d868b5dfa1', NULL, 0, 0, NULL, 1, 0, N'Admin@SmartPan.com', NULL)
SET ANSI_PADDING ON

GO
/****** Object:  Index [RoleNameIndex]    Script Date: 10/05/2019 02:12:59 ص ******/
CREATE UNIQUE NONCLUSTERED INDEX [RoleNameIndex] ON [dbo].[AspNetRoles]
(
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_UserId]    Script Date: 10/05/2019 02:12:59 ص ******/
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[AspNetUserClaims]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_UserId]    Script Date: 10/05/2019 02:12:59 ص ******/
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[AspNetUserLogins]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_RoleId]    Script Date: 10/05/2019 02:12:59 ص ******/
CREATE NONCLUSTERED INDEX [IX_RoleId] ON [dbo].[AspNetUserRoles]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_UserId]    Script Date: 10/05/2019 02:12:59 ص ******/
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[AspNetUserRoles]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [UserNameIndex]    Script Date: 10/05/2019 02:12:59 ص ******/
CREATE UNIQUE NONCLUSTERED INDEX [UserNameIndex] ON [dbo].[AspNetUsers]
(
	[UserName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[Employee]  WITH CHECK ADD  CONSTRAINT [FK_Employee_AspNetUsers] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Employee] CHECK CONSTRAINT [FK_Employee_AspNetUsers]
GO
ALTER TABLE [dbo].[Employee]  WITH CHECK ADD  CONSTRAINT [FK_Employee_Department] FOREIGN KEY([DepartmentID])
REFERENCES [dbo].[Department] ([Id])
GO
ALTER TABLE [dbo].[Employee] CHECK CONSTRAINT [FK_Employee_Department]
GO
ALTER TABLE [dbo].[Employee]  WITH CHECK ADD  CONSTRAINT [FK_Employee_Employee] FOREIGN KEY([ManagerID])
REFERENCES [dbo].[Employee] ([Id])
GO
ALTER TABLE [dbo].[Employee] CHECK CONSTRAINT [FK_Employee_Employee]
GO
ALTER TABLE [dbo].[EmployeeTasks]  WITH CHECK ADD  CONSTRAINT [FK_Tasks_Employee] FOREIGN KEY([EmployeeID])
REFERENCES [dbo].[Employee] ([Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[EmployeeTasks] CHECK CONSTRAINT [FK_Tasks_Employee]
GO
ALTER TABLE [dbo].[EmployeeTaskStatus]  WITH CHECK ADD  CONSTRAINT [FK_TaskStatus_Tasks] FOREIGN KEY([TaskID])
REFERENCES [dbo].[EmployeeTasks] ([Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[EmployeeTaskStatus] CHECK CONSTRAINT [FK_TaskStatus_Tasks]
GO
USE [master]
GO
ALTER DATABASE [SmartPan] SET  READ_WRITE 
GO
