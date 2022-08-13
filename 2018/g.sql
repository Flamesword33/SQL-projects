CREATE VIEW homewin AS
SELECT T.teamid, T.teamname, G.gamedate
FROM team AS T, game AS G
WHERE T.teamid = G.homeid
AND G.visitscore < G.homescore;

CREATE VIEW awaywin AS 
SELECT T.teamid, T.teamname, G.gamedate
FROM team AS T, game AS G 
WHERE T.teamid = G.visitid 
AND G.visitscore > G.homescore;

CREATE VIEW winners AS
SELECT teamid, teamname
FROM homewin
UNION ALL
SELECT teamid, teamname
FROM awaywin;

CREATE VIEW win AS
SELECT teamname, teamid, count(teamname) AS games_won 
FROM winners 
GROUP BY teamname, teamid 
ORDER BY games_won DESC;

SELECT * FROM homewin;
SELECT * FROM awaywin;
SELECT * FROM winners;
SELECT * FROM win;
