-- phpMyAdmin SQL Dump
-- version 4.9.7deb1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Nov 03, 2020 at 09:08 PM
-- Server version: 10.3.24-MariaDB-2
-- PHP Version: 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `CESE`
--
CREATE DATABASE IF NOT EXISTS `CESE` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `CESE`;

-- --------------------------------------------------------

--
-- Table structure for table `Compose`
--

CREATE TABLE `Compose` (
  `COMPUND` int(11) NOT NULL,
  `ELEMENA` int(11) NOT NULL,
  `NA` int(11) NOT NULL,
  `ELEMENTB` int(11) DEFAULT NULL,
  `NB` int(11) DEFAULT NULL,
  `ELEMENTC` int(11) DEFAULT NULL,
  `NC` int(11) DEFAULT NULL,
  `ELEMENTD` int(11) DEFAULT NULL,
  `ND` int(11) DEFAULT NULL,
  `ELEMENTE` int(11) DEFAULT NULL,
  `NE` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `compounds`
--

CREATE TABLE `compounds` (
  `ID_COMPOUND` int(11) NOT NULL,
  `IUPAC_NAME` text NOT NULL,
  `COMMON_NAME` varchar(100) NOT NULL,
  `BOND` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `element`
--

CREATE TABLE `element` (
  `ID_ELEMENT` int(11) NOT NULL,
  `NAME` varchar(30) NOT NULL,
  `DISCOVERED_BY` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `element`
--

INSERT INTO `element` (`ID_ELEMENT`, `NAME`, `DISCOVERED_BY`) VALUES
(1, 'Hydrogen', 'Henry Cavendish'),
(2, 'Helium', 'Pierre Janssen'),
(3, 'Lithium', 'Johan August Arfwedson'),
(4, 'Beryllium', 'Louis Nicolas Vauquelin'),
(5, 'Boron', 'Joseph Louis Gay-Lussac'),
(6, 'Carbon', 'Ancient Egypt'),
(7, 'Nitrogen', 'Daniel Rutherford'),
(8, 'Oxygen', 'Carl Wilhelm Scheele'),
(9, 'Fluorine', 'André-Marie Ampère'),
(10, 'Neon', 'Morris Travers'),
(11, 'Sodium', 'Humphry Davy'),
(12, 'Magnesium', 'Joseph Black'),
(13, 'Aluminium', 'Hans Christian Ørsted'),
(14, 'Silicon', 'Jöns Jacob Berzelius'),
(15, 'Phosphorus', 'Hennig Brand'),
(16, 'Sulfur', 'Ancient china'),
(17, 'Chlorine', 'Carl Wilhelm Scheele'),
(18, 'Argon', 'Lord Rayleigh'),
(19, 'Potassium', 'Humphry Davy'),
(20, 'Calcium', 'Humphry Davy'),
(21, 'Scandium', 'Lars Fredrik Nilson'),
(22, 'Titanium', 'William Gregor'),
(23, 'Vanadium', 'Andrés Manuel del Río'),
(24, 'Chromium', 'Louis Nicolas Vauquelin'),
(25, 'Manganese', 'Torbern Olof Bergman'),
(26, 'Iron', '5000 BC'),
(27, 'Cobalt', 'Georg Brandt'),
(28, 'Nickel', 'Axel Fredrik Cronstedt'),
(29, 'Copper', 'Middle East'),
(30, 'Zinc', 'India'),
(31, 'Gallium', 'Lecoq de Boisbaudran'),
(32, 'Germanium', 'Clemens Winkler'),
(33, 'Arsenic', 'Bronze Age'),
(34, 'Selenium', 'Jöns Jakob Berzelius'),
(35, 'Bromine', 'Antoine Jérôme Balard'),
(36, 'Krypton', 'William Ramsay'),
(37, 'Rubidium', 'Robert Bunsen'),
(38, 'Strontium', 'William Cruickshank (chemist)'),
(39, 'Yttrium', 'Johan Gadolin'),
(40, 'Zirconium', 'Martin Heinrich Klaproth'),
(41, 'Niobium', 'Charles Hatchett'),
(42, 'Molybdenum', 'Carl Wilhelm Scheele'),
(43, 'Technetium', 'Emilio Segrè'),
(44, 'Ruthenium', 'Karl Ernst Claus'),
(45, 'Rhodium', 'William Hyde Wollaston'),
(46, 'Palladium', 'William Hyde Wollaston'),
(47, 'Silver', 'unknown, before 5000 BC'),
(48, 'Cadmium', 'Karl Samuel Leberecht Hermann'),
(49, 'Indium', 'Ferdinand Reich'),
(50, 'Tin', 'unknown, before 3500 BC'),
(51, 'Antimony', 'unknown, before 3000 BC'),
(52, 'Tellurium', 'Franz-Joseph Müller von Reichenstein'),
(53, 'Iodine', 'Bernard Courtois'),
(54, 'Xenon', 'William Ramsay'),
(55, 'Cesium', 'Robert Bunsen'),
(56, 'Barium', 'Carl Wilhelm Scheele'),
(57, 'Lanthanum', 'Carl Gustaf Mosander'),
(58, 'Cerium', 'Martin Heinrich Klaproth'),
(59, 'Praseodymium', 'Carl Auer von Welsbach'),
(60, 'Neodymium', 'Carl Auer von Welsbach'),
(61, 'Promethium', 'Chien Shiung Wu'),
(62, 'Samarium', 'Lecoq de Boisbaudran'),
(63, 'Europium', 'Eugène-Anatole Demarçay'),
(64, 'Gadolinium', 'Jean Charles Galissard de Marignac'),
(65, 'Terbium', 'Carl Gustaf Mosander'),
(66, 'Dysprosium', 'Lecoq de Boisbaudran'),
(67, 'Holmium', 'Marc Delafontaine'),
(68, 'Erbium', 'Carl Gustaf Mosander'),
(69, 'Thulium', 'Per Teodor Cleve'),
(70, 'Ytterbium', 'Jean Charles Galissard de Marignac'),
(71, 'Lutetium', 'Georges Urbain'),
(72, 'Hafnium', 'Dirk Coster'),
(73, 'Tantalum', 'Anders Gustaf Ekeberg'),
(74, 'Tungsten', 'Carl Wilhelm Scheele'),
(75, 'Rhenium', 'Masataka Ogawa'),
(76, 'Osmium', 'Smithson Tennant'),
(77, 'Iridium', 'Smithson Tennant'),
(78, 'Platinum', 'Antonio de Ulloa'),
(79, 'Gold', 'Middle East'),
(80, 'Mercury', 'unknown, before 2000 BCE'),
(81, 'Thallium', 'William Crookes'),
(82, 'Lead', 'Middle East'),
(83, 'Bismuth', 'Claude François Geoffroy'),
(84, 'Polonium', 'Pierre Curie'),
(85, 'Astatine', 'Dale R. Corson'),
(86, 'Radon', 'Friedrich Ernst Dorn'),
(87, 'Francium', 'Marguerite Perey'),
(88, 'Radium', 'Pierre Curie'),
(89, 'Actinium', 'Friedrich Oskar Giesel'),
(90, 'Thorium', 'Jöns Jakob Berzelius'),
(91, 'Protactinium', 'William Crookes'),
(92, 'Uranium', 'Martin Heinrich Klaproth'),
(93, 'Neptunium', 'Edwin McMillan'),
(94, 'Plutonium', 'Glenn T. Seaborg'),
(95, 'Americium', 'Glenn T. Seaborg'),
(96, 'Curium', 'Glenn T. Seaborg'),
(97, 'Berkelium', 'Lawrence Berkeley National Laboratory'),
(98, 'Californium', 'Lawrence Berkeley National Laboratory'),
(99, 'Einsteinium', 'Lawrence Berkeley National Laboratory'),
(100, 'Fermium', 'Lawrence Berkeley National Laboratory'),
(101, 'Mendelevium', 'Lawrence Berkeley National Laboratory'),
(102, 'Nobelium', 'Joint Institute for Nuclear Research'),
(103, 'Lawrencium', 'Lawrence Berkeley National Laboratory'),
(104, 'Rutherfordium', 'Joint Institute for Nuclear Research'),
(105, 'Dubnium', 'Joint Institute for Nuclear Research'),
(106, 'Seaborgium', 'Lawrence Berkeley National Laboratory'),
(107, 'Bohrium', 'Gesellschaft für Schwerionenforschung'),
(108, 'Hassium', 'Gesellschaft für Schwerionenforschung'),
(109, 'Meitnerium', 'Gesellschaft für Schwerionenforschung'),
(110, 'Darmstadtium', 'Gesellschaft für Schwerionenforschung'),
(111, 'Roentgenium', 'Gesellschaft für Schwerionenforschung'),
(112, 'Copernicium', 'Gesellschaft für Schwerionenforschung'),
(113, 'Nihonium', 'RIKEN'),
(114, 'Flerovium', 'Joint Institute for Nuclear Research'),
(115, 'Moscovium', 'Joint Institute for Nuclear Research'),
(116, 'Livermorium', 'Joint Institute for Nuclear Research'),
(117, 'Tennessine', 'Joint Institute for Nuclear Research'),
(118, 'Oganesson', 'Joint Institute for Nuclear Research'),
(119, 'Ununennium', 'GSI Helmholtz Centre for Heavy Ion Research');

-- --------------------------------------------------------

--
-- Table structure for table `heterogenous_mix`
--

CREATE TABLE `heterogenous_mix` (
  `ID_HEMIX` int(11) NOT NULL,
  `NAME` varchar(200) NOT NULL,
  `TYPE` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `homogenous_mix`
--

CREATE TABLE `homogenous_mix` (
  `ID_HOMIX` int(11) NOT NULL,
  `NAME` varchar(100) NOT NULL,
  `TYPE` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `matter`
--

CREATE TABLE `matter` (
  `ID_MATTER` int(11) NOT NULL,
  `NAME` varchar(30) DEFAULT NULL,
  `PHASE` varchar(30) NOT NULL,
  `SUMMARY` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `matter`
--

INSERT INTO `matter` (`ID_MATTER`, `NAME`, `PHASE`, `SUMMARY`) VALUES
(1, 'Hydrogen', 'Gas', 'explosive gas, the lightest element\r\n90% of atoms in the universe, sun, and stars, H2O, life\'s organic molecules'),
(2, 'Helium', 'Gas', 'An inert gas, second-lightest element\r\nnuclear fusion in sun and stars, balloons, lasers, supercold refrigerant'),
(3, 'Lithium', 'Solid', 'Lithium (from Greek:λίθος lithos, \"stone\") is a chemical element with the symbol Li and atomic number 3. It is a soft, silver-white metal belonging to the alkali metal group of chemical elements. Under standard conditions it is the lightest metal and the least dense solid element.'),
(4, 'Beryllium', 'Solid', 'Beryllium is a chemical element with symbol Be and atomic number 4. It is created through stellar nucleosynthesis and is a relatively rare element in the universe. It is a divalent element which occurs naturally only in combination with other elements in minerals.'),
(5, 'Boron', 'Solid', 'Boron is a metalloid chemical element with symbol B and atomic number 5. Produced entirely by cosmic ray spallation and supernovae and not by stellar nucleosynthesis, it is a low-abundance element in both the Solar system and the Earth\'s crust. Boron is concentrated on Earth by the water-solubility of its more common naturally occurring compounds, the borate minerals.'),
(6, 'Carbon', 'Solid', 'Carbon (from Latin:carbo \"coal\") is a chemical element with symbol C and atomic number 6. On the periodic table, it is the first (row 2) of six elements in column (group) 14, which have in common the composition of their outer electron shell. It is nonmetallic and tetravalent—making four electrons available to form covalent chemical bonds.'),
(7, 'Nitrogen', 'Gas', 'Nitrogen is a chemical element with symbol N and atomic number 7. It is the lightest pnictogen and at room temperature, it is a transparent, odorless diatomic gas. Nitrogen is a common element in the universe, estimated at about seventh in total abundance in the Milky Way and the Solar System.'),
(8, 'Oxygen', 'Gas', 'Oxygen is a chemical element with symbol O and atomic number 8. It is a member of the chalcogen group on the periodic table and is a highly reactive nonmetal and oxidizing agent that readily forms compounds (notably oxides) with most elements. By mass, oxygen is the third-most abundant element in the universe, after hydrogen and helium.'),
(9, 'Fluorine', 'Gas', 'Fluorine is a chemical element with symbol F and atomic number 9. It is the lightest halogen and exists as a highly toxic pale yellow diatomic gas at standard conditions. As the most electronegative element, it is extremely reactive:almost all other elements, including some noble gases, form compounds with fluorine.'),
(10, 'Neon', 'Gas', 'Neon is a chemical element with symbol Ne and atomic number 10. It is in group 18 (noble gases) of the periodic table. Neon is a colorless, odorless, inert monatomic gas under standard conditions, with about two-thirds the density of air.'),
(11, 'Sodium', 'Solid', 'Sodium /ˈsoʊdiəm/ is a chemical element with symbol Na (from Ancient Greek Νάτριο) and atomic number 11. It is a soft, silver-white, highly reactive metal. In the Periodic table it is in column 1 (alkali metals), and shares with the other six elements in that column that it has a single electron in its outer shell, which it readily donates, creating a positively charged atom - a cation.'),
(12, 'Magnesium', 'Solid', 'Magnesium is a chemical element with symbol Mg and atomic number 12. It is a shiny gray solid which bears a close physical resemblance to the other five elements in the second column (Group 2, or alkaline earth metals) of the periodic table:they each have the same electron configuration in their outer electron shell producing a similar crystal structure. Magnesium is the ninth most abundant element in the universe.'),
(13, 'Aluminium', 'Solid', 'Aluminium (or aluminum; see different endings) is a chemical element in the boron group with symbol Al and atomic number 13. It is a silvery-white, soft, nonmagnetic, ductile metal. Aluminium is the third most abundant element (after oxygen and silicon), and the most abundant metal, in the Earth\'s crust.'),
(14, 'Silicon', 'Solid', 'Silicon is a chemical element with symbol Si and atomic number 14. It is a tetravalent metalloid, more reactive than germanium, the metalloid directly below it in the table. Controversy about silicon\'s character dates to its discovery.'),
(15, 'Phosphorus', 'Solid', 'Phosphorus is a chemical element with symbol P and atomic number 15. As an element, phosphorus exists in two major forms—white phosphorus and red phosphorus—but due to its high reactivity, phosphorus is never found as a free element on Earth. Instead phosphorus-containing minerals are almost always present in their maximally oxidised state, as inorganic phosphate rocks.'),
(16, 'Sulfur', 'Solid', 'Sulfur or sulphur (see spelling differences) is a chemical element with symbol S and atomic number 16. It is an abundant, multivalent non-metal. Under normal conditions, sulfur atoms form cyclic octatomic molecules with chemical formula S8.'),
(17, 'Chlorine', 'Gas', 'Chlorine is a chemical element with symbol Cl and atomic number 17. It also has a relative atomic mass of 35.5. Chlorine is in the halogen group (17) and is the second lightest halogen following fluorine.'),
(18, 'Argon', 'Gas', 'Argon is a chemical element with symbol Ar and atomic number 18. It is in group 18 of the periodic table and is a noble gas. Argon is the third most common gas in the Earth\'s atmosphere, at 0.934% (9,340 ppmv), making it over twice as abundant as the next most common atmospheric gas, water vapor (which averages about 4000 ppmv, but varies greatly), and 23 times as abundant as the next most common non-condensing atmospheric gas, carbon dioxide (400 ppmv), and more than 500 times as abundant as the next most common noble gas, neon (18 ppmv).'),
(19, 'Potassium', 'Solid', 'Potassium is a chemical element with symbol K (derived from Neo-Latin, kalium) and atomic number 19. It was first isolated from potash, the ashes of plants, from which its name is derived. In the Periodic table, potassium is one of seven elements in column (group) 1 (alkali metals):they all have a single valence electron in their outer electron shell, which they readily give up to create an atom with a positive charge - a cation, and combine with anions to form salts.'),
(20, 'Calcium', 'Solid', 'Calcium is a chemical element with symbol Ca and atomic number 20. Calcium is a soft gray alkaline earth metal, fifth-most-abundant element by mass in the Earth\'s crust. The ion Ca2+ is also the fifth-most-abundant dissolved ion in seawater by both molarity and mass, after sodium, chloride, magnesium, and sulfate.'),
(21, 'Scandium', 'Solid', 'Scandium is a chemical element with symbol Sc and atomic number 21. A silvery-white metallic d-block element, it has historically been sometimes classified as a rare earth element, together with yttrium and the lanthanoids. It was discovered in 1879 by spectral analysis of the minerals euxenite and gadolinite from Scandinavia.'),
(22, 'Titanium', 'Solid', 'Titanium is a chemical element with symbol Ti and atomic number 22. It is a lustrous transition metal with a silver color, low density and high strength. It is highly resistant to corrosion in sea water, aqua regia and chlorine.'),
(23, 'Vanadium', 'Solid', 'Vanadium is a chemical element with symbol V and atomic number 23. It is a hard, silvery grey, ductile and malleable transition metal. The element is found only in chemically combined form in nature, but once isolated artificially, the formation of an oxide layer stabilizes the free metal somewhat against further oxidation.'),
(24, 'Chromium', 'Solid', 'Chromium is a chemical element with symbol Cr and atomic number 24. It is the first element in Group 6. It is a steely-gray, lustrous, hard and brittle metal which takes a high polish, resists tarnishing, and has a high melting point.'),
(25, 'Manganese', 'Solid', 'Manganese is a chemical element with symbol Mn and atomic number 25. It is not found as a free element in nature; it is often found in combination with iron, and in many minerals. Manganese is a metal with important industrial metal alloy uses, particularly in stainless steels.'),
(26, 'Iron', 'Solid', 'Iron is a chemical element with symbol Fe (from Latin:ferrum) and atomic number 26. It is a metal in the first transition series. It is by mass the most common element on Earth, forming much of Earth\'s outer and inner core.'),
(27, 'Cobalt', 'Solid', 'Cobalt is a chemical element with symbol Co and atomic number 27. Like nickel, cobalt in the Earth\'s crust is found only in chemically combined form, save for small deposits found in alloys of natural meteoric iron. The free element, produced by reductive smelting, is a hard, lustrous, silver-gray metal.'),
(28, 'Nickel', 'Solid', 'Nickel is a chemical element with symbol Ni and atomic number 28. It is a silvery-white lustrous metal with a slight golden tinge. Nickel belongs to the transition metals and is hard and ductile.'),
(29, 'Copper', 'Solid', 'Copper is a chemical element with symbol Cu (from Latin:cuprum) and atomic number 29. It is a soft, malleable and ductile metal with very high thermal and electrical conductivity. A freshly exposed surface of pure copper has a reddish-orange color.'),
(30, 'Zinc', 'Solid', 'Zinc, in commerce also spelter, is a chemical element with symbol Zn and atomic number 30. It is the first element of group 12 of the periodic table. In some respects zinc is chemically similar to magnesium:its ion is of similar size and its only common oxidation state is +2.'),
(31, 'Gallium', 'Solid', 'Gallium is a chemical element with symbol Ga and atomic number 31. Elemental gallium does not occur in free form in nature, but as the gallium(III) compounds that are in trace amounts in zinc ores and in bauxite. Gallium is a soft, silvery metal, and elemental gallium is a brittle solid at low temperatures, and melts at 29.76 °C (85.57 °F) (slightly above room temperature).'),
(32, 'Germanium', 'Solid', 'Germanium is a chemical element with symbol Ge and atomic number 32. It is a lustrous, hard, grayish-white metalloid in the carbon group, chemically similar to its group neighbors tin and silicon. Purified germanium is a semiconductor, with an appearance most similar to elemental silicon.'),
(33, 'Arsenic', 'Solid', 'Arsenic is a chemical element with symbol As and atomic number 33. Arsenic occurs in many minerals, usually in conjunction with sulfur and metals, and also as a pure elemental crystal. Arsenic is a metalloid.'),
(34, 'Selenium', 'Solid', 'Selenium is a chemical element with symbol Se and atomic number 34. It is a nonmetal with properties that are intermediate between those of its periodic table column-adjacent chalcogen elements sulfur and tellurium. It rarely occurs in its elemental state in nature, or as pure ore compounds.'),
(35, 'Bromine', 'Liquid', 'Bromine (from Ancient Greek:βρῶμος, brómos, meaning \"stench\") is a chemical element with symbol Br, and atomic number 35. It is a halogen. The element was isolated independently by two chemists, Carl Jacob Löwig and Antoine Jerome Balard, in 1825–1826.'),
(36, 'Krypton', 'Gas', 'Krypton (from Greek:κρυπτός kryptos \"the hidden one\") is a chemical element with symbol Kr and atomic number 36. It is a member of group 18 (noble gases) elements. A colorless, odorless, tasteless noble gas, krypton occurs in trace amounts in the atmosphere, is isolated by fractionally distilling liquefied air, and is often used with other rare gases in fluorescent lamps.'),
(37, 'Rubidium', 'Solid', 'Rubidium is a chemical element with symbol Rb and atomic number 37. Rubidium is a soft, silvery-white metallic element of the alkali metal group, with an atomic mass of 85.4678. Elemental rubidium is highly reactive, with properties similar to those of other alkali metals, such as very rapid oxidation in air.'),
(38, 'Strontium', 'Solid', 'Strontium is a chemical element with symbol Sr and atomic number 38. An alkaline earth metal, strontium is a soft silver-white or yellowish metallic element that is highly reactive chemically. The metal turns yellow when it is exposed to air.'),
(39, 'Yttrium', 'Solid', 'Yttrium is a chemical element with symbol Y and atomic number 39. It is a silvery-metallic transition metal chemically similar to the lanthanides and it has often been classified as a \"rare earth element\". Yttrium is almost always found combined with the lanthanides in rare earth minerals and is never found in nature as a free element.'),
(40, 'Zirconium', 'Solid', 'Zirconium is a chemical element with symbol Zr and atomic number 40. The name of zirconium is taken from the name of the mineral zircon, the most important source of zirconium. The word zircon comes from the Persian word zargun زرگون, meaning \"gold-colored\".'),
(41, 'Niobium', 'Solid', 'Niobium, formerly columbium, is a chemical element with symbol Nb (formerly Cb) and atomic number 41. It is a soft, grey, ductile transition metal, which is often found in the pyrochlore mineral, the main commercial source for niobium, and columbite. The name comes from Greek mythology:Niobe, daughter of Tantalus since it is so similar to tantalum.'),
(42, 'Molybdenum', 'Solid', 'Molybdenum is a chemical element with symbol Mo and atomic number 42. The name is from Neo-Latin molybdaenum, from Ancient Greek Μόλυβδος molybdos, meaning lead, since its ores were confused with lead ores. Molybdenum minerals have been known throughout history, but the element was discovered (in the sense of differentiating it as a new entity from the mineral salts of other metals) in 1778 by Carl Wilhelm Scheele.'),
(43, 'Technetium', 'Solid', 'Technetium (/tɛkˈniːʃiəm/) is a chemical element with symbol Tc and atomic number 43. It is the element with the lowest atomic number in the periodic table that has no stable isotopes:every form of it is radioactive. Nearly all technetium is produced synthetically, and only minute amounts are found in nature.'),
(44, 'Ruthenium', 'Solid', 'Ruthenium is a chemical element with symbol Ru and atomic number 44. It is a rare transition metal belonging to the platinum group of the periodic table. Like the other metals of the platinum group, ruthenium is inert to most other chemicals.'),
(45, 'Rhodium', 'Solid', 'Rhodium is a chemical element with symbol Rh and atomic number 45. It is a rare, silvery-white, hard, and chemically inert transition metal. It is a member of the platinum group.'),
(46, 'Palladium', 'Solid', 'Palladium is a chemical element with symbol Pd and atomic number 46. It is a rare and lustrous silvery-white metal discovered in 1803 by William Hyde Wollaston. He named it after the asteroid Pallas, which was itself named after the epithet of the Greek goddess Athena, acquired by her when she slew Pallas.'),
(47, 'Silver', 'Solid', 'Silver is a chemical element with symbol Ag (Greek:άργυρος árguros, Latin:argentum, both from the Indo-European root *h₂erǵ- for \"grey\" or \"shining\") and atomic number 47. A soft, white, lustrous transition metal, it possesses the highest electrical conductivity, thermal conductivity and reflectivity of any metal. The metal occurs naturally in its pure, free form (native silver), as an alloy with gold and other metals, and in minerals such as argentite and chlorargyrite.'),
(48, 'Cadmium', 'Solid', 'Cadmium is a chemical element with symbol Cd and atomic number 48. This soft, bluish-white metal is chemically similar to the two other stable metals in group 12, zinc and mercury. Like zinc, it prefers oxidation state +2 in most of its compounds and like mercury it shows a low melting point compared to transition metals.'),
(49, 'Indium', 'Solid', 'Indium is a chemical element with symbol In and atomic number 49. It is a post-transition metallic element that is rare in Earth\'s crust. The metal is very soft, malleable and easily fusible, with a melting point higher than sodium, but lower than lithium or tin.'),
(50, 'Tin', 'Solid', 'Tin is a chemical element with the symbol Sn (for Latin:stannum) and atomic number 50. It is a main group metal in group 14 of the periodic table. Tin shows a chemical similarity to both neighboring group-14 elements, germanium and lead, and has two possible oxidation states, +2 and the slightly more stable +4.'),
(51, 'Antimony', 'Solid', 'Antimony is a chemical element with symbol Sb (from Latin:stibium) and atomic number 51. A lustrous gray metalloid, it is found in nature mainly as the sulfide mineral stibnite (Sb2S3). Antimony compounds have been known since ancient times and were used for cosmetics; metallic antimony was also known, but it was erroneously identified as lead upon its discovery.'),
(52, 'Tellurium', 'Solid', 'Tellurium is a chemical element with symbol Te and atomic number 52. It is a brittle, mildly toxic, rare, silver-white metalloid. Tellurium is chemically related to selenium and sulfur.'),
(53, 'Iodine', 'Solid', 'Iodine is a chemical element with symbol I and atomic number 53. The name is from Greek ἰοειδής ioeidēs, meaning violet or purple, due to the color of iodine vapor. Iodine and its compounds are primarily used in nutrition, and industrially in the production of acetic acid and certain polymers.'),
(54, 'Xenon', 'Gas', 'Xenon is a chemical element with symbol Xe and atomic number 54. It is a colorless, dense, odorless noble gas, that occurs in the Earth\'s atmosphere in trace amounts. Although generally unreactive, xenon can undergo a few chemical reactions such as the formation of xenon hexafluoroplatinate, the first noble gas compound to be synthesized.'),
(55, 'Cesium', 'Solid', 'Caesium or cesium is a chemical element with symbol Cs and atomic number 55. It is a soft, silvery-gold alkali metal with a melting point of 28 °C (82 °F), which makes it one of only five elemental metals that are liquid at or near room temperature. Caesium is an alkali metal and has physical and chemical properties similar to those of rubidium and potassium.'),
(56, 'Barium', 'Solid', 'Barium is a chemical element with symbol Ba and atomic number 56. It is the fifth element in Group 2, a soft silvery metallic alkaline earth metal. Because of its high chemical reactivity barium is never found in nature as a free element.'),
(57, 'Lanthanum', 'Solid', 'Lanthanum is a soft, ductile, silvery-white metallic chemical element with symbol La and atomic number 57. It tarnishes rapidly when exposed to air and is soft enough to be cut with a knife. It gave its name to the lanthanide series, a group of 15 similar elements between lanthanum and lutetium in the periodic table:it is also sometimes considered the first element of the 6th-period transition metals.'),
(58, 'Cerium', 'Solid', 'Cerium is a chemical element with symbol Ce and atomic number 58. It is a soft, silvery, ductile metal which easily oxidizes in air. Cerium was named after the dwarf planet Ceres (itself named after the Roman goddess of agriculture).'),
(59, 'Praseodymium', 'Solid', 'Praseodymium is a chemical element with symbol Pr and atomic number 59. Praseodymium is a soft, silvery, malleable and ductile metal in the lanthanide group. It is valued for its magnetic, electrical, chemical, and optical properties.'),
(60, 'Neodymium', 'Solid', 'Neodymium is a chemical element with symbol Nd and atomic number 60. It is a soft silvery metal that tarnishes in air. Neodymium was discovered in 1885 by the Austrian chemist Carl Auer von Welsbach.'),
(61, 'Promethium', 'Solid', 'Promethium, originally prometheum, is a chemical element with the symbol Pm and atomic number 61. All of its isotopes are radioactive; it is one of only two such elements that are followed in the periodic table by elements with stable forms, a distinction shared with technetium. Chemically, promethium is a lanthanide, which forms salts when combined with other elements.'),
(62, 'Samarium', 'Solid', 'Samarium is a chemical element with symbol Sm and atomic number 62. It is a moderately hard silvery metal that readily oxidizes in air. Being a typical member of the lanthanide series, samarium usually assumes the oxidation state +3.'),
(63, 'Europium', 'Solid', 'Europium is a chemical element with symbol Eu and atomic number 63. It was isolated in 1901 and is named after the continent of Europe. It is a moderately hard, silvery metal which readily oxidizes in air and water.'),
(64, 'Gadolinium', 'Solid', 'Gadolinium is a chemical element with symbol Gd and atomic number 64. It is a silvery-white, malleable and ductile rare-earth metal. It is found in nature only in combined (salt) form.'),
(65, 'Terbium', 'Solid', 'Terbium is a chemical element with symbol Tb and atomic number 65. It is a silvery-white rare earth metal that is malleable, ductile and soft enough to be cut with a knife. Terbium is never found in nature as a free element, but it is contained in many minerals, including cerite, gadolinite, monazite, xenotime and euxenite.'),
(66, 'Dysprosium', 'Solid', 'Dysprosium is a chemical element with the symbol Dy and atomic number 66. It is a rare earth element with a metallic silver luster. Dysprosium is never found in nature as a free element, though it is found in various minerals, such as xenotime.'),
(67, 'Holmium', 'Solid', 'Holmium is a chemical element with symbol Ho and atomic number 67. Part of the lanthanide series, holmium is a rare earth element. Holmium was discovered by Swedish chemist Per Theodor Cleve.'),
(68, 'Erbium', 'Solid', 'Erbium is a chemical element in the lanthanide series, with symbol Er and atomic number 68. A silvery-white solid metal when artificially isolated, natural erbium is always found in chemical combination with other elements on Earth. As such, it is a rare earth element which is associated with several other rare elements in the mineral gadolinite from Ytterby in Sweden, where yttrium, ytterbium, and terbium were discovered.'),
(69, 'Thulium', 'Solid', 'Thulium is a chemical element with symbol Tm and atomic number 69. It is the thirteenth and antepenultimate (third-last) element in the lanthanide series. Like the other lanthanides, the most common oxidation state is +3, seen in its oxide, halides and other compounds.'),
(70, 'Ytterbium', 'Solid', 'Ytterbium is a chemical element with symbol Yb and atomic number 70. It is the fourteenth and penultimate element in the lanthanide series, which is the basis of the relative stability of its +2 oxidation state. However, like the other lanthanides, its most common oxidation state is +3, seen in its oxide, halides and other compounds.'),
(71, 'Lutetium', 'Solid', 'Lutetium is a chemical element with symbol Lu and atomic number 71. It is a silvery white metal, which resists corrosion in dry, but not in moist air. It is considered the first element of the 6th-period transition metals and the last element in the lanthanide series, and is traditionally counted among the rare earths.'),
(72, 'Hafnium', 'Solid', 'Hafnium is a chemical element with symbol Hf and atomic number 72. A lustrous, silvery gray, tetravalent transition metal, hafnium chemically resembles zirconium and is found in zirconium minerals. Its existence was predicted by Dmitri Mendeleev in 1869, though it was not identified until 1923, making it the penultimate stable element to be discovered (rhenium was identified two years later).'),
(73, 'Tantalum', 'Solid', 'Tantalum is a chemical element with symbol Ta and atomic number 73. Previously known as tantalium, its name comes from Tantalus, an antihero from Greek mythology. Tantalum is a rare, hard, blue-gray, lustrous transition metal that is highly corrosion-resistant.'),
(74, 'Tungsten', 'Solid', 'Tungsten, also known as wolfram, is a chemical element with symbol W and atomic number 74. The word tungsten comes from the Swedish language tung sten, which directly translates to heavy stone. Its name in Swedish is volfram, however, in order to distinguish it from scheelite, which in Swedish is alternatively named tungsten.'),
(75, 'Rhenium', 'Solid', 'Rhenium is a chemical element with symbol Re and atomic number 75. It is a silvery-white, heavy, third-row transition metal in group 7 of the periodic table. With an estimated average concentration of 1 part per billion (ppb), rhenium is one of the rarest elements in the Earth\'s crust.'),
(76, 'Osmium', 'Solid', 'Osmium (from Greek osme (ὀσμή) meaning \"smell\") is a chemical element with symbol Os and atomic number 76. It is a hard, brittle, bluish-white transition metal in the platinum group that is found as a trace element in alloys, mostly in platinum ores. Osmium is the densest naturally occurring element, with a density of 22.59 g/cm3.'),
(77, 'Iridium', 'Solid', 'Iridium is a chemical element with symbol Ir and atomic number 77. A very hard, brittle, silvery-white transition metal of the platinum group, iridium is generally credited with being the second densest element (after osmium) based on measured density, although calculations involving the space lattices of the elements show that iridium is denser. It is also the most corrosion-resistant metal, even at temperatures as high as 2000 °C. Although only certain molten salts and halogens are corrosive to solid iridium, finely divided iridium dust is much more reactive and can be flammable.'),
(78, 'Platinum', 'Solid', 'Platinum is a chemical element with symbol Pt and atomic number 78. It is a dense, malleable, ductile, highly unreactive, precious, gray-white transition metal. Its name is derived from the Spanish term platina, which is literally translated into \"little silver\".'),
(79, 'Gold', 'Solid', 'Gold is a chemical element with symbol Au (from Latin:aurum) and atomic number 79. In its purest form, it is a bright, slightly reddish yellow, dense, soft, malleable and ductile metal. Chemically, gold is a transition metal and a group 11 element.'),
(80, 'Mercury', 'Liquid', 'Mercury is a chemical element with symbol Hg and atomic number 80. It is commonly known as quicksilver and was formerly named hydrargyrum (/haɪˈdrɑːrdʒərəm/). A heavy, silvery d-block element, mercury is the only metallic element that is liquid at standard conditions for temperature and pressure; the only other element that is liquid under these conditions is bromine, though metals such as caesium, gallium, and rubidium melt just above room temperature.'),
(81, 'Thallium', 'Solid', 'Thallium is a chemical element with symbol Tl and atomic number 81. This soft gray post-transition metal is not found free in nature. When isolated, it resembles tin, but discolors when exposed to air.'),
(82, 'Lead', 'Solid', 'Lead (/lɛd/) is a chemical element in the carbon group with symbol Pb (from Latin:plumbum) and atomic number 82. Lead is a soft, malleable and heavy post-transition metal. Metallic lead has a bluish-white color after being freshly cut, but it soon tarnishes to a dull grayish color when exposed to air.'),
(83, 'Bismuth', 'Solid', 'Bismuth is a chemical element with symbol Bi and atomic number 83. Bismuth, a pentavalent post-transition metal, chemically resembles arsenic and antimony. Elemental bismuth may occur naturally, although its sulfide and oxide form important commercial ores.'),
(84, 'Polonium', 'Solid', 'Polonium is a chemical element with symbol Po and atomic number 84, discovered in 1898 by Marie Curie and Pierre Curie. A rare and highly radioactive element with no stable isotopes, polonium is chemically similar to bismuth and tellurium, and it occurs in uranium ores. Applications of polonium are few.'),
(85, 'Astatine', 'Solid', 'Astatine is a very rare radioactive chemical element with the chemical symbol At and atomic number 85. It occurs on Earth as the decay product of various heavier elements. All its isotopes are short-lived; the most stable is astatine-210, with a half-life of 8.1 hours.'),
(86, 'Radon', 'Gas', 'Radon is a chemical element with symbol Rn and atomic number 86. It is a radioactive, colorless, odorless, tasteless noble gas, occurring naturally as a decay product of radium. Its most stable isotope, 222Rn, has a half-life of 3.8 days.'),
(87, 'Francium', 'Solid', 'Francium is a chemical element with symbol Fr and atomic number 87. It used to be known as eka-caesium and actinium K. It is the second-least electronegative element, behind only caesium. Francium is a highly radioactive metal that decays into astatine, radium, and radon.'),
(88, 'Radium', 'Solid', 'Radium is a chemical element with symbol Ra and atomic number 88. It is the sixth element in group 2 of the periodic table, also known as the alkaline earth metals. Pure radium is almost colorless, but it readily combines with nitrogen (rather than oxygen) on exposure to air, forming a black surface layer of radium nitride (Ra3N2).'),
(89, 'Actinium', 'Solid', 'Actinium is a radioactive chemical element with symbol Ac (not to be confused with the abbreviation for an acetyl group) and atomic number 89, which was discovered in 1899. It was the first non-primordial radioactive element to be isolated. Polonium, radium and radon were observed before actinium, but they were not isolated until 1902.'),
(90, 'Thorium', 'Solid', 'Thorium is a chemical element with symbol Th and atomic number 90. A radioactive actinide metal, thorium is one of only two significantly radioactive elements that still occur naturally in large quantities as a primordial element (the other being uranium). It was discovered in 1828 by the Norwegian Reverend and amateur mineralogist Morten Thrane Esmark and identified by the Swedish chemist Jöns Jakob Berzelius, who named it after Thor, the Norse god of thunder.'),
(91, 'Protactinium', 'Solid', 'Protactinium is a chemical element with symbol Pa and atomic number 91. It is a dense, silvery-gray metal which readily reacts with oxygen, water vapor and inorganic acids. It forms various chemical compounds where protactinium is usually present in the oxidation state +5, but can also assume +4 and even +2 or +3 states.'),
(92, 'Uranium', 'Solid', 'Uranium is a chemical element with symbol U and atomic number 92. It is a silvery-white metal in the actinide series of the periodic table. A uranium atom has 92 protons and 92 electrons, of which 6 are valence electrons.'),
(93, 'Neptunium', 'Solid', 'Neptunium is a chemical element with symbol Np and atomic number 93. A radioactive actinide metal, neptunium is the first transuranic element. Its position in the periodic table just after uranium, named after the planet Uranus, led to it being named after Neptune, the next planet beyond Uranus.'),
(94, 'Plutonium', 'Solid', 'Plutonium is a transuranic radioactive chemical element with symbol Pu and atomic number 94. It is an actinide metal of silvery-gray appearance that tarnishes when exposed to air, and forms a dull coating when oxidized. The element normally exhibits six allotropes and four oxidation states.'),
(95, 'Americium', 'Solid', 'Americium is a radioactive transuranic chemical element with symbol Am and atomic number 95. This member of the actinide series is located in the periodic table under the lanthanide element europium, and thus by analogy was named after the Americas. Americium was first produced in 1944 by the group of Glenn T.Seaborg from Berkeley, California, at the metallurgical laboratory of University of Chicago.'),
(96, 'Curium', 'Solid', 'Curium is a transuranic radioactive chemical element with symbol Cm and atomic number 96. This element of the actinide series was named after Marie and Pierre Curie – both were known for their research on radioactivity. Curium was first intentionally produced and identified in July 1944 by the group of Glenn T. Seaborg at the University of California, Berkeley.'),
(97, 'Berkelium', 'Solid', 'Berkelium is a transuranic radioactive chemical element with symbol Bk and atomic number 97. It is a member of the actinide and transuranium element series. It is named after the city of Berkeley, California, the location of the University of California Radiation Laboratory where it was discovered in December 1949.'),
(98, 'Californium', 'Solid', 'Californium is a radioactive metallic chemical element with symbol Cf and atomic number 98. The element was first made in 1950 at the University of California Radiation Laboratory in Berkeley, by bombarding curium with alpha particles (helium-4 ions). It is an actinide element, the sixth transuranium element to be synthesized, and has the second-highest atomic mass of all the elements that have been produced in amounts large enough to see with the unaided eye (after einsteinium).'),
(99, 'Einsteinium', 'Solid', 'Einsteinium is a synthetic element with symbol Es and atomic number 99. It is the seventh transuranic element, and an actinide. Einsteinium was discovered as a component of the debris of the first hydrogen bomb explosion in 1952, and named after Albert Einstein.'),
(100, 'Fermium', 'Solid', 'Fermium is a synthetic element with symbol Fm and atomic number 100. It is a member of the actinide series. It is the heaviest element that can be formed by neutron bombardment of lighter elements, and hence the last element that can be prepared in macroscopic quantities, although pure fermium metal has not yet been prepared.'),
(101, 'Mendelevium', 'Solid', 'Mendelevium is a synthetic element with chemical symbol Md (formerly Mv) and atomic number 101. A metallic radioactive transuranic element in the actinide series, it is the first element that currently cannot be produced in macroscopic quantities through neutron bombardment of lighter elements. It is the antepenultimate actinide and the ninth transuranic element.'),
(102, 'Nobelium', 'Solid', 'Nobelium is a synthetic chemical element with symbol No and atomic number 102. It is named in honor of Alfred Nobel, the inventor of dynamite and benefactor of science. A radioactive metal, it is the tenth transuranic element and is the penultimate member of the actinide series.'),
(103, 'Lawrencium', 'Solid', 'Lawrencium is a synthetic chemical element with chemical symbol Lr (formerly Lw) and atomic number 103. It is named in honor of Ernest Lawrence, inventor of the cyclotron, a device that was used to discover many artificial radioactive elements. A radioactive metal, lawrencium is the eleventh transuranic element and is also the final member of the actinide series.'),
(104, 'Rutherfordium', 'Solid', 'Rutherfordium is a chemical element with symbol Rf and atomic number 104, named in honor of physicist Ernest Rutherford. It is a synthetic element (an element that can be created in a laboratory but is not found in nature) and radioactive; the most stable known isotope, 267Rf, has a half-life of approximately 1.3 hours. In the periodic table of the elements, it is a d - block element and the second of the fourth - row transition elements.'),
(105, 'Dubnium', 'Solid', 'Dubnium is a chemical element with symbol Db and atomic number 105. It is named after the town of Dubna in Russia (north of Moscow), where it was first produced. It is a synthetic element (an element that can be created in a laboratory but is not found in nature) and radioactive; the most stable known isotope, dubnium-268, has a half-life of approximately 28 hours.'),
(106, 'Seaborgium', 'Solid', 'Seaborgium is a synthetic element with symbol Sg and atomic number 106. Its most stable isotope 271Sg has a half-life of 1.9 minutes. A more recently discovered isotope 269Sg has a potentially slightly longer half-life (ca.'),
(107, 'Bohrium', 'Solid', 'Bohrium is a chemical element with symbol Bh and atomic number 107. It is named after Danish physicist Niels Bohr. It is a synthetic element (an element that can be created in a laboratory but is not found in nature) and radioactive; the most stable known isotope, 270Bh, has a half-life of approximately 61 seconds.'),
(108, 'Hassium', 'Solid', 'Hassium is a chemical element with symbol Hs and atomic number 108, named after the German state of Hesse. It is a synthetic element (an element that can be created in a laboratory but is not found in nature) and radioactive; the most stable known isotope, 269Hs, has a half-life of approximately 9.7 seconds, although an unconfirmed metastable state, 277mHs, may have a longer half-life of about 130 seconds. More than 100 atoms of hassium have been synthesized to date.'),
(109, 'Meitnerium', 'Solid', 'Meitnerium is a chemical element with symbol Mt and atomic number 109. It is an extremely radioactive synthetic element (an element not found in nature that can be created in a laboratory). The most stable known isotope, meitnerium-278, has a half-life of 7.6 seconds.'),
(110, 'Darmstadtium', 'Solid', 'Darmstadtium is a chemical element with symbol Ds and atomic number 110. It is an extremely radioactive synthetic element. The most stable known isotope, darmstadtium-281, has a half-life of approximately 10 seconds.'),
(111, 'Roentgenium', 'Solid', 'Roentgenium is a chemical element with symbol Rg and atomic number 111. It is an extremely radioactive synthetic element (an element that can be created in a laboratory but is not found in nature); the most stable known isotope, roentgenium-282, has a half-life of 2.1 minutes. Roentgenium was first created in 1994 by the GSI Helmholtz Centre for Heavy Ion Research near Darmstadt, Germany.'),
(112, 'Copernicium', 'Gas', 'Copernicium is a chemical element with symbol Cn and atomic number 112. It is an extremely radioactive synthetic element that can only be created in a laboratory. The most stable known isotope, copernicium-285, has a half-life of approximately 29 seconds, but it is possible that this copernicium isotope may have a nuclear isomer with a longer half-life, 8.9 min.'),
(113, 'Nihonium', 'Solid', 'Nihonium is a chemical element with atomic number 113. It has a symbol Nh. It is a synthetic element (an element that can be created in a laboratory but is not found in nature) and is extremely radioactive; its most stable known isotope, nihonium-286, has a half-life of 20 seconds.'),
(114, 'Flerovium', 'Solid', 'Flerovium is a superheavy artificial chemical element with symbol Fl and atomic number 114. It is an extremely radioactive synthetic element. The element is named after the Flerov Laboratory of Nuclear Reactions of the Joint Institute for Nuclear Research in Dubna, Russia, where the element was discovered in 1998.'),
(115, 'Moscovium', 'Solid', 'Moscovium is the name of a synthetic superheavy element in the periodic table that has the symbol Mc and has the atomic number 115. It is an extremely radioactive element; its most stable known isotope, moscovium-289, has a half-life of only 220 milliseconds. It is also known as eka-bismuth or simply element 115.'),
(116, 'Livermorium', 'Solid', 'Livermorium is a synthetic superheavy element with symbol Lv and atomic number 116. It is an extremely radioactive element that has only been created in the laboratory and has not been observed in nature. The element is named after the Lawrence Livermore National Laboratory in the United States, which collaborated with the Joint Institute for Nuclear Research in Dubna, Russia to discover livermorium in 2000.'),
(117, 'Tennessine', 'Solid', 'Tennessine is a superheavy artificial chemical element with an atomic number of 117 and a symbol of Ts. Also known as eka-astatine or element 117, it is the second-heaviest known element and penultimate element of the 7th period of the periodic table. As of 2016, fifteen tennessine atoms have been observed:six when it was first synthesized in 2010, seven in 2012, and two in 2014.'),
(118, 'Oganesson', 'Solid', 'Oganesson is IUPAC\'s name for the transactinide element with the atomic number 118 and element symbol Og. It is also known as eka-radon or element 118, and on the periodic table of the elements it is a p-block element and the last one of the 7th period. Oganesson is currently the only synthetic member of group 18.'),
(119, 'Ununennium', 'Solid', 'Ununennium, also known as eka-francium or simply element 119, is the hypothetical chemical element with symbol Uue and atomic number 119. Ununennium and Uue are the temporary systematic IUPAC name and symbol respectively, until a permanent name is decided upon. In the periodic table of the elements, it is expected to be an s-block element, an alkali metal, and the first element in the eighth period.');

-- --------------------------------------------------------

--
-- Table structure for table `mixs`
--

CREATE TABLE `mixs` (
  `SUBSTANCE_RES` int(11) NOT NULL,
  `SUBSTANCE1` int(11) NOT NULL,
  `SUBSTANCE2` int(11) DEFAULT NULL,
  `SUBSTANCE3` int(11) DEFAULT NULL,
  `SUBSTANCE4` int(11) DEFAULT NULL,
  `SUBSTANCE5` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `Mixtures`
--

CREATE TABLE `Mixtures` (
  `ID_mixtures` int(11) NOT NULL,
  `Dispersion_medium` varchar(20) NOT NULL,
  `Disp_phase` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `pure_substance`
--

CREATE TABLE `pure_substance` (
  `ID_PURESUBS` int(11) NOT NULL,
  `NAME` varchar(100) NOT NULL,
  `APPERANCE` text DEFAULT NULL,
  `MASS` float NOT NULL,
  `BOILING_POINT` float DEFAULT NULL,
  `CATEGORY` varchar(60) NOT NULL,
  `COLOUR` varchar(30) DEFAULT NULL,
  `DENSITY` float DEFAULT NULL,
  `MELTING_POINT` float DEFAULT NULL,
  `SYMBOL` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pure_substance`
--

INSERT INTO `pure_substance` (`ID_PURESUBS`, `NAME`, `APPERANCE`, `MASS`, `BOILING_POINT`, `CATEGORY`, `COLOUR`, `DENSITY`, `MELTING_POINT`, `SYMBOL`) VALUES
(1, 'Hydrogen', 'Hydrogen is a colorless, odorless gas which exists, at standard temperature and pressure, as diatomic molecules, H2.', 1.008, 20.271, 'Reactive nonmetal', 'Colorless', 0.08988, 13.99, 'H'),
(2, 'Helium', 'a colorless gas, exhibiting a gray, cloudy glow (or reddish-orange if an especially high voltage is used) when placed in an electric field', 4.0026, 4.222, 'Noble gas', 'Colorless', 0.1786, 0.95, 'He'),
(3, 'Lithium', 'silvery-white', 6.94, 1603, 'alkali metal', NULL, 0.534, 453.65, 'Li'),
(4, 'Beryllium', 'white-gray metallic', 9.01218, 2742, 'alkaline earth metal', NULL, 1.85, 1560, 'Be'),
(5, 'Boron', 'black-brown', 10.81, 4200, 'metalloid', NULL, 2.08, 2349, 'B'),
(6, 'Carbon', NULL, 12.011, NULL, 'polyatomic nonmetal', NULL, 1.821, NULL, 'C'),
(7, 'Nitrogen', 'colorless gas, liquid or solid', 14.007, 77.355, 'diatomic nonmetal', NULL, 1.251, 63.15, 'N'),
(8, 'Oxygen', NULL, 15.999, 90.188, 'diatomic nonmetal', NULL, 1.429, 54.36, 'O'),
(9, 'Fluorine', NULL, 18.9984, 85.03, 'diatomic nonmetal', NULL, 1.696, 53.48, 'F'),
(10, 'Neon', 'colorless gas exhibiting an orange-red glow when placed in a high voltage electric field', 20.1798, 27.104, 'noble gas', NULL, 0.9002, 24.56, 'Ne'),
(11, 'Sodium', 'silvery white metallic', 22.9898, 1156.09, 'alkali metal', NULL, 0.968, 370.944, 'Na'),
(12, 'Magnesium', 'shiny grey solid', 24.305, 1363, 'alkaline earth metal', NULL, 1.738, 923, 'Mg'),
(13, 'Aluminium', 'silvery gray metallic', 26.9815, 2743, 'post-transition metal', NULL, 2.7, 933.47, 'Al'),
(14, 'Silicon', 'crystalline, reflective with bluish-tinged faces', 28.085, 3538, 'metalloid', NULL, 2.329, 1687, 'Si'),
(15, 'Phosphorus', 'colourless, waxy white, yellow, scarlet, red, violet, black', 30.9738, NULL, 'polyatomic nonmetal', NULL, 1.823, NULL, 'P'),
(16, 'Sulfur', 'lemon yellow sintered microcrystals', 32.06, 717.8, 'polyatomic nonmetal', NULL, 2.07, 388.36, 'S'),
(17, 'Chlorine', 'pale yellow-green gas', 35.45, 239.11, 'diatomic nonmetal', NULL, 3.2, 171.6, 'Cl'),
(18, 'Argon', 'colorless gas exhibiting a lilac/violet glow when placed in a high voltage electric field', 39.9481, 87.302, 'noble gas', NULL, 1.784, 83.81, 'Ar'),
(19, 'Potassium', 'silvery gray', 39.0983, 1032, 'alkali metal', NULL, 0.862, 336.7, 'K'),
(20, 'Calcium', NULL, 40.0784, 1757, 'alkaline earth metal', NULL, 1.55, 1115, 'Ca'),
(21, 'Scandium', 'silvery white', 44.9559, 3109, 'transition metal', NULL, 2.985, 1814, 'Sc'),
(22, 'Titanium', 'silvery grey-white metallic', 47.8671, 3560, 'transition metal', NULL, 4.506, 1941, 'Ti'),
(23, 'Vanadium', 'blue-silver-grey metal', 50.9415, 3680, 'transition metal', NULL, 6, 2183, 'V'),
(24, 'Chromium', 'silvery metallic', 51.9962, 2944, 'transition metal', NULL, 7.19, 2180, 'Cr'),
(25, 'Manganese', 'silvery metallic', 54.938, 2334, 'transition metal', NULL, 7.21, 1519, 'Mn'),
(26, 'Iron', 'lustrous metallic with a grayish tinge', 55.8452, 3134, 'transition metal', NULL, 7.874, 1811, 'Fe'),
(27, 'Cobalt', 'hard lustrous gray metal', 58.9332, 3200, 'transition metal', 'metallic gray', 8.9, 1768, 'Co'),
(28, 'Nickel', 'lustrous, metallic, and silver with a gold tinge', 58.6934, 3003, 'transition metal', NULL, 8.908, 1728, 'Ni'),
(29, 'Copper', 'red-orange metallic luster', 63.5463, 2835, 'transition metal', NULL, 8.96, 1357.77, 'Cu'),
(30, 'Zinc', 'silver-gray', 65.382, 1180, 'transition metal', NULL, 7.14, 692.68, 'Zn'),
(31, 'Gallium', 'silver-white', 69.7231, 2673, 'post-transition metal', NULL, 5.91, 302.915, 'Ga'),
(32, 'Germanium', 'grayish-white', 72.6308, 3106, 'metalloid', NULL, 5.323, 1211.4, 'Ge'),
(33, 'Arsenic', 'metallic grey', 74.9216, NULL, 'metalloid', NULL, 5.727, NULL, 'As'),
(34, 'Selenium', 'black, red, and gray (not pictured) allotropes', 78.9718, 958, 'polyatomic nonmetal', NULL, 4.81, 494, 'Se'),
(35, 'Bromine', NULL, 79.904, 332, 'diatomic nonmetal', NULL, 3.1028, 265.8, 'Br'),
(36, 'Krypton', 'colorless gas, exhibiting a whitish glow in a high electric field', 83.7982, 119.93, 'noble gas', NULL, 3.749, 115.78, 'Kr'),
(37, 'Rubidium', 'grey white', 85.4678, 961, 'alkali metal', NULL, 1.532, 312.45, 'Rb'),
(38, 'Strontium', NULL, 87.621, 1650, 'alkaline earth metal', NULL, 2.64, 1050, 'Sr'),
(39, 'Yttrium', 'silvery white', 88.9058, 3203, 'transition metal', NULL, 4.472, 1799, 'Y'),
(40, 'Zirconium', 'silvery white', 91.2242, 4650, 'transition metal', NULL, 6.52, 2128, 'Zr'),
(41, 'Niobium', 'gray metallic, bluish when oxidized', 92.9064, 5017, 'transition metal', NULL, 8.57, 2750, 'Nb'),
(42, 'Molybdenum', 'gray metallic', 95.951, 4912, 'transition metal', NULL, 10.28, 2896, 'Mo'),
(43, 'Technetium', 'shiny gray metal', 98, 4538, 'transition metal', NULL, 11, 2430, 'Tc'),
(44, 'Ruthenium', 'silvery white metallic', 101.072, 4423, 'transition metal', NULL, 12.45, 2607, 'Ru'),
(45, 'Rhodium', 'silvery white metallic', 102.906, 3968, 'transition metal', NULL, 12.41, 2237, 'Rh'),
(46, 'Palladium', 'silvery white', 106.421, 3236, 'transition metal', NULL, 12.023, 1828.05, 'Pd'),
(47, 'Silver', 'lustrous white metal', 107.868, 2435, 'transition metal', NULL, 10.49, 1234.93, 'Ag'),
(48, 'Cadmium', 'silvery bluish-gray metallic', 112.414, 1040, 'transition metal', NULL, 8.65, 594.22, 'Cd'),
(49, 'Indium', 'silvery lustrous gray', 114.818, 2345, 'post-transition metal', NULL, 7.31, 429.749, 'In'),
(50, 'Tin', 'silvery-white (beta, β) or gray (alpha, α)', 118.711, 2875, 'post-transition metal', NULL, 7.365, 505.08, 'Sn'),
(51, 'Antimony', 'silvery lustrous gray', 121.76, 1908, 'metalloid', NULL, 6.697, 903.78, 'Sb'),
(52, 'Tellurium', NULL, 127.603, 1261, 'metalloid', NULL, 6.24, 722.66, 'Te'),
(53, 'Iodine', 'lustrous metallic gray, violet as a gas', 126.904, 457.4, 'diatomic nonmetal', NULL, 4.933, 386.85, 'I'),
(54, 'Xenon', 'colorless gas, exhibiting a blue glow when placed in a high voltage electric field', 131.294, 165.051, 'noble gas', NULL, 5.894, 161.4, 'Xe'),
(55, 'Cesium', 'silvery gold', 132.905, 944, 'alkali metal', NULL, 1.93, 301.7, 'Cs'),
(56, 'Barium', NULL, 137.328, 2118, 'alkaline earth metal', NULL, 3.51, 1000, 'Ba'),
(57, 'Lanthanum', 'silvery white', 138.905, 3737, 'lanthanide', NULL, 6.162, 1193, 'La'),
(58, 'Cerium', 'silvery white', 140.116, 3716, 'lanthanide', NULL, 6.77, 1068, 'Ce'),
(59, 'Praseodymium', 'grayish white', 140.908, 3403, 'lanthanide', NULL, 6.77, 1208, 'Pr'),
(60, 'Neodymium', 'silvery white', 144.242, 3347, 'lanthanide', NULL, 7.01, 1297, 'Nd'),
(61, 'Promethium', 'metallic', 145, 3273, 'lanthanide', NULL, 7.26, 1315, 'Pm'),
(62, 'Samarium', 'silvery white', 150.362, 2173, 'lanthanide', NULL, 7.52, 1345, 'Sm'),
(63, 'Europium', NULL, 151.964, 1802, 'lanthanide', NULL, 5.264, 1099, 'Eu'),
(64, 'Gadolinium', 'silvery white', 157.253, 3273, 'lanthanide', NULL, 7.9, 1585, 'Gd'),
(65, 'Terbium', 'silvery white', 158.925, 3396, 'lanthanide', NULL, 8.23, 1629, 'Tb'),
(66, 'Dysprosium', 'silvery white', 162.5, 2840, 'lanthanide', NULL, 8.54, 1680, 'Dy'),
(67, 'Holmium', 'silvery white', 164.93, 2873, 'lanthanide', NULL, 8.79, 1734, 'Ho'),
(68, 'Erbium', 'silvery white', 167.259, 3141, 'lanthanide', NULL, 9.066, 1802, 'Er'),
(69, 'Thulium', 'silvery gray', 168.934, 2223, 'lanthanide', NULL, 9.32, 1818, 'Tm'),
(70, 'Ytterbium', NULL, 173.045, 1469, 'lanthanide', NULL, 6.9, 1097, 'Yb'),
(71, 'Lutetium', 'silvery white', 174.967, 3675, 'lanthanide', NULL, 9.841, 1925, 'Lu'),
(72, 'Hafnium', 'steel gray', 178.492, 4876, 'transition metal', NULL, 13.31, 2506, 'Hf'),
(73, 'Tantalum', 'gray blue', 180.948, 5731, 'transition metal', NULL, 16.69, 3290, 'Ta'),
(74, 'Tungsten', 'grayish white, lustrous', 183.841, 6203, 'transition metal', NULL, 19.25, 3695, 'W'),
(75, 'Rhenium', 'silvery-grayish', 186.207, 5869, 'transition metal', NULL, 21.02, 3459, 'Re'),
(76, 'Osmium', 'silvery, blue cast', 190.233, 5285, 'transition metal', NULL, 22.59, 3306, 'Os'),
(77, 'Iridium', 'silvery white', 192.217, 4403, 'transition metal', NULL, 22.56, 2719, 'Ir'),
(78, 'Platinum', 'silvery white', 195.085, 4098, 'transition metal', NULL, 21.45, 2041.4, 'Pt'),
(79, 'Gold', 'metallic yellow', 196.967, 3243, 'transition metal', NULL, 19.3, 1337.33, 'Au'),
(80, 'Mercury', 'silvery', 200.592, 629.88, 'transition metal', NULL, 13.534, 234.321, 'Hg'),
(81, 'Thallium', 'silvery white', 204.38, 1746, 'post-transition metal', NULL, 11.85, 577, 'Tl'),
(82, 'Lead', 'metallic gray', 207.21, 2022, 'post-transition metal', NULL, 11.34, 600.61, 'Pb'),
(83, 'Bismuth', 'lustrous silver', 208.98, 1837, 'post-transition metal', NULL, 9.78, 544.7, 'Bi'),
(84, 'Polonium', 'silvery', 209, 1235, 'post-transition metal', NULL, 9.196, 527, 'Po'),
(85, 'Astatine', 'unknown, probably metallic', 210, 610, 'metalloid', NULL, 6.35, 575, 'At'),
(86, 'Radon', 'colorless gas, occasionally glows green or red in discharge tubes', 222, 211.5, 'noble gas', NULL, 9.73, 202, 'Rn'),
(87, 'Francium', NULL, 223, 950, 'alkali metal', NULL, 1.87, 300, 'Fr'),
(88, 'Radium', 'silvery white metallic', 226, 2010, 'alkaline earth metal', NULL, 5.5, 1233, 'Ra'),
(89, 'Actinium', NULL, 227, 3500, 'actinide', NULL, 10, 1500, 'Ac'),
(90, 'Thorium', 'silvery, often with black tarnish', 232.038, 5061, 'actinide', NULL, 11.724, 2023, 'Th'),
(91, 'Protactinium', 'bright, silvery metallic luster', 231.036, 4300, 'actinide', NULL, 15.37, 1841, 'Pa'),
(92, 'Uranium', NULL, 238.029, 4404, 'actinide', NULL, 19.1, 1405.3, 'U'),
(93, 'Neptunium', 'silvery metallic', 237, 4447, 'actinide', NULL, 20.45, 912, 'Np'),
(94, 'Plutonium', 'silvery white, tarnishing to dark gray in air', 244, 3505, 'actinide', NULL, 19.816, 912.5, 'Pu'),
(95, 'Americium', 'silvery white', 243, 2880, 'actinide', NULL, 12, 1449, 'Am'),
(96, 'Curium', 'silvery metallic, glows purple in the dark', 247, 3383, 'actinide', NULL, 13.51, 1613, 'Cm'),
(97, 'Berkelium', 'silvery', 247, 2900, 'actinide', NULL, 14.78, 1259, 'Bk'),
(98, 'Californium', 'silvery', 251, 1743, 'actinide', NULL, 15.1, 1173, 'Cf'),
(99, 'Einsteinium', 'silver-colored', 252, 1269, 'actinide', NULL, 8.84, 1133, 'Es'),
(100, 'Fermium', NULL, 257, NULL, 'actinide', NULL, NULL, 1800, 'Fm'),
(101, 'Mendelevium', NULL, 258, NULL, 'actinide', NULL, NULL, 1100, 'Md'),
(102, 'Nobelium', NULL, 259, NULL, 'actinide', NULL, NULL, 1100, 'No'),
(103, 'Lawrencium', NULL, 266, NULL, 'actinide', NULL, NULL, 1900, 'Lr'),
(104, 'Rutherfordium', NULL, 267, 5800, 'transition metal', NULL, 23.2, 2400, 'Rf'),
(105, 'Dubnium', NULL, 268, NULL, 'transition metal', NULL, 29.3, NULL, 'Db'),
(106, 'Seaborgium', NULL, 269, NULL, 'transition metal', NULL, 35, NULL, 'Sg'),
(107, 'Bohrium', NULL, 270, NULL, 'transition metal', NULL, 37.1, NULL, 'Bh'),
(108, 'Hassium', NULL, 269, NULL, 'transition metal', NULL, 40.7, 126, 'Hs'),
(109, 'Meitnerium', NULL, 278, NULL, 'unknown, probably transition metal', NULL, 37.4, NULL, 'Mt'),
(110, 'Darmstadtium', NULL, 281, NULL, 'unknown, probably transition metal', NULL, 34.8, NULL, 'Ds'),
(111, 'Roentgenium', NULL, 282, NULL, 'unknown, probably transition metal', NULL, 28.7, NULL, 'Rg'),
(112, 'Copernicium', NULL, 285, 3570, 'transition metal', NULL, 23.7, NULL, 'Cn'),
(113, 'Nihonium', NULL, 286, 1430, 'unknown, probably transition metal', NULL, 16, 700, 'Nh'),
(114, 'Flerovium', NULL, 289, 420, 'post-transition metal', NULL, 14, 340, 'Fl'),
(115, 'Moscovium', NULL, 289, 1400, 'unknown, probably post-transition metal', NULL, 13.5, 670, 'Mc'),
(116, 'Livermorium', NULL, 293, 1085, 'unknown, probably post-transition metal', NULL, 12.9, 709, 'Lv'),
(117, 'Tennessine', NULL, 294, 883, 'unknown, probably metalloid', NULL, 7.17, 723, 'Ts'),
(118, 'Oganesson', NULL, 294, 350, 'unknown, predicted to be noble gas', NULL, 4.95, NULL, 'Og'),
(119, 'Ununennium', NULL, 315, 630, 'unknown, but predicted to be an alkali metal', NULL, 3, NULL, 'Uue');

-- --------------------------------------------------------

--
-- Table structure for table `Reaction`
--

CREATE TABLE `Reaction` (
  `RESULT` int(11) NOT NULL,
  `COMPOUND 1` int(11) NOT NULL,
  `COMPOUND 2` int(11) NOT NULL,
  `COMPOUND 3` int(11) DEFAULT NULL,
  `COMPOUND 4` int(11) DEFAULT NULL,
  `COMPOUND 5` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Compose`
--
ALTER TABLE `Compose`
  ADD PRIMARY KEY (`COMPUND`),
  ADD UNIQUE KEY `Element A` (`ELEMENA`),
  ADD UNIQUE KEY `Element B` (`ELEMENTB`),
  ADD UNIQUE KEY `Element C` (`ELEMENTC`),
  ADD UNIQUE KEY `Element  D` (`ELEMENTD`),
  ADD UNIQUE KEY `Element E` (`ELEMENTE`);

--
-- Indexes for table `compounds`
--
ALTER TABLE `compounds`
  ADD PRIMARY KEY (`ID_COMPOUND`),
  ADD UNIQUE KEY `iupac_name` (`IUPAC_NAME`(100));

--
-- Indexes for table `element`
--
ALTER TABLE `element`
  ADD PRIMARY KEY (`ID_ELEMENT`);

--
-- Indexes for table `heterogenous_mix`
--
ALTER TABLE `heterogenous_mix`
  ADD PRIMARY KEY (`ID_HEMIX`);

--
-- Indexes for table `homogenous_mix`
--
ALTER TABLE `homogenous_mix`
  ADD PRIMARY KEY (`ID_HOMIX`);

--
-- Indexes for table `matter`
--
ALTER TABLE `matter`
  ADD PRIMARY KEY (`ID_MATTER`),
  ADD UNIQUE KEY `ID_matter` (`ID_MATTER`);

--
-- Indexes for table `mixs`
--
ALTER TABLE `mixs`
  ADD KEY `Mix_res` (`SUBSTANCE_RES`),
  ADD KEY `sub1` (`SUBSTANCE1`),
  ADD KEY `sub2` (`SUBSTANCE2`),
  ADD KEY `sub3` (`SUBSTANCE3`),
  ADD KEY `sub4` (`SUBSTANCE4`),
  ADD KEY `sub5` (`SUBSTANCE5`);

--
-- Indexes for table `Mixtures`
--
ALTER TABLE `Mixtures`
  ADD PRIMARY KEY (`ID_mixtures`);

--
-- Indexes for table `pure_substance`
--
ALTER TABLE `pure_substance`
  ADD PRIMARY KEY (`ID_PURESUBS`);

--
-- Indexes for table `Reaction`
--
ALTER TABLE `Reaction`
  ADD KEY `Result_id` (`RESULT`),
  ADD KEY `Reactant1` (`COMPOUND 1`),
  ADD KEY `Reactant2` (`COMPOUND 2`),
  ADD KEY `Reactant3` (`COMPOUND 3`),
  ADD KEY `Reactant4` (`COMPOUND 4`),
  ADD KEY `Reactant5` (`COMPOUND 5`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `matter`
--
ALTER TABLE `matter`
  MODIFY `ID_MATTER` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=120;

--
-- AUTO_INCREMENT for table `pure_substance`
--
ALTER TABLE `pure_substance`
  MODIFY `ID_PURESUBS` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=120;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `Compose`
--
ALTER TABLE `Compose`
  ADD CONSTRAINT `A` FOREIGN KEY (`ELEMENA`) REFERENCES `element` (`ID_element`),
  ADD CONSTRAINT `B` FOREIGN KEY (`ELEMENTB`) REFERENCES `element` (`ID_element`),
  ADD CONSTRAINT `C` FOREIGN KEY (`ELEMENTC`) REFERENCES `element` (`ID_element`),
  ADD CONSTRAINT `Compound_elm` FOREIGN KEY (`COMPUND`) REFERENCES `compounds` (`ID_compound`),
  ADD CONSTRAINT `D` FOREIGN KEY (`ELEMENTD`) REFERENCES `element` (`ID_element`),
  ADD CONSTRAINT `E` FOREIGN KEY (`ELEMENTE`) REFERENCES `element` (`ID_element`);

--
-- Constraints for table `compounds`
--
ALTER TABLE `compounds`
  ADD CONSTRAINT `ID_c` FOREIGN KEY (`ID_compound`) REFERENCES `pure_substance` (`ID_puresubs`);

--
-- Constraints for table `element`
--
ALTER TABLE `element`
  ADD CONSTRAINT `ID_e` FOREIGN KEY (`ID_element`) REFERENCES `pure_substance` (`ID_puresubs`);

--
-- Constraints for table `heterogenous_mix`
--
ALTER TABLE `heterogenous_mix`
  ADD CONSTRAINT `ID_mhe` FOREIGN KEY (`ID_hemix`) REFERENCES `Mixtures` (`ID_mixtures`);

--
-- Constraints for table `homogenous_mix`
--
ALTER TABLE `homogenous_mix`
  ADD CONSTRAINT `ID_mho` FOREIGN KEY (`ID_homix`) REFERENCES `Mixtures` (`ID_mixtures`);

--
-- Constraints for table `mixs`
--
ALTER TABLE `mixs`
  ADD CONSTRAINT `Mix_res` FOREIGN KEY (`SUBSTANCE_RES`) REFERENCES `Mixtures` (`ID_mixtures`),
  ADD CONSTRAINT `sub1` FOREIGN KEY (`Substance1`) REFERENCES `pure_substance` (`ID_puresubs`),
  ADD CONSTRAINT `sub2` FOREIGN KEY (`Substance2`) REFERENCES `pure_substance` (`ID_puresubs`),
  ADD CONSTRAINT `sub3` FOREIGN KEY (`Substance3`) REFERENCES `pure_substance` (`ID_puresubs`),
  ADD CONSTRAINT `sub4` FOREIGN KEY (`Substance4`) REFERENCES `pure_substance` (`ID_puresubs`),
  ADD CONSTRAINT `sub5` FOREIGN KEY (`Substance5`) REFERENCES `pure_substance` (`ID_puresubs`);

--
-- Constraints for table `Mixtures`
--
ALTER TABLE `Mixtures`
  ADD CONSTRAINT `ID_mix` FOREIGN KEY (`ID_mixtures`) REFERENCES `matter` (`ID_matter`);

--
-- Constraints for table `pure_substance`
--
ALTER TABLE `pure_substance`
  ADD CONSTRAINT `ID_pur` FOREIGN KEY (`ID_puresubs`) REFERENCES `matter` (`ID_matter`);

--
-- Constraints for table `Reaction`
--
ALTER TABLE `Reaction`
  ADD CONSTRAINT `Reactant1` FOREIGN KEY (`Compound 1`) REFERENCES `compounds` (`ID_compound`),
  ADD CONSTRAINT `Reactant2` FOREIGN KEY (`Compound 2`) REFERENCES `compounds` (`ID_compound`),
  ADD CONSTRAINT `Reactant3` FOREIGN KEY (`Compound 3`) REFERENCES `compounds` (`ID_compound`),
  ADD CONSTRAINT `Reactant4` FOREIGN KEY (`Compound 4`) REFERENCES `compounds` (`ID_compound`),
  ADD CONSTRAINT `Reactant5` FOREIGN KEY (`Compound 5`) REFERENCES `compounds` (`ID_compound`),
  ADD CONSTRAINT `Result_id` FOREIGN KEY (`Result`) REFERENCES `compounds` (`ID_compound`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
