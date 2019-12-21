-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/MDfIdn
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.

-- Modify this code to update the DB schema diagram.
-- To reset the sample schema, replace everything with
-- two dots ('..' - without quotes).

CREATE TABLE "Team" (
    "team_id" INT   NOT NULL,
    "abbreviation" varchar   NOT NULL,
    "team_name" varchar   NOT NULL,
    "year_founded" varchar   NOT NULL,
    "yearactive_till" varchar   NOT NULL,
    "arena_capacity" int   NOT NULL,
    "team_logo_url" varchar   NOT NULL,
    CONSTRAINT "pk_Team" PRIMARY KEY (
        "team_id"
     )
);

CREATE TABLE "Master_Player" (
    "player_id" int   NOT NULL,
    "first_name" varchar   NOT NULL,
    "last_name" varchar   NOT NULL,
    CONSTRAINT "pk_Master_Player" PRIMARY KEY (
        "player_id"
     )
);

CREATE TABLE "Player_info" (
    "player_id" INT   NOT NULL,
    "first_name" varchar   NOT NULL,
    "last_name" varchar   NOT NULL,
    "team_id" int   NOT NULL,
    "position" varchar
);

CREATE TABLE "MVP_Playoff" (
    "id" INT   NOT NULL,
    "First_name" varchar   NOT NULL,
    "Last_name" varchar   NOT NULL,
    "Year" INT   NOT NULL,
    "Position" varchar   NOT NULL,
    "Team" varchar   NOT NULL,
    "Nationality" varchar   NOT NULL,
    "MVP_status" varchar   NOT NULL,
    "Team_id" INT
);

CREATE TABLE "Stats_2018" (
    "player_id" INT   NOT NULL,
    "team_id" INT   NOT NULL,
    "category" varchar   NOT NULL,
    "year" INT   NOT NULL,
    "type" varchar   NOT NULL,
    "games_played" INT   NOT NULL,
    "points" INT   NOT NULL,
    "field_goals_attempted" decimal   NOT NULL,
    "field_goals_made" decimal   NOT NULL,
    "points_per_game" decimal   NOT NULL
);

ALTER TABLE "Player_info" ADD CONSTRAINT "fk_Player_info_player_id" FOREIGN KEY("player_id")
REFERENCES "Master_Player" ("player_id");

ALTER TABLE "Player_info" ADD CONSTRAINT "fk_Player_info_team_id" FOREIGN KEY("team_id")
REFERENCES "Team" ("team_id");

ALTER TABLE "MVP_Playoff" ADD CONSTRAINT "fk_MVP_Playoff_Team_id" FOREIGN KEY("Team_id")
REFERENCES "Team" ("team_id");

ALTER TABLE "Stats_2018" ADD CONSTRAINT "fk_Stats_2018_player_id" FOREIGN KEY("player_id")
REFERENCES "Master_Player" ("player_id");

