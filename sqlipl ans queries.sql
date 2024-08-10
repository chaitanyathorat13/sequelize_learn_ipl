-- ans of 1st query
SELECT team, SUM(points) AS total_points
FROM (
  SELECT teamAName AS team, teamAPoints AS points FROM ipl2020.summaries
  UNION ALL
  SELECT teamBName AS team, teamBPoints AS points FROM ipl2020.summaries
) AS TeamPoints
GROUP BY team
ORDER BY total_points DESC
LIMIT 4;

-- ans of 2nd 

SELECT team, MAX(total_sixes) AS max_sixes
FROM (
  SELECT teamAName AS team, teamASixes AS total_sixes FROM ipl2020.summaries
  UNION ALL
  SELECT teamBName AS team, teamBSixes AS total_sixes FROM ipl2020.summaries
) AS TeamSixes
GROUP BY team
ORDER BY max_sixes DESC
LIMIT 1;

-- 3rd query ans

SELECT p.playerId, p.name, MAX(CAST(SUBSTRING_INDEX(player, '-', -1) AS UNSIGNED)) AS highest_run
FROM (
  SELECT player1 AS player FROM ipl2020.scoreboards
  UNION ALL
  SELECT player2 FROM ipl2020.scoreboards
  UNION ALL
  SELECT player3 FROM ipl2020.scoreboards
  UNION ALL
  SELECT player4 FROM ipl2020.scoreboards
  UNION ALL
  SELECT player5 FROM ipl2020.scoreboards
  UNION ALL
  SELECT player6 FROM ipl2020.scoreboards
  UNION ALL
  SELECT player7 FROM ipl2020.scoreboards
  UNION ALL
  SELECT player8 FROM ipl2020.scoreboards
  UNION ALL
  SELECT player9 FROM ipl2020.scoreboards
  UNION ALL
  SELECT player10 FROM ipl2020.scoreboards
  UNION ALL
  SELECT player11 FROM ipl2020.scoreboards
  UNION ALL
  SELECT player12 FROM ipl2020.scoreboards
  UNION ALL
  SELECT player13 FROM ipl2020.scoreboards
  UNION ALL
  SELECT player14 FROM ipl2020.scoreboards
  UNION ALL
  SELECT player15 FROM ipl2020.scoreboards
  UNION ALL
  SELECT player16 FROM ipl2020.scoreboards
  UNION ALL
  SELECT player17 FROM ipl2020.scoreboards
  UNION ALL
  SELECT player18 FROM ipl2020.scoreboards
  UNION ALL
  SELECT player19 FROM ipl2020.scoreboards
  UNION ALL
  SELECT player20 FROM ipl2020.scoreboards
  UNION ALL
  SELECT player21 FROM ipl2020.scoreboards
  UNION ALL
  SELECT player22 FROM ipl2020.scoreboards
) AS PlayerRuns
JOIN ipl2020.players p ON p.playerId = CAST(SUBSTRING_INDEX(player, '-', 1) AS UNSIGNED)
GROUP BY p.playerId, p.name;

