
CREATE TABLE developer (
  id          SMALLINT  NOT NULL PRIMARY KEY ,
  first_name  VARCHAR(50)       NOT NULL,
  second_name VARCHAR(50)       NOT NULL,
  skills      VARCHAR(255)      NOT NULL
);


CREATE TABLE skills (
  id    SMALLINT PRIMARY KEY NOT NULL ,
  skill VARCHAR(50)                   NOT NULL
);

CREATE TABLE projects (
  id           SMALLINT  PRIMARY KEY NOT NULL ,
  name_project VARCHAR(50)                   NOT NULL,
  descryption  VARCHAR(255)
);

CREATE TABLE companies (
  id             SMALLINT  PRIMARY KEY NOT NULL ,
  name_company   VARCHAR(50)                   NOT NULL,
  addres_company VARCHAR(50)
);

CREATE TABLE customers (
  id          SMALLINT PRIMARY KEY NOT NULL ,
  name_cstmer VARCHAR(50)                   NOT NULL
);




CREATE TABLE mtm_developers_skills(
  mtm_id_developer SMALLINT  NOT NULL,
  mtm_id_skills    SMALLINT  NOT NULL,

  FOREIGN KEY (mtm_id_developer) REFERENCES developer(id),
  FOREIGN KEY (mtm_id_skills)    REFERENCES skills(id)
);



CREATE TABLE mtm_project_developers (
  mtm_id_project   SMALLINT  NOT NULL,
  mtm_id_developer SMALLINT  NOT NULL,

  FOREIGN KEY (mtm_id_developer) REFERENCES developer (id),
  FOREIGN KEY (mtm_id_project)   REFERENCES projects (id)
);



CREATE TABLE mtm_companies_developers (
  mtm_id_company   SMALLINT  NOT NULL,
  mtm_id_developer SMALLINT  NOT NULL,

  FOREIGN KEY (mtm_id_company)   REFERENCES companies (id),
  FOREIGN KEY (mtm_id_developer) REFERENCES developer (id)
);


CREATE TABLE mtm_companies_projects (
  mtm_id_company  SMALLINT  NOT NULL,
  mtm_id_projects SMALLINT  NOT NULL,

  FOREIGN KEY (mtm_id_company)  REFERENCES companies (id),
  FOREIGN KEY (mtm_id_projects) REFERENCES projects (id)
);



CREATE TABLE mtm_customer_projects (
  mtm_customer_id SMALLINT  NOT NULL,
  mtm_projects_id  SMALLINT  NOT NULL,

  FOREIGN KEY (mtm_customer_id) REFERENCES customers(id),
  FOREIGN KEY (mtm_projects_id)  REFERENCES projects(id)

);





