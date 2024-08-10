SELECT * FROM ipl2020.summaries;

INSERT INTO ipl2020.summaries (teamAName, teamBName, teamATotalScore, teamBTotalScore, teamASixes, teamBSixes, teamAPoints, teamBPoints)
VALUES
  ('RCB', 'MI', 180, 160, 12, 10, 2, 0),
  ('DC', 'KKR', 150, 140, 8, 6, 2, 0),
  ('SRH', 'CSK', 160, 170, 10, 15, 0, 2),
  ('RR', 'PBKS', 165, 155, 11, 9, 2, 0),
  ('KKR', 'RCB', 170, 175, 9, 11, 0, 2),
  ('MI', 'DC', 155, 145, 10, 8, 2, 0),
  ('CSK', 'SRH', 175, 165, 11, 10, 2, 0),
  ('PBKS', 'RR', 140, 160, 6, 11, 0, 2),
  ('RCB', 'CSK', 185, 180, 14, 12, 2, 0),
  ('KKR', 'MI', 160, 165, 8, 10, 0, 2);
