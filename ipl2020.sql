SELECT * FROM ipl2020.players;
INSERT INTO  ipl2020.players (playerId, name, age)
VALUES
(1, 'Virat Kohli', 34),
(2, 'MS Dhoni', 42),
(3, 'Rohit Sharma', 36),
(4, 'Jasprit Bumrah', 30),
(5, 'Hardik Pandya', 28),
(6, 'KL Rahul', 32),
(7, 'Rishabh Pant', 26),
(8, 'Shubman Gill', 24),
(9, 'Sanju Samson', 29),
(10, 'Ravindra Jadeja', 32),
(11, 'David Warner', 35),
(12, 'AB de Villiers', 38),
(13, 'Kane Williamson', 31),
(14, 'Bhuvneshwar Kumar', 31),
(15, 'Shikhar Dhawan', 35),
(16, 'Andre Russell', 33),
(17, 'Kieron Pollard', 34),
(18, 'Sunil Narine', 32),
(19, 'Suryakumar Yadav', 31),
(20, 'Chris Gayle', 41),
(21, 'Shreyas Iyer', 28),
(22, 'Jos Buttler', 31);


SELECT * FROM ipl2020.summaries;
INSERT INTO ipl2020.summaries (id, teamAName, teamBName, teamATotalScore, teamBTotalScore, teamASixes, teamBSixes, teamAPoints, teamBPoints)
VALUES
(1, 'Mumbai Indians', 'Chennai Super Kings', 180, 175, 10, 9, 2, 1),
(2, 'Royal Challengers Bangalore', 'Sunrisers Hyderabad', 190, 185, 12, 11, 2, 1),
(3, 'Delhi Capitals', 'Kolkata Knight Riders', 170, 168, 9, 8, 2, 1),
(4, 'Rajasthan Royals', 'Punjab Kings', 200, 190, 15, 14, 2, 1),
(5, 'Lucknow Super Giants', 'Gujarat Titans', 210, 200, 16, 15, 2, 1);

SELECT team, MAX(total_sixes) AS max_sixes
FROM (
    SELECT teamAName AS team, SUM(teamASixes) AS total_sixes
    FROM ipl2020.summaries
    GROUP BY teamAName
    UNION ALL
    SELECT teamBName AS team, SUM(teamBSixes) AS total_sixes
    FROM ipl2020.summaries
    GROUP BY teamBName
) AS combined_sixes
GROUP BY team
ORDER BY max_sixes DESC

 SELECT
    CASE
        WHEN SUM(teamASixes) > SUM(teamBSixes) THEN teamAName
        ELSE teamBName
    END AS TeamWithMaxSixes,
    GREATEST(SUM(teamASixes), SUM(teamBSixes)) AS MaxSixes
FROM ipl2020.summaries
GROUP BY teamAName, teamBName
ORDER BY MaxSixes DESC
LIMIT 1;



SELECT teamAName AS Team, SUM(teamAPoints) AS Points
FROM ipl2020.summaries
GROUP BY teamAName
UNION
SELECT teamBName AS Team, SUM(teamBPoints) AS Points
FROM ipl2020.summaries
GROUP BY teamBName
ORDER BY Points DESC
LIMIT 4;



SELECT * FROM ipl2020.scoreboards;

INSERT INTO ipl2020.scoreboards (uniqueId, summaryId, teamATotalRun, teamBTotalRun, player1, player2, player3, player4, player5, player6, player7, player8, player9, player10, player11, player12, player13, player14, player15, player16, player17, player18, player19, player20, player21, player22)
VALUES
(2, 2, 190, 185, 40, 38, 25, 30, 42, 37, 23, 27, 44, 39, 34, 43, 32, 35, 28, 33, 26, 31, 36, 29,30,35),
(3, 3, 170, 168, 32, 30, 18, 22, 35, 28, 20, 25, 38, 33, 27, 37, 24, 29, 22, 26, 21, 31, 36, 23,26,55),
(4, 4, 200, 190, 45, 40, 30, 35, 48, 42, 27, 32, 50, 45, 38, 47, 36, 39, 32, 37, 31, 46, 41, 33,56,10),
(5, 5, 210, 200, 50, 48, 35, 40, 52, 47, 32, 37, 54, 49, 42, 53, 40, 43, 38, 44, 39, 51, 46, 41,30,40);


