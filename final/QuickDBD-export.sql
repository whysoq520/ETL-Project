-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "Team" (
    "team_id" int   NOT NULL,
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
    "player_id" int   NOT NULL,
    "first_name" varchar   NOT NULL,
    "last_name" varchar   NOT NULL,
    "team_id" int   NOT NULL,
    "position" varchar   NOT NULL,
    CONSTRAINT "pk_Player_info" PRIMARY KEY (
        "player_id"
     )
);

CREATE TABLE "Player_stats_2016" (
    "player_id" int   NOT NULL,
    "team_id" int   NOT NULL,
    "games_played" int   NOT NULL,
    "points" int   NOT NULL,
    "field_goals_attempted" int   NOT NULL,
    "field_goals_made" int   NOT NULL,
    "points_per_game" int   NOT NULL,
    "season" int   NOT NULL,
    CONSTRAINT "pk_Player_stats_2016" PRIMARY KEY (
        "player_id"
     )
);

CREATE TABLE "Player_stats_2017" (
    "player_id" int   NOT NULL,
    "team_id" int   NOT NULL,
    "games_played" int   NOT NULL,
    "points" int   NOT NULL,
    "field_goals_attempted" int   NOT NULL,
    "field_goals_made" int   NOT NULL,
    "points_per_game" int   NOT NULL,
    "season" int   NOT NULL,
    CONSTRAINT "pk_Player_stats_2017" PRIMARY KEY (
        "player_id"
     )
);

CREATE TABLE "Player_stats_2018" (
    "player_id" int   NOT NULL,
    "team_id" int   NOT NULL,
    "games_played" int   NOT NULL,
    "points" int   NOT NULL,
    "field_goals_attempted" int   NOT NULL,
    "field_goals_made" int   NOT NULL,
    "points_per_game" int   NOT NULL,
    "season" int   NOT NULL,
    CONSTRAINT "pk_Player_stats_2018" PRIMARY KEY (
        "player_id"
     )
);

CREATE TABLE "Play_off_MVP" (
    "First_name" varchar   NOT NULL,
    "Last_name" varchar   NOT NULL,
    "Year" int   NOT NULL,
    "Position" varchar   NOT NULL,
    "Team" varchar   NOT NULL,
    "Nationality" varchar   NOT NULL,
    "MVP_status" varchar   NOT NULL,
    "Team_id" int   NOT NULL,
    CONSTRAINT "pk_Play_off_MVP" PRIMARY KEY (
        "Team_id"
     )
);

ALTER TABLE "Player_info" ADD CONSTRAINT "fk_Player_info_player_id" FOREIGN KEY("player_id")
REFERENCES "Master_Player" ("player_id");

ALTER TABLE "Player_info" ADD CONSTRAINT "fk_Player_info_team_id" FOREIGN KEY("team_id")
REFERENCES "Team" ("team_id");

ALTER TABLE "Player_stats_2016" ADD CONSTRAINT "fk_Player_stats_2016_player_id" FOREIGN KEY("player_id")
REFERENCES "Master_Player" ("player_id");

ALTER TABLE "Player_stats_2016" ADD CONSTRAINT "fk_Player_stats_2016_team_id" FOREIGN KEY("team_id")
REFERENCES "Team" ("team_id");

ALTER TABLE "Player_stats_2017" ADD CONSTRAINT "fk_Player_stats_2017_player_id" FOREIGN KEY("player_id")
REFERENCES "Master_Player" ("player_id");

ALTER TABLE "Player_stats_2017" ADD CONSTRAINT "fk_Player_stats_2017_team_id" FOREIGN KEY("team_id")
REFERENCES "Team" ("team_id");

ALTER TABLE "Player_stats_2018" ADD CONSTRAINT "fk_Player_stats_2018_player_id" FOREIGN KEY("player_id")
REFERENCES "Master_Player" ("player_id");

ALTER TABLE "Player_stats_2018" ADD CONSTRAINT "fk_Player_stats_2018_team_id" FOREIGN KEY("team_id")
REFERENCES "Team" ("team_id");

ALTER TABLE "Play_off_MVP" ADD CONSTRAINT "fk_Play_off_MVP_Team_id" FOREIGN KEY("Team_id")
REFERENCES "Team" ("team_id");

