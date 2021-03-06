USE [master]
GO
/****** Object:  Database [FilmDb]    Script Date: 1/16/2022 5:34:19 PM ******/
CREATE DATABASE [FilmDb]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'FilmDb', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\FilmDb.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'FilmDb_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\FilmDb_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [FilmDb] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [FilmDb].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [FilmDb] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [FilmDb] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [FilmDb] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [FilmDb] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [FilmDb] SET ARITHABORT OFF 
GO
ALTER DATABASE [FilmDb] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [FilmDb] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [FilmDb] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [FilmDb] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [FilmDb] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [FilmDb] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [FilmDb] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [FilmDb] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [FilmDb] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [FilmDb] SET  ENABLE_BROKER 
GO
ALTER DATABASE [FilmDb] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [FilmDb] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [FilmDb] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [FilmDb] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [FilmDb] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [FilmDb] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [FilmDb] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [FilmDb] SET RECOVERY FULL 
GO
ALTER DATABASE [FilmDb] SET  MULTI_USER 
GO
ALTER DATABASE [FilmDb] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [FilmDb] SET DB_CHAINING OFF 
GO
ALTER DATABASE [FilmDb] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [FilmDb] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [FilmDb] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [FilmDb] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'FilmDb', N'ON'
GO
ALTER DATABASE [FilmDb] SET QUERY_STORE = OFF
GO
USE [FilmDb]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 1/16/2022 5:34:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Admins]    Script Date: 1/16/2022 5:34:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Admins](
	[AdminId] [int] IDENTITY(1,1) NOT NULL,
	[AdminMail] [nvarchar](max) NULL,
	[AdminPassword] [nvarchar](max) NULL,
 CONSTRAINT [PK_Admins] PRIMARY KEY CLUSTERED 
(
	[AdminId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[comments]    Script Date: 1/16/2022 5:34:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[comments](
	[commentid] [int] IDENTITY(1,1) NOT NULL,
	[filmid] [int] NOT NULL,
	[text] [nvarchar](max) NULL,
 CONSTRAINT [PK_comments] PRIMARY KEY CLUSTERED 
(
	[commentid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[films]    Script Date: 1/16/2022 5:34:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[films](
	[Filmid] [int] IDENTITY(1,1) NOT NULL,
	[FilmCatagory] [nvarchar](max) NULL,
	[FilmName] [nvarchar](max) NULL,
	[FilmCover] [nvarchar](max) NULL,
	[FilmDesciption] [nvarchar](max) NULL,
 CONSTRAINT [PK_films] PRIMARY KEY CLUSTERED 
(
	[Filmid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20211215103337_Mig1', N'5.0.9')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220112090335_Mig2', N'5.0.9')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220116121202_mig3', N'5.0.9')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220116130202_mig4', N'5.0.9')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220116130239_mig5', N'5.0.9')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220116130521_mig6', N'5.0.9')
GO
SET IDENTITY_INSERT [dbo].[Admins] ON 

INSERT [dbo].[Admins] ([AdminId], [AdminMail], [AdminPassword]) VALUES (1, N'admin', N'admin')
SET IDENTITY_INSERT [dbo].[Admins] OFF
GO
SET IDENTITY_INSERT [dbo].[comments] ON 

INSERT [dbo].[comments] ([commentid], [filmid], [text]) VALUES (5, 1, N'Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit..')
INSERT [dbo].[comments] ([commentid], [filmid], [text]) VALUES (6, 18, N'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.')
INSERT [dbo].[comments] ([commentid], [filmid], [text]) VALUES (7, 19, N'Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.')
INSERT [dbo].[comments] ([commentid], [filmid], [text]) VALUES (8, 20, N'Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.')
INSERT [dbo].[comments] ([commentid], [filmid], [text]) VALUES (9, 21, N'Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.')
INSERT [dbo].[comments] ([commentid], [filmid], [text]) VALUES (10, 22, N'Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.')
INSERT [dbo].[comments] ([commentid], [filmid], [text]) VALUES (11, 23, N'Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.')
INSERT [dbo].[comments] ([commentid], [filmid], [text]) VALUES (12, 24, N'Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.')
INSERT [dbo].[comments] ([commentid], [filmid], [text]) VALUES (13, 25, N'Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.')
INSERT [dbo].[comments] ([commentid], [filmid], [text]) VALUES (14, 26, N'Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.')
INSERT [dbo].[comments] ([commentid], [filmid], [text]) VALUES (15, 27, N'Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.')
INSERT [dbo].[comments] ([commentid], [filmid], [text]) VALUES (16, 28, N'Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.')
INSERT [dbo].[comments] ([commentid], [filmid], [text]) VALUES (17, 28, N'Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.')
INSERT [dbo].[comments] ([commentid], [filmid], [text]) VALUES (18, 29, N'Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.')
INSERT [dbo].[comments] ([commentid], [filmid], [text]) VALUES (19, 30, N'Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.')
INSERT [dbo].[comments] ([commentid], [filmid], [text]) VALUES (20, 31, N'Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.')
INSERT [dbo].[comments] ([commentid], [filmid], [text]) VALUES (21, 32, N'Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.')
INSERT [dbo].[comments] ([commentid], [filmid], [text]) VALUES (22, 33, N'Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.')
INSERT [dbo].[comments] ([commentid], [filmid], [text]) VALUES (23, 34, N'Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.')
INSERT [dbo].[comments] ([commentid], [filmid], [text]) VALUES (24, 35, N'Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.')
INSERT [dbo].[comments] ([commentid], [filmid], [text]) VALUES (25, 36, N'Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.')
INSERT [dbo].[comments] ([commentid], [filmid], [text]) VALUES (26, 37, N'Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.')
INSERT [dbo].[comments] ([commentid], [filmid], [text]) VALUES (27, 38, N'Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.')
INSERT [dbo].[comments] ([commentid], [filmid], [text]) VALUES (28, 39, N'Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.')
INSERT [dbo].[comments] ([commentid], [filmid], [text]) VALUES (29, 40, N'Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.')
INSERT [dbo].[comments] ([commentid], [filmid], [text]) VALUES (30, 41, N'Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.')
INSERT [dbo].[comments] ([commentid], [filmid], [text]) VALUES (31, 42, N'Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.')
INSERT [dbo].[comments] ([commentid], [filmid], [text]) VALUES (32, 43, N'Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.')
SET IDENTITY_INSERT [dbo].[comments] OFF
GO
SET IDENTITY_INSERT [dbo].[films] ON 

INSERT [dbo].[films] ([Filmid], [FilmCatagory], [FilmName], [FilmCover], [FilmDesciption]) VALUES (1, N'SCI-FI', N'Matrix 4', N'idMatrix.jpg', NULL)
INSERT [dbo].[films] ([Filmid], [FilmCatagory], [FilmName], [FilmCover], [FilmDesciption]) VALUES (18, N'Macera', N'Harry Potter 20th Anniversary: Return to Hogwarts (2022)', N'010a6b4d-47fc-4712-8269-b16205c2ba5d.png', N'HBO Max''te, Harry Potter ve Felsefe Taşı filminin 20. yılı şerefine tam adı Harry Potter 20th Anniversary: Return to Hogwarts olan özel bir retrospektif yayınlanacak. Bu özel buluşmada başta serinin ''''altın üçlüsü'''' Daniel Radcliffe, Rupert Grint ve Emma Watson olmak üzere sekiz filmlik Harry Potter serisinde yer alan oyuncular bir araya gelecekler. Serideki filmlere derinlemesine bir bakış sunacak olan retrospektif, oyuncularla ve film ekibiyle yapılan derinlemesine röportajlar içerecek ve izleyenleri, tüm zamanların en sevilen film serilerinden birine doğru büyülü bir yolculuğa çıkaracak.')
INSERT [dbo].[films] ([Filmid], [FilmCatagory], [FilmName], [FilmCover], [FilmDesciption]) VALUES (19, N'Macera', N'Örümcek-Adam: Eve Dönüş Yok', N'76a14afe-083f-4640-a2cd-7be0df18d9c7.png', N'Spider-Man: No Way Home, kimliği açığa çıkan Örümcek-Adam''ın, bu konuda Doctor Strange''den yardım istemesiyle gelişen çetrefilli olayları konu ediniyor. Örümcek-Adam’ın sinematik tarihinde ilk kez, mahallemizin sevimli kahramanı maskesiz ve normal hayatı ile Süper Kahraman olmanın yüksek risklerini birbirinden ayıramayacak durumda. Doktor Strange’den kendisine yardım etmesini istediğinde bu riskler daha da tehlikeli bir hal alır ve onu gerçekten Örümcek-Adam olmanın ne anlama geldiğini keşfetmeye zorlar.')
INSERT [dbo].[films] ([Filmid], [FilmCatagory], [FilmName], [FilmCover], [FilmDesciption]) VALUES (20, N'Macera', N'James Bond: Ölmek İçin Zaman Yok', N'a00e4b96-5b24-4cb3-8ecf-453713c99ef7.png', N'Efsanevi İngiliz ajanı James Bond artık aktif hizmetten ayrılmıştır ve Jamaika''da sakin bir hayatın tadını çıkarmaktadır. Ancak CIA''deki eski arkadaşı Felix Leiter yardım istemek için geldiğinde bu kişisel cenneti kısa ömürlü olur. Kaçırılan bir bilim adamını kurtarmayı içeren görev, ilk başta beklenenden çok daha tehlkeli bir planı ortaya çıkarır. Bu görev Bond''u, tehlikeli, yeni bir teknolojiyle donanmış gizemli bir kötü adamın izine götürecektir...')
INSERT [dbo].[films] ([Filmid], [FilmCatagory], [FilmName], [FilmCover], [FilmDesciption]) VALUES (21, N'Dram', N'Forsaken', N'8de7cfba-c405-4fa4-8614-5f1f59f70b69.png', N'Hayata küsmüş bir silahlı soyguncunun ona yabancılaşmış babasıyla arasını düzeltmesinden bahseden bu Western filminde Kiefer ve Donald Sutherland, baba-oğlu canlandıracaklar.')
INSERT [dbo].[films] ([Filmid], [FilmCatagory], [FilmName], [FilmCover], [FilmDesciption]) VALUES (22, N'Dram', N'Time Is Up (2021)', N'b419454b-ffab-480f-8781-20c86d760e60.png', N'Viven ve Roy, lise son sınıfta okuyan iki gençtir. Viven, fizik tutkunu olan başarılı bir öğrenciyken Roy''un oldukça sorunlu bir hayatı vardır. Beklenmedik bir olay ikisinin yollarının kesişmesine ve hayatlarının bambaşka bir hal almasına neden olur. >  Türkçe Altyazı Oyuncular Bella ThorneBella ThorneBenjamin MascoloBenjamin MascoloBonnie BaddooBonnie BaddooEmma Lo BiancoEmma Lo BiancoGiampiero JudicaGiampiero JudicaNikolay MossNikolay MossSebastiano PigazziSebastiano Pigazzi')
INSERT [dbo].[films] ([Filmid], [FilmCatagory], [FilmName], [FilmCover], [FilmDesciption]) VALUES (23, N'Dram', N'The Godfather (1972) Baba', N'a53dd3cf-e39f-400e-a0af-c325e1231787.png', N'Sicilya''dan göç eden Corleone ailesi, Amerika''da yerleşme çabalarını sürdürürken kendilerine kaba kuvvet kullanmaya kalkan ve yapmaya kalktıkları her işten haraç isteyen bir takım kimliği belirsiz kişilere karşı onlar da kaba kuvvet kullanmaya ve bunda da başarılı olmaya başlayınca kendilerini tahmin bile edemeyecekleri bir yaşantının içinde bulurlar. Bir taraftan son derece katı örf ve aile yaşantısı diğer tarafta ise acımasızca önlerine çıkanları yok etmeye başlayan Corleone ailesi bir müddet sonra Amerika''nın en korkulan mafya topluluğu haline gelmiştir. Kendileri her ne kadar mafya değil bir aile olduklarını söyleseler de.')
INSERT [dbo].[films] ([Filmid], [FilmCatagory], [FilmName], [FilmCover], [FilmDesciption]) VALUES (24, N'Dram', N'Schindler’s List (1993) Schindler''in Listesi', N'f4f71fbb-9990-41b0-9556-dcbb52df5f43.png', N'Film soykırım zamanında 1100''den fazla Yahudi''nin hayatını kurtaran Nazi Partisi''ne üye, savaş yanlısı Oscar SchindlerIn yaptıklarını konu alıyor. Oscar, girişimcidir. Asker yurttaşları için bir metal fabrikası kurar. Sermaye ve iş gücünü yahudilerden tedarik ederek gövde gösterisi yapmıştır. Bir noktadan sonra yahudilere yapılan haksızlığı içine sindiremez ve mücadele etmeye çalışır. Unutulmayacak bir hikayedir.')
INSERT [dbo].[films] ([Filmid], [FilmCatagory], [FilmName], [FilmCover], [FilmDesciption]) VALUES (25, N'SCI-FI', N'Interstellar (2014) Yıldızlararası', N'97bb2dc4-97aa-4e8a-91cd-99afe429feaf.png', N'Film, Kip S. Thorne''nun evrende ''solucan deliklerinin'' gerçekten mevcut olduğu ve bu sayede zamanda yolculuğun mümkün olabileceği teorisinden ilham alınarak yapılmıştır. Filmin hikayesi bir grup gözüpek kaşifin bu deliklerden birine gitmeye karar vermesi sonrasında gelişiyor. Bu bilinmeyen boyuta yapacakları yolculukta, beraber kalabilmek için verdikleri mücadele her bir tanesini ayrı zorluklarla karşılaştırıyor.')
INSERT [dbo].[films] ([Filmid], [FilmCatagory], [FilmName], [FilmCover], [FilmDesciption]) VALUES (26, N'SCI-FI', N'Alien (1979) Yaratık', N'48fc8544-0387-4494-84b2-b4eb6bf5e60e.png', N'Görevini tamamlayarak Dünya''ya dönmeye hazırlanan kargo gemisi Nostromo''nun beş erkek, iki kadın ve bir kediden oluşan mürettebatı özel kabinlerinde uykudadır. Bilgisayarların çevredeki bir gezegende yabancı bir yaşam türü tespit etmeleri üzerine uyandırılırlar. Yasalar, akıllı olabilecek her canlının araştırılmasını emretmektedir. Dallas (Tom Skerritt), Lambert (Veronica Cartwright) ve Kane''den (John Hurt) oluşan ekip, gezegene gittiğinde terk edilmiş bir uzay gemisiyle karşılaşır. Buldukları yumurta benzeri organizmaları incelerken, bir tanesi kırılır ve yengeç benzeri bir yaratık Kane''in yüzüne yapışır. Ekip gemiye döndüğünde Ripley (Sigourney Weaver), Kane''i içeri almakta tereddüt eder. Karantina kuralları çok açıktır. Fakat mürettebat, arkadaşlarını kurtarmak için bu sorumluluğu alır.')
INSERT [dbo].[films] ([Filmid], [FilmCatagory], [FilmName], [FilmCover], [FilmDesciption]) VALUES (27, N'Korku', N'The Shining (1980) Cinnet', N'7969c9f0-f3be-40ba-b65f-c84f6113886b.png', N'Sinema tarihinde her yaptığı filmin bir türün en başarılı örnekleri arasına girdiği yönetmen Stanley Kubrick''in korku-gerilim türünde yarattığı şaheserdir. Film Jack isimli bir yazar (Jack Nicholson), Wendy isimli karısı (Shelley Duvall) ve Danny isimli (Danny Lloyd) çocuğundan oluşan Torrance ailesinin yazarın romanını yazabilmesi için ıssız bir otelde inzivaya çekilmeleriyle başlar. Çocuğun telepatik güçleri onun otelin geçmişindeki rahatsız edici görüntüleri görmesine sebep olur. Yazar baba da aynı şekilde otelin hayaletleriyle diyaloğa geçmesiyle beraber yavaş yavaş çıldırma noktasına gelir.')
INSERT [dbo].[films] ([Filmid], [FilmCatagory], [FilmName], [FilmCover], [FilmDesciption]) VALUES (28, N'Korku', N'The Exorcist (1973) Şeytan', N'32d68398-b577-4243-ad44-795c35cd436e.png', N'Chris MacNeil , on iki yaşındaki kızı Regan ile Georgetown''daki evlerinde yaşamaktadır. Kocasından ayrılmış olan Chris , kızı Regan''ın doğumgünü için bir parti planlar. Chris , Regan''ın doğumgünü esnasında dengesiz davranışlar sergilemesi üzerine kızının bir hastalığa yakalanmış olabileceğini düşünür. Regan , bir çok doktora gösterilir ve bir çok kez tedavi edilmeye çalışılır. Fakat zaten kesin bir teşhis koyamayan doktorlar Regan''ı tedavi edemezler. Bu sürede küçük kızın şeytanca hareketleri günden güne artmaktadır. Regan''ı tedavi edemeyen doktorlar son çare olarak Chris''e şeytan çıkarma işlemini uygulayabilecek bir rahip bulmalarını tavsiye ederler. Chris , dindar olmamasına karşın , arkadaşı Burke Dennings''in boynu kırılarak kızının odasının camından atılması üzerine korkuları artar ve peder Damien Karras''tan yardım ister.')
INSERT [dbo].[films] ([Filmid], [FilmCatagory], [FilmName], [FilmCover], [FilmDesciption]) VALUES (29, N'Korku', N'3 Harfliler: Marid (2010)', N'e0bdaecd-de5e-4e0e-af6e-2f6bdc3c95b4.png', N'Arkın Aktaç’ın yönettiği ve Gülseven Yılmaz, Özgür Özberk, Ufuk Aşar ile Serap Üstün’ün oynadığı Üç Harfliler: Marid, 24 Eylül 2010’da Tiglon Film dağıtımıyla Dada Film tarafından vizyona çıkarılıyor. “Arapça orijinali Mısır, Kahire İskenderiye Kütüphanesi''nde bulunan İmam-ı Şibli’nin ünlü eseri Cinlerin Esrarı 880 yılında yazıldı. Kitabın Türkçe ilk baskısı 1979 yılında yayınlandığında büyük tartışmalara neden oldu. Kitapta yer alan “Cin Çağırma Metotları" bölüm, insanların cin çağırma çabaları nedeniyle 1980 yılında kitaptan çıkartıldı…” Ayla (Gülseven Yılmaz) kocası Serkan (Özgür Özberk) ile mutlu bir çifttir. Ayla 11 yaşında (Kayra Simur) öteki alemden gelen bir varlığın musallat olması ile kabus dolu bir üç gün yaşamıştır. O günlerden bu günlere en önemli koruyucusu olan muskasını önceki gün kaybettiği için kendini korumasız ve çaresiz hissetmektedir. Serkan yeni bir muska yazması ve Ayla’yı rahatlatması için bu konularda ismi bilinen İzzet Hoca’yı (Ufuk Aşar) o akşam eve davet eder. Akşam yakın arkadaşları Meltem (Serap Üstün) ve Cem de (Taner Ertürkler) geleceklerdir. Ayla’nın yeniden başlayan kabusları ile herkesin aynı gece Ayla ve Serkan’ın evinde yaşayacağı kabus dolu dakikalar öteki alemden gelen varlığın gücünü ve zalimliğini herkese gösterecektir.')
INSERT [dbo].[films] ([Filmid], [FilmCatagory], [FilmName], [FilmCover], [FilmDesciption]) VALUES (30, N'Western', N'Dances with Wolves (1990) Kurtlarla Dans', N'27576527-610d-4165-b917-24da4c7b1ed2.png', N'Teğmen Dunbar .Amerikan iç savaşından sonra güney Dakota''daki sınır karakoluna atanır.Devamlı sınır karakoluna gelen bir kurtla dost olur.Bu kurtla oyunlar oynarken onu Sioux kabilesinden yerliler görür ve ona kurtlarla dans eden adam adını takarlar.Dunbar''ın bu kabileyle tanışması sonucu politik fikirleri değişmeye başlar.Zaman geçtikçe bu barışcıl kızılderilileri dahada yakından tanıyarak dostluklarını ilerletir.Onlardan biri gibi davranmaya başlandığında aslında kızılderililerin büyüttüğü bir beyaz olan tek yumrukla direnen aşık olacak ve gelen tehlikeleri beraber gögüs gerecekler.')
INSERT [dbo].[films] ([Filmid], [FilmCatagory], [FilmName], [FilmCover], [FilmDesciption]) VALUES (31, N'Western', N'High Noon (1952) Kahraman Şerif', N'f3408917-49ba-4866-9318-e8e45b4245dd.png', N'Şerif Kane (Gary Cooper), öğlen treniyle gelecek olan ve kendisinden intikam almaya yeminli bir haydut çetesiyle karşı karışıya gelecektir. Aslında Şerif Kane''nin görevi sona ermiştir. Ama o kalmayı tencih eder. Küçük bir not; Tüm zamanların en iyi kötü adamı Lee Van Cleff''e filmde önemli bir rol teklif edilir. Fakat ünlü kartal profili burnunu ameliyatla düzeltmesi şart koşulur. Cleef teklifi kabul etmez ve film boyunca hiç konuşmadan ölümü bekleyen kötü adamlardan birini oynar.')
INSERT [dbo].[films] ([Filmid], [FilmCatagory], [FilmName], [FilmCover], [FilmDesciption]) VALUES (32, N'Western', N'Bacurau (2019)', N'535a7df3-4a25-43ae-880d-1dd80b7240cd.png', N'Anaerkil bir köy, bir cenaze ve köyün haritalardan silinmesine yol açan bir komplo… Yakın bir gelecekte, Brezilya kırsalında geçen gizemli ve gerilimli Bacurau türler arasında geziniyor. Yönetmenler, dışarıdakilerin küçümsediği, “yabancılar”ın tehdidi altındaki küçük bir topluluğun hikâyesini westernle bilimkurguya öykünen, mistik ve gerilimli atmosferini kaybetmeyen özgün bir tarzla aktarıyorlar. Filmin - anlatıcısı, Batılı belgeselci rolünü üstlenen kült oyuncu Udo Kier; başroldeki Sonia Braga ise Örümcek Kadının Öpücüğü dahil birçok filmde rol almıştı.')
INSERT [dbo].[films] ([Filmid], [FilmCatagory], [FilmName], [FilmCover], [FilmDesciption]) VALUES (33, N'Western', N'Unforgiven (1992) Affedilmeyen', N'0d8c3f65-4cdd-4548-bc85-dd19a018ffca.png', N'Eskiden acımasız, çılgın bir katil olan William Munny, eşinin vefatından sonra artık tüm zamanını küçük barakasında çocuklarına bakarak geçirmektedir. Ta ki, The Schofield Kid ismindeki genç onu ziyarete gelene kadar.. Big Whiskey kasabasındaki fahişelerin koyduğu ödülün haberini genç adamdan alan Munny ilk başta bu teklifi kabul etmez ama daha sonra fikrini değiştirecektir.')
INSERT [dbo].[films] ([Filmid], [FilmCatagory], [FilmName], [FilmCover], [FilmDesciption]) VALUES (34, N'Komedi', N'3 Idiots (2009) 3 Aptal', N'5af9aca6-a422-42b1-a601-ab49ccf5e86f.png', N'Hindistan''ın en iyi mühendislik okuluna başlayan öğrencilerin hayatını anlatıyor özet olarak. Sistemin daima yarış üzerine kurulu olduğu, herkesin en iyi olmaya çabaladığı bir okulda sistemi değiştirmeye çalışan bir öğrenci ve onun en yakın 2 arkadaşı. Başlarından geçenler, hayattan aslında ne istedikleri.Ranco karakterinin başrol oynadığı film dram ve komedi türünü en iyi şekilde harmanlayıp bize öğretici bir film olmakta.')
INSERT [dbo].[films] ([Filmid], [FilmCatagory], [FilmName], [FilmCover], [FilmDesciption]) VALUES (35, N'Komedi', N'City Lights (1931) Şehir Işıkları', N'c3ba6fcd-9cd0-4eb2-8044-e44a364ef5d2.png', N'İyi yürekli bir sokak serserisi, kör bir çiçek satıcısına aşık olur. Kıza kendisini zengin bir adam olarak tanıtır. Sonradan hayatını kurtardığı bir milyonerin ona arkadaşça davranıp sözler vermesinden cesaretlenir. Adamın kapısını aşındırıp, sevdiği kızın gözlerinin görmesi için gerekli ameliyat parasını ödünç alabileceğini sanır. Oysa varlıklı insanlar abartılı bir kibarlık içerisinde, ikiyüzlü bir yaşam sürmeye alışkındırlar.')
INSERT [dbo].[films] ([Filmid], [FilmCatagory], [FilmName], [FilmCover], [FilmDesciption]) VALUES (36, N'Komedi', N'Hilda and the Mountain King (2021) Hilda ve Dağ Kralı', N'bf90a9da-bb68-40b9-b43f-9ee91767f5c0.png', N'Hilda bir trolün vücudunda uyandığında, eve dönmek, tekrar insan olmak ve Trolberg şehrini kurtarmak için zekasını ve cesaretini kullanmalıdır.')
INSERT [dbo].[films] ([Filmid], [FilmCatagory], [FilmName], [FilmCover], [FilmDesciption]) VALUES (37, N'Komedi', N'Intouchables (2011) Can Dostum', N'95efa41b-712f-411f-9055-39a21af4af0e.png', N'El ve ayakları tutmayan ve bakıcıya ihtiyacı olan bir aristokrat daha önce bu işi yapmamış eski bir mahkum olan adamı işe alır.')
INSERT [dbo].[films] ([Filmid], [FilmCatagory], [FilmName], [FilmCover], [FilmDesciption]) VALUES (38, N'Crime', N'The Dark Knight (2008) Kara Şövalye', N'b835ba9d-f6e4-47dc-8431-6c708f26796d.png', N'"Bazı insanlar para gibi mantıklı şeyler aramazlar. Onları satın almak, korkutmak, onlarla anlaşmak ya da pazarlık etmek mümkün değildir. Bazı insanlar dünyanın yanıp kül olduğunu görmek isterler sadece.” Hit aksiyon filmi “Batman Begins/Batman Başlıyor”u izleyen devam filmi “The Dark Knight/Kara Şövalye” yönetmen Christopher Nolan ve Bruce Wayne/Batman rolündeki başrol oyuncusu Christian Bale’i tekrar bir araya getiriyor. Teğmen Jim Gordon’un ve yeni Bölge Savcısı Harvey Dent’in yardımını alan Batman, Gotham City’deki organize suçu tamamen yok etmek için harekete geçer. Üçlü ittifak başlangıçta etkili olur ancak kısa süre sonra kendilerini, yükselişteki bir suç dahisinin avı olarak bulurlar. Joker diye bilinen suçlu, Gotham’ı anarşiye boğar ve Kara Şövalye’yi, kahraman ve kanun dışı suç savaşçısı arasındaki ince çizgiyi geçmeye bir adım daha yaklaştırır.')
INSERT [dbo].[films] ([Filmid], [FilmCatagory], [FilmName], [FilmCover], [FilmDesciption]) VALUES (39, N'Crime', N'American History X (1998) Geçmişin Gölgesinde', N'3873a511-9187-41b3-82aa-679f6bdd394d.png', N'Derek Vinyard, odasında ve göğsünde Nazi amblemi bulunan; zenci düşmanı bir Nazi''dir. Kardeşi Danny ise, Derek kadar cesur ve atılgan olmasa da, abisi kadar ırkçı bir Nazi''dir. Zenciler tarafından öldürülen babası yüzünden nefreti dizginlenemeyen Derek, bir gece hayatını tümüyle değiştirecek olan bir suç işler.Derek Vinyard, artık bir katildir ve hapishaneye gönderilir. Hapishane ortamında Derek''in bilmediği kurallar geçmektedir ve genç adam şimdi bıçak sırtındadır. Zenci bir çamaşırcıyla arkadaş olan Derek, nefret ettiği siyah tenli adamların, psikolojisini altüst eden sapkın kurallarıyla tanışınca, inançları ve ''hayatta kalma arzusu'' arasında seçim yapmak zorunda kalacaktır.Öte yandan, kardeşi Danny, genç bir adam olmuş ve tıpkı abisi gibi ''acımaz bir ırkçı'' olarak yetişmektedir. İngiliz yönetmen Tony Kaye imzalı 1998 yapımı "American History X" filmi, çıktığı zamanlarda olay yarattı. Edward Norton''ın "Terminator 2: Judgment Day"in ''John Connor''ı Edward Furlong ile "American History X", seyircisini hayattan gerçek bir drama izlemiş gibi derinden etkiliyor.')
INSERT [dbo].[films] ([Filmid], [FilmCatagory], [FilmName], [FilmCover], [FilmDesciption]) VALUES (40, N'Crime', N'The Silence of the Lambs (1991) Kuzuların Sessizliği', N'4a385c79-20a9-4fc9-b8c7-7e9259ef52d9.png', N'Akademiyi başarıyla bitirmiş olan Clarice Starling artık genç bir FBI ajanıdır.Clarice, sapık bir katilin peşindedir.Katilin elinde bulunan bir kadını kurtarmaya çalışmaktadır.Bu katil, kurbanlarının derilerini yüzebilecek kadar psikopat bir sapıktır.Clarice, bu sapığa ulaşma amacıyla, bir başka psikopat olan ünlü Doktor Hannibal Lecter ile yakınlaşmak gerektiği yönünde bir plan yapar.Fakat, Clarice’in Lecter’dan alacağı bilgiler güvenini kazanmasına bağlıdır. Film, 1992 yılında 7 dalda Oscar’a aday oldu ve en iyi film ve en iyi senaryo uyarlaması dalında ödüle layık görüldü.Bu başarılı yapım, Hannibal Lecter serisinin 1.filmidir ve seride dört film daha yer almaktadır.Serinin diğer filmleri; The Silence of The Lambs(1991), Hannibal(2001), Red Dragon(2002), Hannibal Rising(2007) şeklinde sıralanmaktadır.')
INSERT [dbo].[films] ([Filmid], [FilmCatagory], [FilmName], [FilmCover], [FilmDesciption]) VALUES (41, N'Animasyon', N'Sen to Chihiro no Kamikakushi (2001) Ruhların Kaçışı', N'6fdff543-7965-4e0d-a990-1d97732046b1.png', N'Chihiro, hoşuna gitmeyen durumlardan sesli bir şekilde dile getirmekten çekinmeyen, biraz hırçın, az biraz da sabırsız, huysuz bir kızdır. Henüz on yaşında olan küçük kız, babasının iş değiştirmesiyle verilen taşınma kararına itaat etmek durumunda olduğunu bilse de her fırsatta anne ve babasını vazgeçirmeye çalışmaktan da geri durmaz. Yeni evlerine ulaşmak için uzun yolar kateden üçlü, önlerine çıkan tuhaf bir cisim ile yolculuklarına ara verirler ve etrafın güzelliğine kapılarak ilerlemeye başlarlar. Karanlık ve ürkütücü bir mağaradan geçen Chihiro ve ailesi, geçidin sonunda cennet gibi güzel bir manzarayla karşılaşırlar. Chihiro''nun korkmasına rağmen daha da ilerleyen aile üyeleri, kasabaya benzeyen bir yere girerler ve etraftaki tuhaf evleri, dükkanları incelemeye başlarlar.')
INSERT [dbo].[films] ([Filmid], [FilmCatagory], [FilmName], [FilmCover], [FilmDesciption]) VALUES (42, N'Animasyon', N'The Mitchells vs. the Machines (2021) Ailem Robotlara Karşı', N'5a6b0ad3-e289-4d09-b1d3-a435934036ed.png', N'Ülkeyi baştan başa kat ettikleri yolculukları robot kıyameti ile yarıda kesildi. Şimdi tüm insanlığın kaderi dünyanın en tuhaf ailesinin elinde. Her şey yaratıcı ve aykırı bir tip olan Katie Mitchell''ın hayallerindeki film okuluna kabul edilmesiyle başlar. Katie evden ayrılıp kendisini anlayan insanlarla tanışmaya can atarken doğa tutkunu babası bir fikirle çıkagelir. Aralarındaki bağı güçlendirmek için onu okula ailece götüreceklerdir. Böylece hep birlikte oldukça tuhaf ve zorlama bir yolculuğa çıkarlar. Her şey beklendiği kadar berbat geçerken aile kendini bir robot ayaklanmasının ortasında buluverir. Akıllı telefonlardan robot elektrikli süpürgelere ve şeytani Furby''lere kadar her şey gezegendeki insanları yakalamak için kullanılmaktadır. Şimdi insanlığı kurtarma görevi neşeli anne Linda, Katie''nin tuhaf erkek kardeşi Aaron, pofuduk köpek Monchi ve iki şapşal ama sempatik robot dâhil Mitchell ailesinin omuzlarındadır. "Ailem Robotlara Karşı" bizleri eşsiz kılan nitelikleri kabullenmek, teknolojiyle dolu dünyamızda insan olmanın anlamını kavramak ve beklenmedik olaylar yaşandığında bizler için en önemli kişilere sıkı sıkıya tutunmak üzerine bir film.')
INSERT [dbo].[films] ([Filmid], [FilmCatagory], [FilmName], [FilmCover], [FilmDesciption]) VALUES (43, N'Animasyon', N'Klaus (2019) Sihirli Plan', N'42dd6f43-283b-4f15-8541-1c8b3d173b6a.png', N'Postacı akademisinin en kötü öğrencisi Jesper kendini Kuzey Kutup Dairesi''nin kuzeyinde yer alan buzlarla kaplı bir adada görevlendirilmiş olarak bulur. Kavgalı adalılar, bırakın mektuplaşmayı birbirlerine selam bile vermemektedir. Jesper tam pes etmek üzereyken öğretmen Alva ile arkadaşlık kurar. Ayrıca Jesper, el yapımı oyuncaklarla dolu bir kulübede tek başına yaşayan Klaus ile tanışır. Smeerensburg kasabasında bir kez daha kahkahaların çınlamasını sağlayan bu umulmadık arkadaşlıklar; cömert komşuların, sihirli ilimlerin ve bacaya özenle asılan çorapların yer aldığı yeni bir gelenek yaratır.')
SET IDENTITY_INSERT [dbo].[films] OFF
GO
USE [master]
GO
ALTER DATABASE [FilmDb] SET  READ_WRITE 
GO
