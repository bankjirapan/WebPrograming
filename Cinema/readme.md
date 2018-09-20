# SIT Cinema - Buy Ticket
### ----- Request -----
1.Netbean 8+ <br>
2.Java SDK 8+

###  ---- How to install ----
1. Download this folder Cinema. <br>
2. Open Netbean and open project. <br>
3. Select folder project cinema then open and waiting Netbean finish build. <br>
4. Create database name appropriate. Example Cinema,BuyTicket 
5. Excute command SQL <br>
	    	5.1 : First  create table movies_list <br>
	    	`CREATE TABLE MOVIES_LIST (MOVIEID VARCHAR(50) NOT NULL, MOVIENAME VARCHAR(100), CATEGORY VARCHAR(100), DESCRIPTION VARCHAR(200), BRANCH VARCHAR(200), SHOWTIME TIME(8), "DATE" DATE, THEATER VARCHAR(100), PRIMARY KEY (MOVIEID));
` <br><br>
	5.2 : Second insert data to movies_list <br>
		`INSERT INTO BANK.MOVIES_LIST (MOVIEID, MOVIENAME, CATEGORY, DESCRIPTION, BRANCH, SHOWTIME, "DATE", THEATER) 
	VALUES ('SL10001', 'TheNun', 'Horror', 'หนังผี ', 'Rama2', '12:15:59', '2018-09-17', '2');
INSERT INTO BANK.MOVIES_LIST (MOVIEID, MOVIENAME, CATEGORY, DESCRIPTION, BRANCH, SHOWTIME, "DATE", THEATER) 
	VALUES ('SA10002', 'KhunPun', 'Action', 'หนังต่อสู้', 'Rama2', '12:15:59', '2018-09-17', '1');
INSERT INTO BANK.MOVIES_LIST (MOVIEID, MOVIENAME, CATEGORY, DESCRIPTION, BRANCH, SHOWTIME, "DATE", THEATER) 
	VALUES ('QA10001', 'Avenger8', 'Sci-Fi', 'หนังกู้โลก', 'Rama2', '12:15:59', '2018-09-17', '3');
`  <br><br>
5.3 : Create table User <br>
`CREATE TABLE USERS (USERID VARCHAR(50) NOT NULL, USERNAME VARCHAR(100), PASSWORD VARCHAR(100), "NAME" VARCHAR(100), PRIMARY KEY (USERID));
`
<br>
6. config file "glassfish-resources" set `Username `  `Password` and `Name of Database` is correct
7. Deploy project Enjoy :)




