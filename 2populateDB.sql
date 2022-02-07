INSERT INTO developer(id, first_name, second_name, skills) VALUES
  (1, 'Valentyn', 'Petrenko', 'Java'),
  (2, 'Vasiliy', 'Solomenko', 'C#'),
  (3, 'Yan', 'Tsimbaluk', 'Java'),
  (4, 'Olena', 'Kuzmuk', 'UI/UX'),
  (5, 'Bogdan', 'Melnik', 'C#');

INSERT INTO skills(id, skill) VALUES
  (1, 'Java'),
  (2, 'Perl'),
  (3, 'C#'),
  (4, 'C++'),
  (5, 'Pascal');

INSERT INTO projects(id, name_project, descryption) VALUES
  (1, 'coolVideo', 'player_for_android'),
  (2, 'fallout', 'RPG_game'),
  (3, 'modern_reader', 'reader_PDF_format'),
  (4, 'Biathlon', 'game_simulator'),
  (5, 'score_ua', 'result_all_sport_events');

INSERT INTO companies(id, name_company, addres_company)  VALUES
  (1, 'ASD', 'USA'),
  (2, 'GoIt', 'Ukraine'),
  (3, 'MDM', 'Poland'),
  (4, 'PhEth', 'Ukraine'),
  (5, 'ROOT', 'Ukraine');

INSERT INTO customers(id, name_cstmer) VALUES
  (1, 'BKW'),
  (2, 'Browl'),
  (3, 'EnergoAtom'),
  (4, 'Pako'),
  (5, 'Brawis');



INSERT INTO mtm_developers_skills(mtm_id_developer, mtm_id_skills) VALUES
  (1,2),
  (1,3),
  (1,4),
  (2,1),
  (2,5),
  (2,3),
  (3,1),
  (3,5),
  (4,3),
  (4,4),
  (5,4),
  (5,2);

INSERT INTO mtm_companies_projects(mtm_id_company, mtm_id_projects) VALUES
  (1,1),
  (1,2),
  (1,3),
  (2,2),
  (2,5),
  (3,2),
  (3,3),
  (3,4),
  (4,1),
  (4,3),
  (5,3),
  (5,4);

INSERT INTO mtm_customer_projects(mtm_customer_id, mtm_projects_id) VALUES
  (1,1),
  (1,5),
  (1,3),
  (1,4),
  (2,1),
  (2,2),
  (2,5),
  (3,1),
  (3,2),
  (3,3),
  (3,4),
  (4,3),
  (4,4),
  (5,2),
  (5,4);

INSERT INTO mtm_companies_developers(mtm_id_company, mtm_id_developer) VALUES
  (1,5),
  (1,2),
  (1,3),
  (2,1),
  (2,2),
  (2,5),
  (3,1),
  (3,5),
  (4,3),
  (4,5),
  (5,1),
  (5,2),
  (5,3),
  (5,4);

INSERT INTO mtm_project_developers(mtm_id_project, mtm_id_developer) VALUES
  (1,2),
  (1,3),
  (1,4),
  (2,1),
  (2,2),
  (2,5),
  (3,1),
  (3,5),
  (4,3),
  (4,4),
  (5,4),
  (5,2);
