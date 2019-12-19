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
    "champioship_won_count" int   NOT NULL,
    "conference_titles_count" int   NOT NULL,
    "divisional_titles_count" int   NOT NULL,
    "halloffame_players_counts" int   NOT NULL,
    "team_logo_url" varchar   NOT NULL,
    CONSTRAINT "pk_Team" PRIMARY KEY (
        "team_id"
     )
);

CREATE TABLE "Hall_of_fame_players" (
    "player_id" INT   NOT NULL,
    "team_id" INT   NOT NULL,
    "player_name" varchar   NOT NULL,
    "position" varchar   NOT NULL,
    "seasons_range" varchar   NOT NULL,
    "year_inducted" int   NOT NULL
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
    "position" varchar   NOT NULL
);

CREATE TABLE "Player_stats_2016" (
    "player_id" INT   NOT NULL,
    "team_id" INT   NOT NULL,
    "games_played" INT   NOT NULL,
    "points" INT   NOT NULL,
    "field_goals_attempted" INT   NOT NULL,
    "field_goals_made" INT   NOT NULL,
    "points_per_game" INT   NOT NULL,
    "season" INT   NOT NULL
);

CREATE TABLE "Player_stats_2017" (
    "player_id" INT   NOT NULL,
    "team_id" INT   NOT NULL,
    "games_played" INT   NOT NULL,
    "points" INT   NOT NULL,
    "field_goals_attempted" INT   NOT NULL,
    "field_goals_made" INT   NOT NULL,
    "points_per_game" INT   NOT NULL,
    "season" INT   NOT NULL
);

CREATE TABLE "Player_stats_2018" (
    "player_id" INT   NOT NULL,
    "team_id" INT   NOT NULL,
    "games_played" INT   NOT NULL,
    "points" INT   NOT NULL,
    "field_goals_attempted" INT   NOT NULL,
    "field_goals_made" INT   NOT NULL,
    "points_per_game" INT   NOT NULL,
    "season" INT   NOT NULL
);

ALTER TABLE "Hall_of_fame_players" ADD CONSTRAINT "fk_Hall_of_fame_players_player_id" FOREIGN KEY("player_id")
REFERENCES "Master_Player" ("player_id");

ALTER TABLE "Hall_of_fame_players" ADD CONSTRAINT "fk_Hall_of_fame_players_team_id" FOREIGN KEY("team_id")
REFERENCES "Team" ("team_id");

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

