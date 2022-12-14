USE [master]
GO
/****** Object:  Database [TourAgencyMD]    Script Date: 24.11.2022 13:32:55 ******/
CREATE DATABASE [TourAgencyMD]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'TourAgencyMD', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\TourAgencyMD.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 10%)
 LOG ON 
( NAME = N'TourAgencyMD_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\TourAgencyMD_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [TourAgencyMD] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [TourAgencyMD].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [TourAgencyMD] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [TourAgencyMD] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [TourAgencyMD] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [TourAgencyMD] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [TourAgencyMD] SET ARITHABORT OFF 
GO
ALTER DATABASE [TourAgencyMD] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [TourAgencyMD] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [TourAgencyMD] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [TourAgencyMD] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [TourAgencyMD] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [TourAgencyMD] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [TourAgencyMD] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [TourAgencyMD] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [TourAgencyMD] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [TourAgencyMD] SET  DISABLE_BROKER 
GO
ALTER DATABASE [TourAgencyMD] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [TourAgencyMD] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [TourAgencyMD] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [TourAgencyMD] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [TourAgencyMD] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [TourAgencyMD] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [TourAgencyMD] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [TourAgencyMD] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [TourAgencyMD] SET  MULTI_USER 
GO
ALTER DATABASE [TourAgencyMD] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [TourAgencyMD] SET DB_CHAINING OFF 
GO
ALTER DATABASE [TourAgencyMD] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [TourAgencyMD] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [TourAgencyMD] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [TourAgencyMD] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [TourAgencyMD] SET QUERY_STORE = OFF
GO
USE [TourAgencyMD]
GO
/****** Object:  Table [dbo].[Countrys]    Script Date: 24.11.2022 13:32:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Countrys](
	[CountryID] [int] IDENTITY(1,1) NOT NULL,
	[CountryName] [nvarchar](50) NULL,
	[CountryCode] [nchar](10) NULL,
 CONSTRAINT [PK_Countrys] PRIMARY KEY CLUSTERED 
(
	[CountryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Hotels]    Script Date: 24.11.2022 13:32:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Hotels](
	[HotelID] [int] IDENTITY(1,1) NOT NULL,
	[HotelName] [nvarchar](50) NOT NULL,
	[Stars] [int] NOT NULL,
	[CountryName] [nvarchar](50) NOT NULL,
	[CountryCode] [nchar](10) NOT NULL,
 CONSTRAINT [PK_Hotels] PRIMARY KEY CLUSTERED 
(
	[HotelID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Role]    Script Date: 24.11.2022 13:32:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role](
	[id] [int] NOT NULL,
	[Title] [nvarchar](50) NULL,
 CONSTRAINT [PK_Role] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TourHotels]    Script Date: 24.11.2022 13:32:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TourHotels](
	[HotelID] [int] NOT NULL,
	[TourID] [int] NOT NULL,
 CONSTRAINT [PK_TourHotels] PRIMARY KEY CLUSTERED 
(
	[HotelID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tours]    Script Date: 24.11.2022 13:32:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tours](
	[TourID] [int] NOT NULL,
	[ImageTour] [nvarchar](max) NOT NULL,
	[TourName] [nvarchar](50) NULL,
	[CountryCode] [nchar](10) NULL,
	[TicketsCount] [int] NULL,
	[Cost] [int] NULL,
	[isActual] [int] NULL,
	[TourType] [nvarchar](max) NULL,
 CONSTRAINT [PK_Tours] PRIMARY KEY CLUSTERED 
(
	[TourID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TourTypes]    Script Date: 24.11.2022 13:32:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TourTypes](
	[TourTypeID] [int] NOT NULL,
	[TypeName] [nvarchar](50) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User]    Script Date: 24.11.2022 13:32:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[ID] [int] NOT NULL,
	[login] [nvarchar](50) NULL,
	[RoleID] [int] NULL,
	[Password] [nvarchar](50) NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Countrys] ON 

INSERT [dbo].[Countrys] ([CountryID], [CountryName], [CountryCode]) VALUES (1, N'Afghanistan', N'AF        ')
INSERT [dbo].[Countrys] ([CountryID], [CountryName], [CountryCode]) VALUES (2, N'Albania', N'AL        ')
INSERT [dbo].[Countrys] ([CountryID], [CountryName], [CountryCode]) VALUES (3, N'Algeria', N'DZ        ')
INSERT [dbo].[Countrys] ([CountryID], [CountryName], [CountryCode]) VALUES (4, N'American Samoa', N'AS        ')
INSERT [dbo].[Countrys] ([CountryID], [CountryName], [CountryCode]) VALUES (5, N'Andorra', N'AD        ')
INSERT [dbo].[Countrys] ([CountryID], [CountryName], [CountryCode]) VALUES (6, N'Angola', N'AO        ')
INSERT [dbo].[Countrys] ([CountryID], [CountryName], [CountryCode]) VALUES (7, N'Anguilla', N'AI        ')
INSERT [dbo].[Countrys] ([CountryID], [CountryName], [CountryCode]) VALUES (8, N'Antarctica', N'AQ        ')
INSERT [dbo].[Countrys] ([CountryID], [CountryName], [CountryCode]) VALUES (9, N'Antigua and Barbuda', N'AG        ')
INSERT [dbo].[Countrys] ([CountryID], [CountryName], [CountryCode]) VALUES (10, N'Argentina', N'AR        ')
INSERT [dbo].[Countrys] ([CountryID], [CountryName], [CountryCode]) VALUES (11, N'Armenia', N'AM        ')
INSERT [dbo].[Countrys] ([CountryID], [CountryName], [CountryCode]) VALUES (12, N'Aruba', N'AW        ')
INSERT [dbo].[Countrys] ([CountryID], [CountryName], [CountryCode]) VALUES (13, N'Asia/Pacific Region', N'AP        ')
INSERT [dbo].[Countrys] ([CountryID], [CountryName], [CountryCode]) VALUES (14, N'Australia', N'AU        ')
INSERT [dbo].[Countrys] ([CountryID], [CountryName], [CountryCode]) VALUES (15, N'Austria', N'AT        ')
INSERT [dbo].[Countrys] ([CountryID], [CountryName], [CountryCode]) VALUES (16, N'Azerbaijan', N'AZ        ')
INSERT [dbo].[Countrys] ([CountryID], [CountryName], [CountryCode]) VALUES (17, N'Bahamas', N'BS        ')
INSERT [dbo].[Countrys] ([CountryID], [CountryName], [CountryCode]) VALUES (18, N'Bahrain', N'BH        ')
INSERT [dbo].[Countrys] ([CountryID], [CountryName], [CountryCode]) VALUES (19, N'Bangladesh', N'BD        ')
INSERT [dbo].[Countrys] ([CountryID], [CountryName], [CountryCode]) VALUES (20, N'Barbados', N'BB        ')
INSERT [dbo].[Countrys] ([CountryID], [CountryName], [CountryCode]) VALUES (21, N'Belarus', N'BY        ')
INSERT [dbo].[Countrys] ([CountryID], [CountryName], [CountryCode]) VALUES (22, N'Belgium', N'BE        ')
INSERT [dbo].[Countrys] ([CountryID], [CountryName], [CountryCode]) VALUES (23, N'Belize', N'BZ        ')
INSERT [dbo].[Countrys] ([CountryID], [CountryName], [CountryCode]) VALUES (24, N'Benin', N'BJ        ')
INSERT [dbo].[Countrys] ([CountryID], [CountryName], [CountryCode]) VALUES (25, N'Bermuda', N'BM        ')
INSERT [dbo].[Countrys] ([CountryID], [CountryName], [CountryCode]) VALUES (26, N'Bhutan', N'BT        ')
INSERT [dbo].[Countrys] ([CountryID], [CountryName], [CountryCode]) VALUES (27, N'Bolivia', N'BO        ')
INSERT [dbo].[Countrys] ([CountryID], [CountryName], [CountryCode]) VALUES (28, N'Bosnia and Herzegovina', N'BA        ')
INSERT [dbo].[Countrys] ([CountryID], [CountryName], [CountryCode]) VALUES (29, N'Botswana', N'BW        ')
INSERT [dbo].[Countrys] ([CountryID], [CountryName], [CountryCode]) VALUES (30, N'Bouvet Island', N'BV        ')
INSERT [dbo].[Countrys] ([CountryID], [CountryName], [CountryCode]) VALUES (31, N'Brazil', N'BR        ')
INSERT [dbo].[Countrys] ([CountryID], [CountryName], [CountryCode]) VALUES (32, N'British Indian Ocean Territory', N'IO        ')
INSERT [dbo].[Countrys] ([CountryID], [CountryName], [CountryCode]) VALUES (33, N'Brunei Darussalam', N'BN        ')
INSERT [dbo].[Countrys] ([CountryID], [CountryName], [CountryCode]) VALUES (34, N'Bulgaria', N'BG        ')
INSERT [dbo].[Countrys] ([CountryID], [CountryName], [CountryCode]) VALUES (35, N'Burkina Faso', N'BF        ')
INSERT [dbo].[Countrys] ([CountryID], [CountryName], [CountryCode]) VALUES (36, N'Burundi', N'BI        ')
INSERT [dbo].[Countrys] ([CountryID], [CountryName], [CountryCode]) VALUES (37, N'Cambodia', N'KH        ')
INSERT [dbo].[Countrys] ([CountryID], [CountryName], [CountryCode]) VALUES (38, N'Cameroon', N'CM        ')
INSERT [dbo].[Countrys] ([CountryID], [CountryName], [CountryCode]) VALUES (39, N'Canada', N'CA        ')
INSERT [dbo].[Countrys] ([CountryID], [CountryName], [CountryCode]) VALUES (40, N'Cape Verde', N'CV        ')
INSERT [dbo].[Countrys] ([CountryID], [CountryName], [CountryCode]) VALUES (41, N'Cayman Islands', N'KY        ')
INSERT [dbo].[Countrys] ([CountryID], [CountryName], [CountryCode]) VALUES (42, N'Central African Republic', N'CF        ')
INSERT [dbo].[Countrys] ([CountryID], [CountryName], [CountryCode]) VALUES (43, N'Chad', N'TD        ')
INSERT [dbo].[Countrys] ([CountryID], [CountryName], [CountryCode]) VALUES (44, N'Chile', N'CL        ')
INSERT [dbo].[Countrys] ([CountryID], [CountryName], [CountryCode]) VALUES (45, N'China', N'CN        ')
INSERT [dbo].[Countrys] ([CountryID], [CountryName], [CountryCode]) VALUES (46, N'Christmas Island', N'CX        ')
INSERT [dbo].[Countrys] ([CountryID], [CountryName], [CountryCode]) VALUES (47, N'Cocos (Keeling) Islands', N'CC        ')
INSERT [dbo].[Countrys] ([CountryID], [CountryName], [CountryCode]) VALUES (48, N'Colombia', N'CO        ')
INSERT [dbo].[Countrys] ([CountryID], [CountryName], [CountryCode]) VALUES (49, N'Comoros', N'KM        ')
INSERT [dbo].[Countrys] ([CountryID], [CountryName], [CountryCode]) VALUES (50, N'Congo', N'CG        ')
INSERT [dbo].[Countrys] ([CountryID], [CountryName], [CountryCode]) VALUES (51, N'Congo, The Democratic Republic of the', N'CD        ')
INSERT [dbo].[Countrys] ([CountryID], [CountryName], [CountryCode]) VALUES (52, N'Cook Islands', N'CK        ')
INSERT [dbo].[Countrys] ([CountryID], [CountryName], [CountryCode]) VALUES (53, N'Costa Rica', N'CR        ')
INSERT [dbo].[Countrys] ([CountryID], [CountryName], [CountryCode]) VALUES (54, N'Cote D''Ivoire', N'CI        ')
INSERT [dbo].[Countrys] ([CountryID], [CountryName], [CountryCode]) VALUES (55, N'Croatia', N'HR        ')
INSERT [dbo].[Countrys] ([CountryID], [CountryName], [CountryCode]) VALUES (56, N'Cuba', N'CU        ')
INSERT [dbo].[Countrys] ([CountryID], [CountryName], [CountryCode]) VALUES (57, N'Cyprus', N'CY        ')
INSERT [dbo].[Countrys] ([CountryID], [CountryName], [CountryCode]) VALUES (58, N'Czech Republic', N'CZ        ')
INSERT [dbo].[Countrys] ([CountryID], [CountryName], [CountryCode]) VALUES (59, N'Denmark', N'DK        ')
INSERT [dbo].[Countrys] ([CountryID], [CountryName], [CountryCode]) VALUES (60, N'Djibouti', N'DJ        ')
INSERT [dbo].[Countrys] ([CountryID], [CountryName], [CountryCode]) VALUES (61, N'Dominica', N'DM        ')
INSERT [dbo].[Countrys] ([CountryID], [CountryName], [CountryCode]) VALUES (62, N'Dominican Republic', N'DO        ')
INSERT [dbo].[Countrys] ([CountryID], [CountryName], [CountryCode]) VALUES (63, N'East Timor', N'TP        ')
INSERT [dbo].[Countrys] ([CountryID], [CountryName], [CountryCode]) VALUES (64, N'Ecuador', N'EC        ')
INSERT [dbo].[Countrys] ([CountryID], [CountryName], [CountryCode]) VALUES (65, N'Egypt', N'EG        ')
INSERT [dbo].[Countrys] ([CountryID], [CountryName], [CountryCode]) VALUES (66, N'El Salvador', N'SV        ')
INSERT [dbo].[Countrys] ([CountryID], [CountryName], [CountryCode]) VALUES (67, N'Equatorial Guinea', N'GQ        ')
INSERT [dbo].[Countrys] ([CountryID], [CountryName], [CountryCode]) VALUES (68, N'Eritrea', N'ER        ')
INSERT [dbo].[Countrys] ([CountryID], [CountryName], [CountryCode]) VALUES (69, N'Estonia', N'EE        ')
INSERT [dbo].[Countrys] ([CountryID], [CountryName], [CountryCode]) VALUES (70, N'Ethiopia', N'ET        ')
INSERT [dbo].[Countrys] ([CountryID], [CountryName], [CountryCode]) VALUES (71, N'Europe', N'EU        ')
INSERT [dbo].[Countrys] ([CountryID], [CountryName], [CountryCode]) VALUES (72, N'Falkland Islands (Malvinas)', N'FK        ')
INSERT [dbo].[Countrys] ([CountryID], [CountryName], [CountryCode]) VALUES (73, N'Faroe Islands', N'FO        ')
INSERT [dbo].[Countrys] ([CountryID], [CountryName], [CountryCode]) VALUES (74, N'Fiji', N'FJ        ')
INSERT [dbo].[Countrys] ([CountryID], [CountryName], [CountryCode]) VALUES (75, N'Finland', N'FI        ')
INSERT [dbo].[Countrys] ([CountryID], [CountryName], [CountryCode]) VALUES (76, N'France', N'FR        ')
INSERT [dbo].[Countrys] ([CountryID], [CountryName], [CountryCode]) VALUES (77, N'France, Metropolitan', N'FX        ')
INSERT [dbo].[Countrys] ([CountryID], [CountryName], [CountryCode]) VALUES (78, N'French Guiana', N'GF        ')
INSERT [dbo].[Countrys] ([CountryID], [CountryName], [CountryCode]) VALUES (79, N'French Polynesia', N'PF        ')
INSERT [dbo].[Countrys] ([CountryID], [CountryName], [CountryCode]) VALUES (80, N'French Southern Territories', N'TF        ')
INSERT [dbo].[Countrys] ([CountryID], [CountryName], [CountryCode]) VALUES (81, N'Gabon', N'GA        ')
INSERT [dbo].[Countrys] ([CountryID], [CountryName], [CountryCode]) VALUES (82, N'Gambia', N'GM        ')
INSERT [dbo].[Countrys] ([CountryID], [CountryName], [CountryCode]) VALUES (83, N'Georgia', N'GE        ')
INSERT [dbo].[Countrys] ([CountryID], [CountryName], [CountryCode]) VALUES (84, N'Germany', N'DE        ')
INSERT [dbo].[Countrys] ([CountryID], [CountryName], [CountryCode]) VALUES (85, N'Ghana', N'GH        ')
INSERT [dbo].[Countrys] ([CountryID], [CountryName], [CountryCode]) VALUES (86, N'Gibraltar', N'GI        ')
INSERT [dbo].[Countrys] ([CountryID], [CountryName], [CountryCode]) VALUES (87, N'Greece', N'GR        ')
INSERT [dbo].[Countrys] ([CountryID], [CountryName], [CountryCode]) VALUES (88, N'Greenland', N'GL        ')
INSERT [dbo].[Countrys] ([CountryID], [CountryName], [CountryCode]) VALUES (89, N'Grenada', N'GD        ')
INSERT [dbo].[Countrys] ([CountryID], [CountryName], [CountryCode]) VALUES (90, N'Guadeloupe', N'GP        ')
INSERT [dbo].[Countrys] ([CountryID], [CountryName], [CountryCode]) VALUES (91, N'Guam', N'GU        ')
INSERT [dbo].[Countrys] ([CountryID], [CountryName], [CountryCode]) VALUES (92, N'Guatemala', N'GT        ')
INSERT [dbo].[Countrys] ([CountryID], [CountryName], [CountryCode]) VALUES (93, N'Guinea', N'GN        ')
INSERT [dbo].[Countrys] ([CountryID], [CountryName], [CountryCode]) VALUES (94, N'Guinea-Bissau', N'GW        ')
INSERT [dbo].[Countrys] ([CountryID], [CountryName], [CountryCode]) VALUES (95, N'Guyana', N'GY        ')
INSERT [dbo].[Countrys] ([CountryID], [CountryName], [CountryCode]) VALUES (96, N'Haiti', N'HT        ')
INSERT [dbo].[Countrys] ([CountryID], [CountryName], [CountryCode]) VALUES (97, N'Heard Island and McDonald Islands', N'HM        ')
INSERT [dbo].[Countrys] ([CountryID], [CountryName], [CountryCode]) VALUES (98, N'Holy See (Vatican City State)', N'VA        ')
INSERT [dbo].[Countrys] ([CountryID], [CountryName], [CountryCode]) VALUES (99, N'Honduras', N'HN        ')
GO
INSERT [dbo].[Countrys] ([CountryID], [CountryName], [CountryCode]) VALUES (100, N'Hong Kong', N'HK        ')
INSERT [dbo].[Countrys] ([CountryID], [CountryName], [CountryCode]) VALUES (101, N'Hungary', N'HU        ')
INSERT [dbo].[Countrys] ([CountryID], [CountryName], [CountryCode]) VALUES (102, N'Iceland', N'IS        ')
INSERT [dbo].[Countrys] ([CountryID], [CountryName], [CountryCode]) VALUES (103, N'India', N'IN        ')
INSERT [dbo].[Countrys] ([CountryID], [CountryName], [CountryCode]) VALUES (104, N'Indonesia', N'ID        ')
INSERT [dbo].[Countrys] ([CountryID], [CountryName], [CountryCode]) VALUES (105, N'Iran, Islamic Republic of', N'IR        ')
INSERT [dbo].[Countrys] ([CountryID], [CountryName], [CountryCode]) VALUES (106, N'Iraq', N'IQ        ')
INSERT [dbo].[Countrys] ([CountryID], [CountryName], [CountryCode]) VALUES (107, N'Ireland', N'IE        ')
INSERT [dbo].[Countrys] ([CountryID], [CountryName], [CountryCode]) VALUES (108, N'Israel', N'IL        ')
INSERT [dbo].[Countrys] ([CountryID], [CountryName], [CountryCode]) VALUES (109, N'Italy', N'IT        ')
INSERT [dbo].[Countrys] ([CountryID], [CountryName], [CountryCode]) VALUES (110, N'Jamaica', N'JM        ')
INSERT [dbo].[Countrys] ([CountryID], [CountryName], [CountryCode]) VALUES (111, N'Japan', N'JP        ')
INSERT [dbo].[Countrys] ([CountryID], [CountryName], [CountryCode]) VALUES (112, N'Jordan', N'JO        ')
INSERT [dbo].[Countrys] ([CountryID], [CountryName], [CountryCode]) VALUES (113, N'Kazakhstan', N'KZ        ')
INSERT [dbo].[Countrys] ([CountryID], [CountryName], [CountryCode]) VALUES (114, N'Kenya', N'KE        ')
INSERT [dbo].[Countrys] ([CountryID], [CountryName], [CountryCode]) VALUES (115, N'Kiribati', N'KI        ')
INSERT [dbo].[Countrys] ([CountryID], [CountryName], [CountryCode]) VALUES (116, N'Korea, Democratic People''s Republic of', N'KP        ')
INSERT [dbo].[Countrys] ([CountryID], [CountryName], [CountryCode]) VALUES (117, N'Korea, Republic of', N'KR        ')
INSERT [dbo].[Countrys] ([CountryID], [CountryName], [CountryCode]) VALUES (118, N'Kuwait', N'KW        ')
INSERT [dbo].[Countrys] ([CountryID], [CountryName], [CountryCode]) VALUES (119, N'Kyrgyzstan', N'KG        ')
INSERT [dbo].[Countrys] ([CountryID], [CountryName], [CountryCode]) VALUES (120, N'Lao People''s Democratic Republic', N'LA        ')
INSERT [dbo].[Countrys] ([CountryID], [CountryName], [CountryCode]) VALUES (121, N'Latvia', N'LV        ')
INSERT [dbo].[Countrys] ([CountryID], [CountryName], [CountryCode]) VALUES (122, N'Lebanon', N'LB        ')
INSERT [dbo].[Countrys] ([CountryID], [CountryName], [CountryCode]) VALUES (123, N'Lesotho', N'LS        ')
INSERT [dbo].[Countrys] ([CountryID], [CountryName], [CountryCode]) VALUES (124, N'Liberia', N'LR        ')
INSERT [dbo].[Countrys] ([CountryID], [CountryName], [CountryCode]) VALUES (125, N'Libyan Arab Jamahiriya', N'LY        ')
INSERT [dbo].[Countrys] ([CountryID], [CountryName], [CountryCode]) VALUES (126, N'Liechtenstein', N'LI        ')
INSERT [dbo].[Countrys] ([CountryID], [CountryName], [CountryCode]) VALUES (127, N'Lithuania', N'LT        ')
INSERT [dbo].[Countrys] ([CountryID], [CountryName], [CountryCode]) VALUES (128, N'Luxembourg', N'LU        ')
INSERT [dbo].[Countrys] ([CountryID], [CountryName], [CountryCode]) VALUES (129, N'Macau', N'MO        ')
INSERT [dbo].[Countrys] ([CountryID], [CountryName], [CountryCode]) VALUES (130, N'Macedonia', N'MK        ')
INSERT [dbo].[Countrys] ([CountryID], [CountryName], [CountryCode]) VALUES (131, N'Madagascar', N'MG        ')
INSERT [dbo].[Countrys] ([CountryID], [CountryName], [CountryCode]) VALUES (132, N'Malawi', N'MW        ')
INSERT [dbo].[Countrys] ([CountryID], [CountryName], [CountryCode]) VALUES (133, N'Malaysia', N'MY        ')
INSERT [dbo].[Countrys] ([CountryID], [CountryName], [CountryCode]) VALUES (134, N'Maldives', N'MV        ')
INSERT [dbo].[Countrys] ([CountryID], [CountryName], [CountryCode]) VALUES (135, N'Mali', N'ML        ')
INSERT [dbo].[Countrys] ([CountryID], [CountryName], [CountryCode]) VALUES (136, N'Malta', N'MT        ')
INSERT [dbo].[Countrys] ([CountryID], [CountryName], [CountryCode]) VALUES (137, N'Marshall Islands', N'MH        ')
INSERT [dbo].[Countrys] ([CountryID], [CountryName], [CountryCode]) VALUES (138, N'Martinique', N'MQ        ')
INSERT [dbo].[Countrys] ([CountryID], [CountryName], [CountryCode]) VALUES (139, N'Mauritania', N'MR        ')
INSERT [dbo].[Countrys] ([CountryID], [CountryName], [CountryCode]) VALUES (140, N'Mauritius', N'MU        ')
INSERT [dbo].[Countrys] ([CountryID], [CountryName], [CountryCode]) VALUES (141, N'Mayotte', N'YT        ')
INSERT [dbo].[Countrys] ([CountryID], [CountryName], [CountryCode]) VALUES (142, N'Mexico', N'MX        ')
INSERT [dbo].[Countrys] ([CountryID], [CountryName], [CountryCode]) VALUES (143, N'Micronesia, Federated States of', N'FM        ')
INSERT [dbo].[Countrys] ([CountryID], [CountryName], [CountryCode]) VALUES (144, N'Moldova, Republic of', N'MD        ')
INSERT [dbo].[Countrys] ([CountryID], [CountryName], [CountryCode]) VALUES (145, N'Monaco', N'MC        ')
INSERT [dbo].[Countrys] ([CountryID], [CountryName], [CountryCode]) VALUES (146, N'Mongolia', N'MN        ')
INSERT [dbo].[Countrys] ([CountryID], [CountryName], [CountryCode]) VALUES (147, N'Montserrat', N'MS        ')
INSERT [dbo].[Countrys] ([CountryID], [CountryName], [CountryCode]) VALUES (148, N'Morocco', N'MA        ')
INSERT [dbo].[Countrys] ([CountryID], [CountryName], [CountryCode]) VALUES (149, N'Mozambique', N'MZ        ')
INSERT [dbo].[Countrys] ([CountryID], [CountryName], [CountryCode]) VALUES (150, N'Myanmar', N'MM        ')
INSERT [dbo].[Countrys] ([CountryID], [CountryName], [CountryCode]) VALUES (151, N'Namibia', N'NA        ')
INSERT [dbo].[Countrys] ([CountryID], [CountryName], [CountryCode]) VALUES (152, N'Nauru', N'NR        ')
INSERT [dbo].[Countrys] ([CountryID], [CountryName], [CountryCode]) VALUES (153, N'Nepal', N'NP        ')
INSERT [dbo].[Countrys] ([CountryID], [CountryName], [CountryCode]) VALUES (154, N'Netherlands', N'NL        ')
INSERT [dbo].[Countrys] ([CountryID], [CountryName], [CountryCode]) VALUES (155, N'Netherlands Antilles', N'AN        ')
INSERT [dbo].[Countrys] ([CountryID], [CountryName], [CountryCode]) VALUES (156, N'New Caledonia', N'NC        ')
INSERT [dbo].[Countrys] ([CountryID], [CountryName], [CountryCode]) VALUES (157, N'New Zealand', N'NZ        ')
INSERT [dbo].[Countrys] ([CountryID], [CountryName], [CountryCode]) VALUES (158, N'Nicaragua', N'NI        ')
INSERT [dbo].[Countrys] ([CountryID], [CountryName], [CountryCode]) VALUES (159, N'Niger', N'NE        ')
INSERT [dbo].[Countrys] ([CountryID], [CountryName], [CountryCode]) VALUES (160, N'Nigeria', N'NG        ')
INSERT [dbo].[Countrys] ([CountryID], [CountryName], [CountryCode]) VALUES (161, N'Niue', N'NU        ')
INSERT [dbo].[Countrys] ([CountryID], [CountryName], [CountryCode]) VALUES (162, N'Norfolk Island', N'NF        ')
INSERT [dbo].[Countrys] ([CountryID], [CountryName], [CountryCode]) VALUES (163, N'Northern Mariana Islands', N'MP        ')
INSERT [dbo].[Countrys] ([CountryID], [CountryName], [CountryCode]) VALUES (164, N'Norway', N'NO        ')
INSERT [dbo].[Countrys] ([CountryID], [CountryName], [CountryCode]) VALUES (165, N'Oman', N'OM        ')
INSERT [dbo].[Countrys] ([CountryID], [CountryName], [CountryCode]) VALUES (166, N'Pakistan', N'PK        ')
INSERT [dbo].[Countrys] ([CountryID], [CountryName], [CountryCode]) VALUES (167, N'Palau', N'PW        ')
INSERT [dbo].[Countrys] ([CountryID], [CountryName], [CountryCode]) VALUES (168, N'Palestinian Territory', N'PS        ')
INSERT [dbo].[Countrys] ([CountryID], [CountryName], [CountryCode]) VALUES (169, N'Panama', N'PA        ')
INSERT [dbo].[Countrys] ([CountryID], [CountryName], [CountryCode]) VALUES (170, N'Papua New Guinea', N'PG        ')
INSERT [dbo].[Countrys] ([CountryID], [CountryName], [CountryCode]) VALUES (171, N'Paraguay', N'PY        ')
INSERT [dbo].[Countrys] ([CountryID], [CountryName], [CountryCode]) VALUES (172, N'Peru', N'PE        ')
INSERT [dbo].[Countrys] ([CountryID], [CountryName], [CountryCode]) VALUES (173, N'Philippines', N'PH        ')
INSERT [dbo].[Countrys] ([CountryID], [CountryName], [CountryCode]) VALUES (174, N'Pitcairn Islands', N'PN        ')
INSERT [dbo].[Countrys] ([CountryID], [CountryName], [CountryCode]) VALUES (175, N'Poland', N'PL        ')
INSERT [dbo].[Countrys] ([CountryID], [CountryName], [CountryCode]) VALUES (176, N'Portugal', N'PT        ')
INSERT [dbo].[Countrys] ([CountryID], [CountryName], [CountryCode]) VALUES (177, N'Puerto Rico', N'PR        ')
INSERT [dbo].[Countrys] ([CountryID], [CountryName], [CountryCode]) VALUES (178, N'Qatar', N'QA        ')
INSERT [dbo].[Countrys] ([CountryID], [CountryName], [CountryCode]) VALUES (179, N'Reunion', N'RE        ')
INSERT [dbo].[Countrys] ([CountryID], [CountryName], [CountryCode]) VALUES (180, N'Romania', N'RO        ')
INSERT [dbo].[Countrys] ([CountryID], [CountryName], [CountryCode]) VALUES (181, N'Russia', N'RU        ')
INSERT [dbo].[Countrys] ([CountryID], [CountryName], [CountryCode]) VALUES (182, N'Rwanda', N'RW        ')
INSERT [dbo].[Countrys] ([CountryID], [CountryName], [CountryCode]) VALUES (183, N'Saint Helena', N'SH        ')
INSERT [dbo].[Countrys] ([CountryID], [CountryName], [CountryCode]) VALUES (184, N'Saint Kitts and Nevis', N'KN        ')
INSERT [dbo].[Countrys] ([CountryID], [CountryName], [CountryCode]) VALUES (185, N'Saint Lucia', N'LC        ')
INSERT [dbo].[Countrys] ([CountryID], [CountryName], [CountryCode]) VALUES (186, N'Saint Pierre and Miquelon', N'PM        ')
INSERT [dbo].[Countrys] ([CountryID], [CountryName], [CountryCode]) VALUES (187, N'Saint Vincent and the Grenadines', N'VC        ')
INSERT [dbo].[Countrys] ([CountryID], [CountryName], [CountryCode]) VALUES (188, N'Samoa', N'WS        ')
INSERT [dbo].[Countrys] ([CountryID], [CountryName], [CountryCode]) VALUES (189, N'San Marino', N'SM        ')
INSERT [dbo].[Countrys] ([CountryID], [CountryName], [CountryCode]) VALUES (190, N'Sao Tome and Principe', N'ST        ')
INSERT [dbo].[Countrys] ([CountryID], [CountryName], [CountryCode]) VALUES (191, N'Saudi Arabia', N'SA        ')
INSERT [dbo].[Countrys] ([CountryID], [CountryName], [CountryCode]) VALUES (192, N'Senegal', N'SN        ')
INSERT [dbo].[Countrys] ([CountryID], [CountryName], [CountryCode]) VALUES (193, N'Serbia and Montenegro', N'CS        ')
INSERT [dbo].[Countrys] ([CountryID], [CountryName], [CountryCode]) VALUES (194, N'Seychelles', N'SC        ')
INSERT [dbo].[Countrys] ([CountryID], [CountryName], [CountryCode]) VALUES (195, N'Sierra Leone', N'SL        ')
INSERT [dbo].[Countrys] ([CountryID], [CountryName], [CountryCode]) VALUES (196, N'Singapore', N'SG        ')
INSERT [dbo].[Countrys] ([CountryID], [CountryName], [CountryCode]) VALUES (197, N'Slovakia', N'SK        ')
INSERT [dbo].[Countrys] ([CountryID], [CountryName], [CountryCode]) VALUES (198, N'Slovenia', N'SI        ')
INSERT [dbo].[Countrys] ([CountryID], [CountryName], [CountryCode]) VALUES (199, N'Solomon Islands', N'SB        ')
GO
INSERT [dbo].[Countrys] ([CountryID], [CountryName], [CountryCode]) VALUES (200, N'Somalia', N'SO        ')
INSERT [dbo].[Countrys] ([CountryID], [CountryName], [CountryCode]) VALUES (201, N'South Africa', N'ZA        ')
INSERT [dbo].[Countrys] ([CountryID], [CountryName], [CountryCode]) VALUES (202, N'South Georgia and the South Sandwich Islands', N'GS        ')
INSERT [dbo].[Countrys] ([CountryID], [CountryName], [CountryCode]) VALUES (203, N'Spain', N'ES        ')
INSERT [dbo].[Countrys] ([CountryID], [CountryName], [CountryCode]) VALUES (204, N'Sri Lanka', N'LK        ')
INSERT [dbo].[Countrys] ([CountryID], [CountryName], [CountryCode]) VALUES (205, N'Sudan', N'SD        ')
INSERT [dbo].[Countrys] ([CountryID], [CountryName], [CountryCode]) VALUES (206, N'Suriname', N'SR        ')
INSERT [dbo].[Countrys] ([CountryID], [CountryName], [CountryCode]) VALUES (207, N'Svalbard and Jan Mayen', N'SJ        ')
INSERT [dbo].[Countrys] ([CountryID], [CountryName], [CountryCode]) VALUES (208, N'Swaziland', N'SZ        ')
INSERT [dbo].[Countrys] ([CountryID], [CountryName], [CountryCode]) VALUES (209, N'Sweden', N'SE        ')
INSERT [dbo].[Countrys] ([CountryID], [CountryName], [CountryCode]) VALUES (210, N'Switzerland', N'CH        ')
INSERT [dbo].[Countrys] ([CountryID], [CountryName], [CountryCode]) VALUES (211, N'Syrian Arab Republic', N'SY        ')
INSERT [dbo].[Countrys] ([CountryID], [CountryName], [CountryCode]) VALUES (212, N'Taiwan', N'TW        ')
INSERT [dbo].[Countrys] ([CountryID], [CountryName], [CountryCode]) VALUES (213, N'Tajikistan', N'TJ        ')
INSERT [dbo].[Countrys] ([CountryID], [CountryName], [CountryCode]) VALUES (214, N'Tanzania, United Republic of', N'TZ        ')
INSERT [dbo].[Countrys] ([CountryID], [CountryName], [CountryCode]) VALUES (215, N'Thailand', N'TH        ')
INSERT [dbo].[Countrys] ([CountryID], [CountryName], [CountryCode]) VALUES (216, N'Togo', N'TG        ')
INSERT [dbo].[Countrys] ([CountryID], [CountryName], [CountryCode]) VALUES (217, N'Tokelau', N'TK        ')
INSERT [dbo].[Countrys] ([CountryID], [CountryName], [CountryCode]) VALUES (218, N'Tonga', N'TO        ')
INSERT [dbo].[Countrys] ([CountryID], [CountryName], [CountryCode]) VALUES (219, N'Trinidad and Tobago', N'TT        ')
INSERT [dbo].[Countrys] ([CountryID], [CountryName], [CountryCode]) VALUES (220, N'Tunisia', N'TN        ')
INSERT [dbo].[Countrys] ([CountryID], [CountryName], [CountryCode]) VALUES (221, N'Turkey', N'TR        ')
INSERT [dbo].[Countrys] ([CountryID], [CountryName], [CountryCode]) VALUES (222, N'Turkmenistan', N'TM        ')
INSERT [dbo].[Countrys] ([CountryID], [CountryName], [CountryCode]) VALUES (223, N'Turks and Caicos Islands', N'TC        ')
INSERT [dbo].[Countrys] ([CountryID], [CountryName], [CountryCode]) VALUES (224, N'Tuvalu', N'TV        ')
INSERT [dbo].[Countrys] ([CountryID], [CountryName], [CountryCode]) VALUES (225, N'Uganda', N'UG        ')
INSERT [dbo].[Countrys] ([CountryID], [CountryName], [CountryCode]) VALUES (226, N'Ukraine', N'UA        ')
INSERT [dbo].[Countrys] ([CountryID], [CountryName], [CountryCode]) VALUES (227, N'United Arab Emirates', N'AE        ')
INSERT [dbo].[Countrys] ([CountryID], [CountryName], [CountryCode]) VALUES (228, N'United Kingdom', N'GB        ')
INSERT [dbo].[Countrys] ([CountryID], [CountryName], [CountryCode]) VALUES (229, N'United States', N'US        ')
INSERT [dbo].[Countrys] ([CountryID], [CountryName], [CountryCode]) VALUES (230, N'United States Minor Outlying Islands', N'UM        ')
INSERT [dbo].[Countrys] ([CountryID], [CountryName], [CountryCode]) VALUES (231, N'Uruguay', N'UY        ')
INSERT [dbo].[Countrys] ([CountryID], [CountryName], [CountryCode]) VALUES (232, N'Uzbekistan', N'UZ        ')
INSERT [dbo].[Countrys] ([CountryID], [CountryName], [CountryCode]) VALUES (233, N'Vanuatu', N'VU        ')
INSERT [dbo].[Countrys] ([CountryID], [CountryName], [CountryCode]) VALUES (234, N'Venezuela', N'VE        ')
INSERT [dbo].[Countrys] ([CountryID], [CountryName], [CountryCode]) VALUES (235, N'Vietnam', N'VN        ')
INSERT [dbo].[Countrys] ([CountryID], [CountryName], [CountryCode]) VALUES (236, N'Virgin Islands, British', N'VG        ')
INSERT [dbo].[Countrys] ([CountryID], [CountryName], [CountryCode]) VALUES (237, N'Virgin Islands, U.S.', N'VI        ')
INSERT [dbo].[Countrys] ([CountryID], [CountryName], [CountryCode]) VALUES (238, N'Wallis and Futuna', N'WF        ')
INSERT [dbo].[Countrys] ([CountryID], [CountryName], [CountryCode]) VALUES (239, N'Western Sahara', N'EH        ')
INSERT [dbo].[Countrys] ([CountryID], [CountryName], [CountryCode]) VALUES (240, N'Yemen', N'YE        ')
INSERT [dbo].[Countrys] ([CountryID], [CountryName], [CountryCode]) VALUES (241, N'Zaire', N'ZR        ')
INSERT [dbo].[Countrys] ([CountryID], [CountryName], [CountryCode]) VALUES (242, N'Zambia', N'ZM        ')
INSERT [dbo].[Countrys] ([CountryID], [CountryName], [CountryCode]) VALUES (243, N'Zimbabwe', N'ZW        ')
SET IDENTITY_INSERT [dbo].[Countrys] OFF
GO
SET IDENTITY_INSERT [dbo].[Hotels] ON 

INSERT [dbo].[Hotels] ([HotelID], [HotelName], [Stars], [CountryName], [CountryCode]) VALUES (1, N'Hotel Artemide', 5, N'Spain', N'ES        ')
INSERT [dbo].[Hotels] ([HotelID], [HotelName], [Stars], [CountryName], [CountryCode]) VALUES (2, N'H10 Madison', 4, N'Finland', N'FI        ')
INSERT [dbo].[Hotels] ([HotelID], [HotelName], [Stars], [CountryName], [CountryCode]) VALUES (3, N'A Room With A View', 3, N'Spain', N'ES        ')
INSERT [dbo].[Hotels] ([HotelID], [HotelName], [Stars], [CountryName], [CountryCode]) VALUES (4, N'Hotel Rec Barcelona', 5, N'Spain', N'ES        ')
INSERT [dbo].[Hotels] ([HotelID], [HotelName], [Stars], [CountryName], [CountryCode]) VALUES (5, N'Aydinli Cave Hotel', 2, N'Spain', N'ES        ')
INSERT [dbo].[Hotels] ([HotelID], [HotelName], [Stars], [CountryName], [CountryCode]) VALUES (6, N'Titanic Business Kartal', 3, N'Spain', N'ES        ')
INSERT [dbo].[Hotels] ([HotelID], [HotelName], [Stars], [CountryName], [CountryCode]) VALUES (7, N'Amber Design Residence', 3, N'Finland', N'FI        ')
INSERT [dbo].[Hotels] ([HotelID], [HotelName], [Stars], [CountryName], [CountryCode]) VALUES (8, N'Hotel Al Ponte Mocenigo', 5, N'Russia', N'RU        ')
INSERT [dbo].[Hotels] ([HotelID], [HotelName], [Stars], [CountryName], [CountryCode]) VALUES (9, N'La Cachette', 4, N'Russia', N'RU        ')
INSERT [dbo].[Hotels] ([HotelID], [HotelName], [Stars], [CountryName], [CountryCode]) VALUES (10, N'Celsus 8outique Hotel', 3, N'United Kingdom', N'GB        ')
INSERT [dbo].[Hotels] ([HotelID], [HotelName], [Stars], [CountryName], [CountryCode]) VALUES (11, N'Ashford Castle', 2, N'Russia', N'RU        ')
INSERT [dbo].[Hotels] ([HotelID], [HotelName], [Stars], [CountryName], [CountryCode]) VALUES (12, N'Agarta Cave Hotel', 5, N'United Kingdom', N'GB        ')
INSERT [dbo].[Hotels] ([HotelID], [HotelName], [Stars], [CountryName], [CountryCode]) VALUES (13, N'Sofitel Grand Sopot', 5, N'Finland', N'FI        ')
INSERT [dbo].[Hotels] ([HotelID], [HotelName], [Stars], [CountryName], [CountryCode]) VALUES (14, N'Grand Resort Bad Ragaz', 4, N'Russia', N'RU        ')
INSERT [dbo].[Hotels] ([HotelID], [HotelName], [Stars], [CountryName], [CountryCode]) VALUES (15, N'Kelebek Special Cave Hotel', 5, N'United Kingdom', N'GB        ')
INSERT [dbo].[Hotels] ([HotelID], [HotelName], [Stars], [CountryName], [CountryCode]) VALUES (16, N'A Room With A View', 3, N'United Kingdom', N'GB        ')
INSERT [dbo].[Hotels] ([HotelID], [HotelName], [Stars], [CountryName], [CountryCode]) VALUES (17, N'Aren Cave Hotel & Art Gallery', 5, N'Georgia', N'GE        ')
INSERT [dbo].[Hotels] ([HotelID], [HotelName], [Stars], [CountryName], [CountryCode]) VALUES (18, N'Castle Hotel Auf Schoenburg', 3, N'Georgia', N'GE        ')
INSERT [dbo].[Hotels] ([HotelID], [HotelName], [Stars], [CountryName], [CountryCode]) VALUES (19, N'Lawton & Lauriston Court Hotel', 5, N'United Kingdom', N'GB        ')
INSERT [dbo].[Hotels] ([HotelID], [HotelName], [Stars], [CountryName], [CountryCode]) VALUES (20, N'El if Hanim Hotel & Spa', 3, N'Russia', N'RU        ')
INSERT [dbo].[Hotels] ([HotelID], [HotelName], [Stars], [CountryName], [CountryCode]) VALUES (21, N'Boutique Hotel Sierra de Alicante', 3, N'Russia', N'RU        ')
INSERT [dbo].[Hotels] ([HotelID], [HotelName], [Stars], [CountryName], [CountryCode]) VALUES (22, N'Van der Valk Hotel Hoorn', 4, N'Russia', N'RU        ')
INSERT [dbo].[Hotels] ([HotelID], [HotelName], [Stars], [CountryName], [CountryCode]) VALUES (23, N'Up Hotel', 5, N'Russia', N'RU        ')
INSERT [dbo].[Hotels] ([HotelID], [HotelName], [Stars], [CountryName], [CountryCode]) VALUES (24, N'Dere Suites', 5, N'Finland', N'FI        ')
INSERT [dbo].[Hotels] ([HotelID], [HotelName], [Stars], [CountryName], [CountryCode]) VALUES (25, N'Park Dedeman Trabzon', 3, N'Russia', N'RU        ')
INSERT [dbo].[Hotels] ([HotelID], [HotelName], [Stars], [CountryName], [CountryCode]) VALUES (26, N'Duven Hotel', 5, N'Finland', N'FI        ')
INSERT [dbo].[Hotels] ([HotelID], [HotelName], [Stars], [CountryName], [CountryCode]) VALUES (27, N'Bandholm Hotel', 2, N'Georgia', N'GE        ')
INSERT [dbo].[Hotels] ([HotelID], [HotelName], [Stars], [CountryName], [CountryCode]) VALUES (28, N'Boutique Hotel El Cresol', 4, N'Croatia', N'HR        ')
INSERT [dbo].[Hotels] ([HotelID], [HotelName], [Stars], [CountryName], [CountryCode]) VALUES (29, N'Perimasali Cave Hotel - Cappadocia', 3, N'Croatia', N'HR        ')
INSERT [dbo].[Hotels] ([HotelID], [HotelName], [Stars], [CountryName], [CountryCode]) VALUES (30, N'Gul Konaklari -Sinasos Rose Mansio', 5, N'Croatia', N'HR        ')
SET IDENTITY_INSERT [dbo].[Hotels] OFF
GO
INSERT [dbo].[Role] ([id], [Title]) VALUES (1, N'Admin')
INSERT [dbo].[Role] ([id], [Title]) VALUES (2, N'User')
INSERT [dbo].[Role] ([id], [Title]) VALUES (3, N'Manager')
GO
INSERT [dbo].[Tours] ([TourID], [ImageTour], [TourName], [CountryCode], [TicketsCount], [Cost], [isActual], [TourType]) VALUES (1, N'/ToursPhoto/Болгарское наследие.png', N'Болгарское наследие', N'34
      ', 127, 35700, 1, N'Международный туризм
')
INSERT [dbo].[Tours] ([TourID], [ImageTour], [TourName], [CountryCode], [TicketsCount], [Cost], [isActual], [TourType]) VALUES (2, N'/ToursPhoto/Волшебный Восток.png', N'Волшебный Восток
', N'228
     ', 92, 77100, 1, N'Лечебно-оздоровительныетуры
')
INSERT [dbo].[Tours] ([TourID], [ImageTour], [TourName], [CountryCode], [TicketsCount], [Cost], [isActual], [TourType]) VALUES (3, N'/ToursPhoto/Город с большими амбициями.png', N'Город с большими амбициями
', N'84
      ', 72, 93300, 1, N'Пляжные туры
')
INSERT [dbo].[Tours] ([TourID], [ImageTour], [TourName], [CountryCode], [TicketsCount], [Cost], [isActual], [TourType]) VALUES (4, N'/ToursPhoto/Город четырех ворот.png', N'Город четырех ворот
', N'84
      ', 143, 72500, 1, N'Международный туризм
')
INSERT [dbo].[Tours] ([TourID], [ImageTour], [TourName], [CountryCode], [TicketsCount], [Cost], [isActual], [TourType]) VALUES (5, N'/ToursPhoto/Горячий отдых зимй и летов.png', N'Горячий отдых зимой и летом
', N'15
      ', 34, 31900, 0, N'Пляжные туры
')
INSERT [dbo].[Tours] ([TourID], [ImageTour], [TourName], [CountryCode], [TicketsCount], [Cost], [isActual], [TourType]) VALUES (6, N'/ToursPhoto/Древний Минск.png', N'Древний Минск
', N'21
      ', 43, 74900, 1, N'Международный туризм
')
INSERT [dbo].[Tours] ([TourID], [ImageTour], [TourName], [CountryCode], [TicketsCount], [Cost], [isActual], [TourType]) VALUES (7, N'/ToursPhoto/Жемчужина Татарстана.png', N'Жемчужина Татарстана
', N'181
     ', 224, 65100, 1, N'Экскурсионные туры
')
INSERT [dbo].[Tours] ([TourID], [ImageTour], [TourName], [CountryCode], [TicketsCount], [Cost], [isActual], [TourType]) VALUES (8, N'/ToursPhoto/Знакомьтесь. Амстердам''.png', N'Знакомьтесь. Амстердам
', N'154
     ', 283, 68300, 1, N'Обслуживание корпоративных клиентов по заказу
')
INSERT [dbo].[Tours] ([TourID], [ImageTour], [TourName], [CountryCode], [TicketsCount], [Cost], [isActual], [TourType]) VALUES (9, N'/ToursPhoto/Из Алании к загадочным пещерам Алтынбешик.png', N'Из Алании к загадочным пещерам Алтынбешик
', N'221
     ', 204, 55900, 1, N'Международный туризм
')
INSERT [dbo].[Tours] ([TourID], [ImageTour], [TourName], [CountryCode], [TicketsCount], [Cost], [isActual], [TourType]) VALUES (10, N'/ToursPhoto/Многоликий Сувон.png', N'Многоликий Сувон
', N'117
     ', 215, 62200, 1, N'Экскурсионные туры
')
INSERT [dbo].[Tours] ([TourID], [ImageTour], [TourName], [CountryCode], [TicketsCount], [Cost], [isActual], [TourType]) VALUES (11, N'/ToursPhoto/Москва поэтическая.png', N'Москва поэтическая
', N'181
     ', 30, 53200, 1, N'Культурно-историческиетуры
')
INSERT [dbo].[Tours] ([TourID], [ImageTour], [TourName], [CountryCode], [TicketsCount], [Cost], [isActual], [TourType]) VALUES (12, N'/ToursPhoto/Незабываемый Дели.png', N'Незабываемый Дели
', N'103
     ', 250, 22500, 1, N'Международный туризм
')
INSERT [dbo].[Tours] ([TourID], [ImageTour], [TourName], [CountryCode], [TicketsCount], [Cost], [isActual], [TourType]) VALUES (13, N'/ToursPhoto/Отдых на райском острове.png', N'Отдых на райском острове
', N'215
     ', 51, 30900, 0, N'Лечебно-оздоровительныетуры
')
INSERT [dbo].[Tours] ([TourID], [ImageTour], [TourName], [CountryCode], [TicketsCount], [Cost], [isActual], [TourType]) VALUES (14, N'/ToursPhoto/По старому Таллину.png', N'По старому Таллину
', N'69
      ', 60, 28800, 1, N'Лечебно-оздоровительныетуры
')
INSERT [dbo].[Tours] ([TourID], [ImageTour], [TourName], [CountryCode], [TicketsCount], [Cost], [isActual], [TourType]) VALUES (15, N'/ToursPhoto/Прекрасные острова Греции.png', N'Прекрасные острова Греции
', N'87
      ', 120, 53700, 0, N'Международный туризм
')
INSERT [dbo].[Tours] ([TourID], [ImageTour], [TourName], [CountryCode], [TicketsCount], [Cost], [isActual], [TourType]) VALUES (16, N'/ToursPhoto/Романтика белых ночей и разводных мостов.png', N'Романтика белых ночей и разводных мостов
', N'181
     ', 101, 54900, 1, N'Специализированные детские туры
')
INSERT [dbo].[Tours] ([TourID], [ImageTour], [TourName], [CountryCode], [TicketsCount], [Cost], [isActual], [TourType]) VALUES (17, N'/ToursPhoto/Свидание с Хельсинки.png', N'Свидание с Хельсинки
', N'75
      ', 161, 49100, 1, N'Экскурсионные туры
')
INSERT [dbo].[Tours] ([TourID], [ImageTour], [TourName], [CountryCode], [TicketsCount], [Cost], [isActual], [TourType]) VALUES (18, N'/ToursPhoto/Сердце Ирана.png', N'Сердце Ирана
', N'106
     ', 99, 71400, 1, N'Обслуживание корпоративных клиентов по заказу
')
INSERT [dbo].[Tours] ([TourID], [ImageTour], [TourName], [CountryCode], [TicketsCount], [Cost], [isActual], [TourType]) VALUES (19, N'/ToursPhoto/Сердце Северной Карелии.png', N'Сердце Северной Карелии
', N'75
      ', 25, 62000, 1, N'Обслуживание корпоративных клиентов по заказу
')
INSERT [dbo].[Tours] ([TourID], [ImageTour], [TourName], [CountryCode], [TicketsCount], [Cost], [isActual], [TourType]) VALUES (20, N'/ToursPhoto/Старый город.png', N'Старый город
', N'209
     ', 38, 25600, 1, N'Внутренний туризм
')
INSERT [dbo].[Tours] ([TourID], [ImageTour], [TourName], [CountryCode], [TicketsCount], [Cost], [isActual], [TourType]) VALUES (21, N'/ToursPhoto/Столица страны Утренней Свежести.png', N'Столица страны Утренней Свежести
', N'117
     ', 292, 27600, 1, N'Экскурсионные туры
')
INSERT [dbo].[Tours] ([TourID], [ImageTour], [TourName], [CountryCode], [TicketsCount], [Cost], [isActual], [TourType]) VALUES (22, N'/ToursPhoto/Страна идеальной гармонии.png', N'Страна идеальной гармонии
', N'45
      ', 223, 28700, 1, N'Культурно-историческиетуры
')
INSERT [dbo].[Tours] ([TourID], [ImageTour], [TourName], [CountryCode], [TicketsCount], [Cost], [isActual], [TourType]) VALUES (23, N'/ToursPhoto/Страна удивительных контрастов.png', N'Страна удивительных контрастов
', N'234
     ', 286, 50900, 0, N'Международный туризм
')
INSERT [dbo].[Tours] ([TourID], [ImageTour], [TourName], [CountryCode], [TicketsCount], [Cost], [isActual], [TourType]) VALUES (24, N'/ToursPhoto/Урбанистическая Бразилия.png', N'Урбанистическая Бразилия
', N'31
      ', 22, 80900, 1, N'Экскурсионные туры
')
INSERT [dbo].[Tours] ([TourID], [ImageTour], [TourName], [CountryCode], [TicketsCount], [Cost], [isActual], [TourType]) VALUES (25, N'/ToursPhoto/Финская крепость.png', N'Финская крепость
', N'75
      ', 115, 70700, 1, N'Международный туризм
')
INSERT [dbo].[Tours] ([TourID], [ImageTour], [TourName], [CountryCode], [TicketsCount], [Cost], [isActual], [TourType]) VALUES (26, N'/ToursPhoto/Финский романтизм.png', N'Финский романтизм 
', N'75
      ', 289, 93600, 1, N'Экскурсионные туры
')
GO
INSERT [dbo].[TourTypes] ([TourTypeID], [TypeName]) VALUES (1, N'Международный туризм')
INSERT [dbo].[TourTypes] ([TourTypeID], [TypeName]) VALUES (2, N'Лечебно-оздоровительные туры')
INSERT [dbo].[TourTypes] ([TourTypeID], [TypeName]) VALUES (3, N'Пляжные туры')
INSERT [dbo].[TourTypes] ([TourTypeID], [TypeName]) VALUES (4, N'Экскурсионные туры')
INSERT [dbo].[TourTypes] ([TourTypeID], [TypeName]) VALUES (5, N'Обслуживание корпоративных клиентов по заказу')
INSERT [dbo].[TourTypes] ([TourTypeID], [TypeName]) VALUES (6, N'Культурно-исторические туры')
INSERT [dbo].[TourTypes] ([TourTypeID], [TypeName]) VALUES (7, N'Специализированные детские туры')
INSERT [dbo].[TourTypes] ([TourTypeID], [TypeName]) VALUES (8, N'Внутренний туризм')
INSERT [dbo].[TourTypes] ([TourTypeID], [TypeName]) VALUES (9, N'Горнолыжные курорты')
GO
INSERT [dbo].[User] ([ID], [login], [RoleID], [Password]) VALUES (1, N'Admin', 1, N'12345')
INSERT [dbo].[User] ([ID], [login], [RoleID], [Password]) VALUES (2, N'User1', 2, N'11111')
INSERT [dbo].[User] ([ID], [login], [RoleID], [Password]) VALUES (3, N'Starshii', 3, N'123456789')
GO
ALTER TABLE [dbo].[Role]  WITH CHECK ADD  CONSTRAINT [FK_Role_User] FOREIGN KEY([id])
REFERENCES [dbo].[User] ([ID])
GO
ALTER TABLE [dbo].[Role] CHECK CONSTRAINT [FK_Role_User]
GO
USE [master]
GO
ALTER DATABASE [TourAgencyMD] SET  READ_WRITE 
GO
