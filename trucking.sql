-- phpMyAdmin SQL Dump
-- version 3.4.5
-- http://www.phpmyadmin.net
--
-- Client: localhost
-- Généré le : Mar 29 Novembre 2016 à 02:44
-- Version du serveur: 5.5.16
-- Version de PHP: 5.3.8

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données: `trucking`
--

-- --------------------------------------------------------

--
-- Structure de la table `chargement`
--

CREATE TABLE IF NOT EXISTS `chargement` (
  `id_load` int(255) NOT NULL AUTO_INCREMENT,
  `nom_compagnie` varchar(255) NOT NULL,
  `pua` varchar(255) NOT NULL,
  `doa` varchar(255) NOT NULL,
  `amount` int(255) NOT NULL,
  `puc` varchar(255) NOT NULL,
  `doc` varchar(255) NOT NULL,
  `statut_load` varchar(255) NOT NULL,
  `date_load` date NOT NULL,
  `truck_number` varchar(11) NOT NULL,
  `remark_load` text NOT NULL,
  `work_order` varchar(255) NOT NULL,
  `bol` varchar(255) NOT NULL,
  `num_invoice` int(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `load_number` varchar(255) NOT NULL,
  PRIMARY KEY (`id_load`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=37 ;

--
-- Contenu de la table `chargement`
--

INSERT INTO `chargement` (`id_load`, `nom_compagnie`, `pua`, `doa`, `amount`, `puc`, `doc`, `statut_load`, `date_load`, `truck_number`, `remark_load`, `work_order`, `bol`, `num_invoice`, `address`, `load_number`) VALUES
(35, 'booty booty transit', 'likeshore fire 1234 hurricane', '345 livingstine street usa', 1200, '2345645876', '3245676543', 'paid', '2016-11-28', 'mechico-345', 'no tarp for now', '3456', '', 0, '', '1234'),
(36, 'interac company truck', 'cvnv reoiuhreoieur 123 ''((', 'sdkusd sdiuhbis 435 677', 5000, '3457657687', '3453456543', 'unpaid', '2016-11-28', 'abi ruth-33', 'need  56 feets', '3450', '', 23000, '', '32458');

-- --------------------------------------------------------

--
-- Structure de la table `company`
--

CREATE TABLE IF NOT EXISTS `company` (
  `id_company` int(255) NOT NULL AUTO_INCREMENT,
  `nom_compagnie` varchar(255) NOT NULL,
  `mc_number` varchar(255) NOT NULL,
  `adresse` varchar(255) NOT NULL,
  `date_enregistrement` date NOT NULL,
  `company_city` varchar(255) NOT NULL,
  `fax` varchar(255) NOT NULL,
  `tel1` varchar(255) NOT NULL,
  `tel2` varchar(255) NOT NULL,
  PRIMARY KEY (`id_company`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=46 ;

--
-- Contenu de la table `company`
--

INSERT INTO `company` (`id_company`, `nom_compagnie`, `mc_number`, `adresse`, `date_enregistrement`, `company_city`, `fax`, `tel1`, `tel2`) VALUES
(1, 'phoenix petroleum sa', '34565432', 'av steinmetz 456', '2016-09-15', '', '', '', ''),
(5, 'ariel traveller', '345654367', 'ngousso hotel le paradis', '2016-09-15', 'conakry guinea', '34 34 34 34 34', '6547688767', '4345678888'),
(7, 'dszez', '23334433', 'ez"', '2016-09-15', '', '', '', ''),
(8, 'bouzzi gt transport', '321345678', 'hge cgdjsii', '2016-09-16', '', '', '', ''),
(14, 'bizzy team', '34435454', 'oakville gladeside av', '2016-09-19', '', '', '', ''),
(15, 'stuff snake transit', '345665453', 'skquare one av', '2016-09-19', '', '', '', ''),
(17, 'cuyfy uyguy', '99888888', 'oij', '2016-09-21', '', '', '', ''),
(18, 'hermann trucking', '4567788', 'oalville on', '2016-09-26', '', '', '', ''),
(19, 'iusdpÃ os', '434554556', 'birmingham palace', '2016-09-26', '', '', '', ''),
(20, 'esr totototo', '343546556', 'dsbiuds dsibufd', '2016-09-26', '', '', '', ''),
(21, 'ds rerere', '3434554564', 'dsiu fdoirfd', '2016-09-26', '', '', '', ''),
(22, 'momo sa', '123456677', 'mississauga ontario', '2016-10-02', '', '', '', ''),
(23, 'flintstone transport', '4356123', 'brampton 2345 hills street', '2016-10-03', '', '', '', ''),
(24, 'nnbbvvcc', '0987655', 'etobocoke 0989 dr', '2016-10-03', '', '', '', ''),
(25, 'brefteifo', '3425678', 'district of columbia', '2016-10-03', '', '', '', ''),
(26, 'kalida trans', '435789', '3245 gladeside avenue', '2016-10-03', '', '', '', ''),
(27, 'khali drive company', '543678909', 'bilon street drive', '2016-10-03', '', '', '', ''),
(28, 'muet transit', '5678932', 'fn gtir', '2016-10-03', '', '', '', ''),
(29, 'kossi industry', '34532', 'bloomberg street', '2016-10-04', '', '', '', ''),
(30, 'booty booty transit', '345632', 'etobicoke 4567 yile', '2016-10-04', '', '', '', ''),
(31, 'milllll', '34433434', 'kjufd fdkjuffekd', '2016-10-04', '', '', '', ''),
(32, 'boko haram', '098877777', 'vh vuy', '2016-10-04', '', '', '', ''),
(33, 'kinus', '43354', 'ojifdoijfd', '2016-10-04', '', '', '', ''),
(34, 'niska society', '4534433232', 'mill shd dr 45', '2016-10-07', '', '', '', ''),
(35, 'eleonor transit truck', '4532155677', 'spadina av 3456 etobicoke', '2016-10-07', 'toronto spadina', '4325679876', '65423467878', 'undefined'),
(36, 'migoo building', '456677654', 'vh dr 3453 hills street', '2016-10-07', 'alberta', '5436546765', '3456546787', 'undefined'),
(37, 'limbo messina', '4323434545445', 'mtrel rue hbert 4356', '2016-10-07', 'montreal', '4356765456', '5467657678', '4345677656'),
(38, 'soglo transition', '5456765433', 'cadjehoun 3456 rue memphis str', '2016-10-07', 'cotonou', '4356547678', '4345677654', ''),
(39, 'novicio', '343246788', 'gladeside av dundas west 567', '2016-11-02', 'oakville', '543 678 5435', '876 435 6578', ''),
(42, 'roscoe transport', '', '', '2016-11-02', '', '', '', ''),
(43, 'interac company truck', '345676754', 'gladeside av ', '2016-11-20', 'toronto', '', '', ''),
(44, 'berege sarr trans', '3455334422', 'gladeside av frida street', '2016-11-27', 'hampton', '345433333', '5435676545', ''),
(45, 'traffictech', '1111', '68 trass', '2016-11-28', 'oakville', '6868668', '77897', '');

-- --------------------------------------------------------

--
-- Structure de la table `dossier`
--

CREATE TABLE IF NOT EXISTS `dossier` (
  `id_dossier` int(255) NOT NULL AUTO_INCREMENT,
  `id_load` int(255) NOT NULL,
  `nom_fichier` varchar(255) NOT NULL,
  `chemin_fichier` varchar(255) NOT NULL,
  PRIMARY KEY (`id_dossier`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=16 ;

--
-- Contenu de la table `dossier`
--

INSERT INTO `dossier` (`id_dossier`, `id_load`, `nom_fichier`, `chemin_fichier`) VALUES
(11, 34, 'oigine', 'dÃ©pitget_surdite.pdf'),
(12, 30, 'confirmation of loading', 'cherubisme.pdf'),
(13, 30, 'custom invoice', 'Anatomie de l.doc'),
(14, 28, 'confirmation of loading', 'classification de ZIEGLER.pdf'),
(15, 36, 'nb', 'diapo fracture orbite.pdf');

-- --------------------------------------------------------

--
-- Structure de la table `driver`
--

CREATE TABLE IF NOT EXISTS `driver` (
  `id_driver` int(255) NOT NULL AUTO_INCREMENT,
  `nom_driver` varchar(255) NOT NULL,
  `phone_driver` varchar(255) NOT NULL,
  `passport_number` varchar(255) NOT NULL,
  `sexe` varchar(255) NOT NULL,
  `statut_driver` varchar(255) NOT NULL,
  `truck_number` varchar(255) NOT NULL,
  `driver_license` varchar(255) NOT NULL,
  `driver_comment` text NOT NULL,
  PRIMARY KEY (`id_driver`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=44 ;

--
-- Contenu de la table `driver`
--

INSERT INTO `driver` (`id_driver`, `nom_driver`, `phone_driver`, `passport_number`, `sexe`, `statut_driver`, `truck_number`, `driver_license`, `driver_comment`) VALUES
(11, 'loon marcus', '', '', 'male', '', '', '', ''),
(12, 'thomas nkono', '', '', '', '', '', '', ''),
(16, 'nigga', '', '', '', 'blacklisted', '', '', ''),
(17, 'moize toure ', '7658907678', '3214567890', 'male', 'blacklisted', '', '', ''),
(18, 'moliko ramzii', '33454545464', '33224555', 'male', 'blacklisted', '', '', ''),
(19, 'muiiiiikkjjhh yuguÃ¨', '09888', '098887', 'male', 'blacklisted', '', '', ''),
(20, 'plagil derland', '23434343', '4555644545', 'male', 'blacklisted', '', '', ''),
(21, 'nigoo', '7654325678', '99877665', 'male', 'blacklisted', '', '', ''),
(22, 'mechico', '3454434334', '234455543', 'male', 'blacklisted', '3454321678', '', ''),
(28, 'mankon leonard ciriak', '4356765456', '23456543', 'male', '', '', '', ''),
(30, 'nicolas remylson', '4325467654', '4324567', 'male', '', '', '', ''),
(31, 'milliam villeni', '3423212345', '3332234', 'male', '', '', '', ''),
(39, 'rostand feudja', '34345656', '34543456767654', 'male', '', '', '', ''),
(40, 'albert  kamga', '6476546789', '56789087', 'male', '', '', '', ''),
(41, 'tchialeu georges', '345 654 6789', '3456788543', 'male', '', '23456789', '213456765434456', ''),
(42, 'abi ruth', '234 546 7654', '234123456', 'male', '', '333224546', '0987896545', ''),
(43, 'hermann', '66688867', '8808088', 'female', '', '6544 ', '08U08089U', '');

-- --------------------------------------------------------

--
-- Structure de la table `invoice`
--

CREATE TABLE IF NOT EXISTS `invoice` (
  `id_invoice` int(255) NOT NULL AUTO_INCREMENT,
  `num_invoice` int(255) NOT NULL,
  PRIMARY KEY (`id_invoice`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Contenu de la table `invoice`
--

INSERT INTO `invoice` (`id_invoice`, `num_invoice`) VALUES
(1, 15);

-- --------------------------------------------------------

--
-- Structure de la table `membre`
--

CREATE TABLE IF NOT EXISTS `membre` (
  `id_membre` int(255) NOT NULL AUTO_INCREMENT,
  `login` varchar(255) NOT NULL,
  `passe` varchar(255) NOT NULL,
  `profil` varchar(255) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `photo` varchar(255) NOT NULL,
  PRIMARY KEY (`id_membre`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Contenu de la table `membre`
--

INSERT INTO `membre` (`id_membre`, `login`, `passe`, `profil`, `first_name`, `last_name`, `photo`) VALUES
(1, 'alkevino', 'alkevino', 'admin', '', '', ''),
(2, 'malikrossi', 'malikrossi', 'user', '', '', ''),
(3, 'nancy234', ',ancy', 'user', 'nabcy', 'cleo', ''),
(4, 'binoos', 'binoos', 'user', 'walkman', 'nativo', ''),
(5, 'koug86', 'koug86', 'user', 'Kougan ', 'jean marc', '');

-- --------------------------------------------------------

--
-- Structure de la table `observation`
--

CREATE TABLE IF NOT EXISTS `observation` (
  `id_observation` int(255) NOT NULL AUTO_INCREMENT,
  `id_compagnie` varchar(255) NOT NULL,
  `mc_number` int(255) NOT NULL,
  `nom_compagnie` varchar(255) NOT NULL,
  `remarque` varchar(3000) NOT NULL,
  `date_observation` date NOT NULL,
  `usermembre` varchar(255) NOT NULL,
  PRIMARY KEY (`id_observation`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=47 ;

--
-- Contenu de la table `observation`
--

INSERT INTO `observation` (`id_observation`, `id_compagnie`, `mc_number`, `nom_compagnie`, `remarque`, `date_observation`, `usermembre`) VALUES
(3, '8', 321345678, 'bouzzi gt transport', 'mauvais respect des clauses du contrat', '2016-09-22', ''),
(4, '7', 23334433, 'dszez', 'deze dsez"'''' ez''"', '2016-09-22', ''),
(5, '17', 99888888, 'cuyfy uyguy', 'p,roigjrpoÃ§gjtÃ§hjtÃ§hkyÃ ojkÃ ojÃ ykjÃ )jiÃ yikjopytkbfdopgjpoib,fdobfdiojrgdrgoijdsfroigjreoigjeroithniotjhoit', '2016-09-22', ''),
(6, '17', 99888888, 'cuyfy uyguy', 'voihrehugfroigh_eÃ§gefdsjdrigoerigoitnhoitrnhoitrdfs,ijgiogtionhtoihnotinhitnjoijnhoitfvdnjfinjgongtngoi', '2016-09-22', ''),
(7, '17', 99888888, 'cuyfy uyguy', 'nvuvfbiudsb ezyferujfdbnogingtihkhknknhkth,nk,nhv,fdkvnfdjfkjdnblkjf', '2016-09-22', ''),
(8, '17', 99888888, 'cuyfy uyguy', 'sfdiuhriueri fuhgneuirghnoiegergneirgnoiuehutihguthgniohgioeogrg,norgnngungjugbiugbiubgiubgiurbngurnegreregjrngjrngjkrengkjr', '2016-09-22', ''),
(9, '17', 99888888, 'cuyfy uyguy', 'beidkd flngkjintrgnegkjnb kjngejlngjntjnhtjnhutnhituhniuthngitnhoktrfklnng', '2016-09-22', ''),
(10, '17', 99888888, 'cuyfy uyguy', 'nufdsbvfdudufihguintfvnfdnunjtntjnhgjknhbd,gbngjbnttnht,hoit,hiot,hkt,', '2016-09-22', ''),
(11, '17', 99888888, 'cuyfy uyguy', 'mauvais load lors de la derniere observation', '2016-09-22', ''),
(12, '8', 321345678, 'bouzzi gt transport', '', '2016-09-22', ''),
(13, '17', 99888888, 'cuyfy uyguy', '', '2016-09-22', ''),
(14, '1', 34565432, 'phoenix petroleum sa', 'ping', '2016-09-22', ''),
(15, '1', 34565432, 'phoenix petroleum sa', 'switch', '2016-09-22', ''),
(16, '1', 34565432, 'phoenix petroleum sa', 'mingoo', '2016-09-22', ''),
(17, '17', 99888888, 'cuyfy uyguy', 'daccord', '2016-09-22', ''),
(18, '17', 99888888, 'cuyfy uyguy', 'nothing wrong for this transaction', '2016-09-23', ''),
(19, '14', 34435454, 'bizzy team', 'bad company', '2016-09-25', ''),
(20, '17', 99888888, 'cuyfy uyguy', 'bad load', '2016-09-26', ''),
(21, '1', 34565432, 'phoenix petroleum sa', 'gioretghoeirgoiroeirnhgoiernho', '2016-09-26', ''),
(22, '16', 32444334, 'blink', 'noiunhio', '2016-09-30', ''),
(23, '20', 343546556, 'esr totototo', 'oki', '2016-09-30', ''),
(24, '20', 343546556, 'esr totototo', ';iijfd', '2016-10-02', ''),
(25, '1', 34565432, 'phoenix petroleum sa', 'ras', '2016-10-03', ''),
(26, '1', 34565432, 'phoenix petroleum sa', 'ras a signaler pour le moment', '2016-10-07', ''),
(27, '1', 34565432, 'phoenix petroleum sa', 'mais on espere que pourra aller comme le mieu.compte tenue de toute les difficultÃ©s qu''on rencontre en interne mais on espere que le client pourra changer d''adresse', '2016-10-07', ''),
(28, '32', 98877777, 'boko haram', 'rien a signaler par ici', '2016-10-07', ''),
(29, '33', 43354, 'kinus', 'et puis quoi? meme', '2016-10-07', ''),
(30, '38', 2147483647, 'soglo transition', 'ras', '2016-10-08', ''),
(31, '38', 2147483647, 'soglo transition', 'milli', '2016-10-08', 'alkevino'),
(32, '38', 2147483647, 'soglo transition', 'lit', '2016-10-08', 'alkevino'),
(33, '32', 0, '', 'iufhfiudfhfdius dsiuhfdiudf', '2016-11-27', 'dfd'),
(34, '32', 2345, 'al', 'iufhfiudfhfdius dsiuhfdiudf', '2016-11-27', 'dfd'),
(35, '32', 2345, 'al', 'retorique mon ami', '2016-11-27', 'dfd'),
(36, '32', 2345, 'al', 'fori coco et le reste mon ami', '2016-11-27', 'dfd'),
(37, '5', 2345, 'al', 'je veux la suite', '2016-11-27', 'alkevino'),
(38, '5', 2345, 'al', 'sans connaitre la sauce', '2016-11-27', 'alkevino'),
(39, '5', 2345, 'al', 'et puis quoi', '2016-11-27', 'alkevino'),
(40, '5', 2345, 'al', 'vous vous prenez meme pour qui?', '2016-11-27', 'alkevino'),
(41, '5', 2345, 'al', 'bande de maquisarsd', '2016-11-27', 'alkevino'),
(42, '5', 2345, 'al', 'jkdshiuhdiuohfoiruheroifjhoirtjp(otj(porj(o^p''kt^(p''tk(''vgpoergkjtrpeogh,trmlh,ymhkjyp^tjh,ytÃ¹m;jythgrelp,grkthprt,hypohko-hrltk,hlmtyr,hmÃ¹lyt;jÃ¹ytjfkbntklrhntrlkh,trmlh,trmlh,tmlrh,mltr,hlmtr,hmltr,hmlt,h', '2016-11-27', 'alkevino'),
(43, '5', 2345, 'al', 'ndnvds*dsvnflrglknvrefnlvflknvlkfvfdslkngveroinrtknglkern blkfrb fdbkfdolkdf nbfd;l bfdfdmlb,fdlkbnfkldbn kfd nbfdgbv,mlkfgvnlk bfd b:;fd b', '2016-11-27', 'alkevino'),
(44, '5', 2345, 'al', 'd**dfdfddffdfd', '2016-11-27', 'alkevino'),
(45, '32', 2345, 'al', 'fori coco et le reste mon ami', '2016-11-27', 'dfd'),
(46, 'undefined', 2345, 'al', 'undefined', '2016-11-27', 'alkevino');

-- --------------------------------------------------------

--
-- Structure de la table `observation_driver`
--

CREATE TABLE IF NOT EXISTS `observation_driver` (
  `id_observation_driver` int(255) NOT NULL AUTO_INCREMENT,
  `id_driver` int(255) NOT NULL,
  `remarque_driver` text NOT NULL,
  `usermembre` varchar(255) NOT NULL,
  `date_observation_driver` date NOT NULL,
  PRIMARY KEY (`id_observation_driver`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=29 ;

--
-- Contenu de la table `observation_driver`
--

INSERT INTO `observation_driver` (`id_observation_driver`, `id_driver`, `remarque_driver`, `usermembre`, `date_observation_driver`) VALUES
(1, 16, 'nfefd sdsqds', 'alkevino', '2016-10-07'),
(2, 17, 'de rien', 'alkevino', '2016-10-07'),
(3, 17, 'j''attend le depart prochain', 'alkevino', '2016-10-07'),
(4, 17, 'idem bro', 'alkevino', '2016-10-07'),
(5, 17, 'by', 'alkevino', '2016-10-07'),
(6, 17, 'je n''en dit pas le contraire', 'alkevino', '2016-10-07'),
(7, 17, 'ndisuhdsiuhruheufrhreÃ§_uhjre_Ã§jureÃ Ã§jrÃ Ã§reijÃ Ã§treijkrkir)Ã tro=)rol=r)o=)plgldkhpkdpok,god,kh,gf,mgl;jfgdrokypotyk,potkpokyoÃ§utkÃ kjÃ§Ã kjthoijioytjgik,ngk,nlkm,hok,dtpokypgpkoj,ok,oiytd,jgpok,hdml,hglÃ¹m;,lmj;mlhg,kjlok;fÃ¹j;Ã¹mf;jÃ¹m;pf;go^rgktpyo,klhg,hlkg,hmlk,hgfmlgh,mlgf,lmh,;Ã¹mfl;hÃ¹m;Ã¹mt;hÃ¹mf;mgtÃ¹h;fÃ¹m;hfphk^p,;hgfmlg,fkt,hÃ m,tml,mlf;,gmlÃ¹n;Ã¹mgc;nhÃ¹m;gfÃ¹mj;fmj;lÃ¹mfl;^pfl^pkhftpkdhg  ,frypotk,', 'alkevino', '2016-10-07'),
(8, 22, 'sisi', 'alkevino', '2016-10-07'),
(9, 21, 'ce gars est trop impolie', 'alkevino', '2016-10-07'),
(10, 14, 'mouff', 'alkevino', '2016-10-08'),
(11, 22, 'driver pas poli ', 'malikrossi', '2016-10-11'),
(12, 17, 'cogeco en cours?', 'alkevino', '2016-11-26'),
(13, 40, '', 'alkevino', '2016-11-26'),
(14, 40, 'have to check everything', 'alkevino', '2016-11-26'),
(15, 31, 'tooo baddd', 'alkevino', '2016-11-26'),
(16, 41, '', 'alkevino', '2016-11-26'),
(17, 41, '', 'alkevino', '2016-11-26'),
(18, 41, '', 'alkevino', '2016-11-26'),
(19, 41, '', 'alkevino', '2016-11-26'),
(20, 41, '', 'alkevino', '2016-11-26'),
(21, 22, 'beaucoup de choses a revoir avec lui', 'alkevino', '2016-11-26'),
(22, 11, 'tfrtyrtyr', 'alkevino', '2016-11-27'),
(23, 17, 'cogeco en cours?', 'alkevino', '2016-11-27'),
(24, 0, 'undefined', 'alkevino', '2016-11-27'),
(25, 0, 'undefined', 'alkevino', '2016-11-27'),
(26, 0, 'undefined', 'alkevino', '2016-11-27'),
(27, 22, 'no tarp', 'alkevino', '2016-11-27'),
(28, 40, 'no new accordind to this driver', 'alkevino', '2016-11-27');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
