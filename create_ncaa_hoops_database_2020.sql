#This SQL script creates a database from the data provided
#during this year's NCAA March Madness competition on Kaggle

create database ncaa_hoops_2020;

use ncaa_hoops_2020;

create table cities (CityID int(4),
City varchar(50),
State varchar(2),
primary key(CityID));

LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/Cities.csv'
INTO TABLE cities
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

create table conferences 
(ConfAbbrev varchar(20),
Description varchar(50),
primary key(ConfAbbrev));

LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/Conferences.csv'
INTO TABLE conferences
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

create table conf_tourney_games
(Season int(4),
ConfAbbrev varchar(20),
DayNum int(3),
WTeamID int(4),
LTeamID int(4));

LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/MConferenceTourneyGames.csv'
INTO TABLE conf_tourney_games
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

create table pbp
(EventID int(8), 
Season int(4), 
DayNum int(3),
WTeamID	int(4),
LTeamID	int(4),
WPoints int(3),
LPoints int(3),
ElapsedSeconds int(4),
EventTeamID int(4),
EventPlayerID int(8),
EventType varchar(20),
primary key(EventID));

LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/Events_2010.csv'
INTO TABLE pbp
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/Events_2011.csv'
INTO TABLE pbp
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(EventID, Season, DayNum, WTeamID, LTeamID, WPoints, LPoints, ElapsedSeconds,	EventTeamID, EventPlayerID, EventType);

LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/Events_2012.csv'
INTO TABLE pbp
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(EventID, Season, DayNum, WTeamID, LTeamID, WPoints, LPoints, ElapsedSeconds,	EventTeamID, EventPlayerID, EventType);

LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/Events_2013.csv'
INTO TABLE pbp
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(EventID, Season, DayNum, WTeamID, LTeamID, WPoints, LPoints, ElapsedSeconds,	EventTeamID, EventPlayerID, EventType);

LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/Events_2014.csv'
INTO TABLE pbp
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(EventID, Season, DayNum, WTeamID, LTeamID, WPoints, LPoints, ElapsedSeconds,	EventTeamID, EventPlayerID, EventType);

LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/MEvents2015.csv'
INTO TABLE pbp
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(EventID, Season, DayNum, WTeamID, LTeamID, WPoints, LPoints, ElapsedSeconds,	EventTeamID, EventPlayerID, EventType);

LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/Events2016.csv'
INTO TABLE pbp
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(EventID, Season, DayNum, WTeamID, LTeamID, WPoints, LPoints, ElapsedSeconds,	EventTeamID, EventPlayerID, EventType);

LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/Events2017.csv'
INTO TABLE pbp
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(EventID, Season, DayNum, WTeamID, LTeamID, WPoints, LPoints, ElapsedSeconds,	EventTeamID, EventPlayerID, EventType);

LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/Events2018.csv'
INTO TABLE pbp
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(EventID, Season, DayNum, WTeamID, LTeamID, WPoints, LPoints, ElapsedSeconds,	EventTeamID, EventPlayerID, EventType);

LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/Events2019.csv'
INTO TABLE pbp
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(EventID, Season, DayNum, WTeamID, LTeamID, WPoints, LPoints, ElapsedSeconds,	EventTeamID, EventPlayerID, EventType);

CREATE TABLE gamecities
(Season int(4),
DayNumb  int(4),
wTeamID int(4),
LTeamID int(4),
CRType varchar(20),
CityID int(4));

LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/MGameCities.csv'
INTO TABLE gamecities
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

CREATE TABLE masseyordinals
(Season int(4),
RankingDayNum int(4),
SystemName varchar(20),
TeamID int(4),
OrdinalRank int(4));

LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/MMasseyOrdinals.csv'
INTO TABLE masseyordinals
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;



CREATE TABLE ncaa_compact_results
(Season	int(4),
DayNum int(4),
WTeamID int(4),
WScore int(4),
LTeamID int(4),
LScore int(4),
WLoc char(2),
NumOT int(2));

LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/MNCAATourneyCompactResults.csv'
INTO TABLE ncaa_compact_results
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

CREATE TABLE ncaa_detailed_results
(Season int(4),
DayNum int(4),
WTeamID int(4),
WScore int(4),
LTeamID int(4),
LScore int(4),
WLoc char(2),
NumOT int(2),
WFGM int(2),
WFGA int(2),
WFGM3 int(2),
WFGA3 int(2),
WFTM int(2),
WFTA int(2),
WOR int(2),
WDR int(2),
WAst int(2),
WTO	int(2),
WStl int(2),
WBlk int(2),
WPF int(2),
LFGM int(2),
LFGA int(2),
LFGM3 int(2),
LFGA3 int(2),
LFTM int(2),
LFTA int(2),
LOR	int(2),
LDR	int(2),
LAsst int(2),
LTO int(2),
LStl int(2),
LBlk int(2),
LPF int(2));

LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/MNCAATourneyDetailedResults.csv'
INTO TABLE ncaa_detailed_results
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

CREATE TABLE ncaa_seed_round_slots
(Seed varchar(4),
GameRound int(2),
GameSlot varchar(8),
EarlyDayNum int(4),
LateDayNum int(4));

LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/MNCAATourneySeedRoundSlots.csv'
INTO TABLE ncaa_seed_round_slots
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

CREATE TABLE ncaa_tourney_seeds
(Season int(4),
Seed varchar(8),
TeamID int(4));

LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/MNCAATourneySeeds.csv'
INTO TABLE ncaa_tourney_seeds
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

CREATE TABLE ncaa_tourney_slots
(Season int(4),
Slot varchar(8),
StrongSeed varchar(4),
WeakSeed varchar(4));

LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/MNCAATourneySlots.csv'
INTO TABLE ncaa_tourney_slots
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

CREATE TABLE players
(PlayerID int(8),
Season int(4),
TeamID int(4),
PlayerName varchar(50),
primary key(PlayerID));

LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/MPlayers.csv'
INTO TABLE players
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/Players_2011.csv'
INTO TABLE players
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(PlayerID, Season, TeamID, PlayerName);


LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/Players_2012.csv'
INTO TABLE players
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(PlayerID, Season, TeamID, PlayerName);

LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/Players_2013.csv'
INTO TABLE players
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(PlayerID, Season, TeamID, PlayerName);

LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/Players_2014.csv'
INTO TABLE players
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(PlayerID, Season, TeamID, PlayerName);



CREATE TABLE reg_season_compact_results
(Season	int(4),
DayNum int(4),
WTeamID int(4),
WScore int(4),
LTeamID int(4),
LScore int(4),
WLoc char(2),
NumOT int(2));

LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/MRegularSeasonCompactResults.csv'
INTO TABLE reg_season_compact_results
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

CREATE TABLE reg_season_detailed_results
(Season int(4),
DayNum int(4),
WTeamID int(4),
WScore int(4),
LTeamID int(4),
LScore int(4),
WLoc char(2),
NumOT int(2),
WFGM int(2),
WFGA int(2),
WFGM3 int(2),
WFGA3 int(2),
WFTM int(2),
WFTA int(2),
WOR int(2),
WDR int(2),
WAst int(2),
WTO	int(2),
WStl int(2),
WBlk int(2),
WPF int(2),
LFGM int(2),
LFGA int(2),
LFGM3 int(2),
LFGA3 int(2),
LFTM int(2),
LFTA int(2),
LOR	int(2),
LDR	int(2),
LAsst int(2),
LTO int(2),
LStl int(2),
LBlk int(2),
LPF int(2));

LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/MRegularSeasonDetailedResults.csv'
INTO TABLE reg_season_detailed_results
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

CREATE TABLE Seasons
(Season int(4),
DayZero varchar(20),
RegionW varchar(20),
RegionX	varchar(20),
RegionY varchar(20),
RegionZ varchar(20),
primary key(Season));

LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/MSeasons.csv'
INTO TABLE seasons
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

CREATE TABLE secondary_tourney_compact_results
(Season int(4),
DayNum int(4),
WTeamID int(4),
WScore int(4),
LTeamID	int(4),
LScore int(4),
WLoc char(2),
NumOT int(1),
SecondaryTourney varchar(4));

LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/MSecondaryTourneyCompactResults.csv'
INTO TABLE secondary_tourney_compact_results
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

CREATE TABLE secondary_tourney_teams
(Season int(4),
SecondaryTourney varchar(4),
TeamID int(4));

LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/MSecondaryTourneyTeams.csv'
INTO TABLE secondary_tourney_teams
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

CREATE TABLE team_coaches
(Season int(4),
TeamID int(4),
FirstDayNum int(4),
LastDayNum int(4),
CoachName varchar(50));

LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/MTeamCoaches.csv'
INTO TABLE team_coaches
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

CREATE TABLE team_conferences
(Season int(4),
TeamID int(4),
ConfAbbrev varchar(20));

LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/MTeamConferences.csv'
INTO TABLE team_conferences
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

CREATE TABLE teams
(TeamID int(4),
TeamName varchar(50),
FirstD1Season int(4),
LastD1Season int(4));

LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/MTeams.csv'
INTO TABLE teams
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

CREATE TABLE team_spellings
(TeamNameSpelling varchar(50),
TeamID int(4));

LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/MTeamSpellings.csv'
INTO TABLE team_spellings
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;