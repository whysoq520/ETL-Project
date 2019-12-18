-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/hErLdx
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.

-- Modify this code to update the DB schema diagram.
-- To reset the sample schema, replace everything with
-- two dots ('..' - without quotes).

CREATE TABLE "team" (
    "team_id" int   NOT NULL,
    "abbreviation" varchar   NOT NULL,
    "team_name" varchar   NOT NULL,
    "year_founded" varchar   NOT NULL,
    "yearactive_till" varchar   NOT NULL,
    "arena_capacity" int   NOT NULL,
    "champioship_won_count" int   NOT NULL,
    "conference_titles_count" int   NOT NULL,
    "divitional_titles_count" int   NOT NULL,
    "halloffame_players_counts" int   NOT NULL,
    "team_logo_url" varchar   NOT NULL,
    CONSTRAINT "pk_team" PRIMARY KEY (
        "team_id"
     )
);

CREATE TABLE "hall_of_fame_player" (
    "player_id" int   NOT NULL,
    "team_id" int   NOT NULL,
    "player_name" varchar   NOT NULL,
    "position" varchar   NOT NULL,
    "seasons_range" varchar   NOT NULL,
    "year_inducted" int   NOT NULL,
    CONSTRAINT "pk_hall_of_fame_player" PRIMARY KEY (
        "player_id"
     )
);

CREATE TABLE "player" (
    "player_id" int   NOT NULL,
    "first_name" varchar   NOT NULL,
    "last_name" varchar   NOT NULL,
    "team_id" int   NOT NULL,
    "position" varchar   NOT NULL,
    CONSTRAINT "pk_player" PRIMARY KEY (
        "player_id"
     )
);

CREATE TABLE "player_stats_2016" (
    "player_id" int   NOT NULL,
    "games_played" int   NOT NULL,
    "points" int   NOT NULL,
    "field_goals_attempted" int   NOT NULL,
    "field_goals_made" int   NOT NULL,
    "points_per_game" int   NOT NULL,
    "season" int   NOT NULL,
    CONSTRAINT "pk_player_stats_2016" PRIMARY KEY (
        "player_id"
     )
);

CREATE TABLE "player_stats_2017" (
    "player_id" int   NOT NULL,
    "games_played" int   NOT NULL,
    "points" int   NOT NULL,
    "field_goals_attempted" int   NOT NULL,
    "field_goals_made" int   NOT NULL,
    "points_per_game" int   NOT NULL,
    "season" int   NOT NULL,
    CONSTRAINT "pk_player_stats_2017" PRIMARY KEY (
        "player_id"
     )
);

CREATE TABLE "player_stats_2018" (
    "player_id" int   NOT NULL,
    "games_played" int   NOT NULL,
    "points" int   NOT NULL,
    "field_goals_attempted" int   NOT NULL,
    "field_goals_made" int   NOT NULL,
    "points_per_game" int   NOT NULL,
    "season" int   NOT NULL,
    CONSTRAINT "pk_player_stats_2018" PRIMARY KEY (
        "player_id"
     )
);

CREATE TABLE "mvp" (
    "player_id" int   NOT NULL,
    "mvp_name" varchar   NOT NULL,
    "season" int   NOT NULL,
    "mvp_position" varchar   NOT NULL,
    "mvp_team" varchar   NOT NULL,
    "mvp_nationality" varchar   NOT NULL,
    "mvp_status" varchar   NOT NULL,
    CONSTRAINT "pk_mvp" PRIMARY KEY (
        "player_id"
     )
);

ALTER TABLE "hall_of_fame_player" ADD CONSTRAINT "fk_hall_of_fame_player_team_id" FOREIGN KEY("team_id")
REFERENCES "team" ("team_id");

ALTER TABLE "player" ADD CONSTRAINT "fk_player_team_id" FOREIGN KEY("team_id")
REFERENCES "team" ("team_id");

ALTER TABLE "player_stats_2016" ADD CONSTRAINT "fk_player_stats_2016_player_id" FOREIGN KEY("player_id")
REFERENCES "player" ("player_id");

ALTER TABLE "player_stats_2017" ADD CONSTRAINT "fk_player_stats_2017_player_id" FOREIGN KEY("player_id")
REFERENCES "player" ("player_id");

ALTER TABLE "player_stats_2018" ADD CONSTRAINT "fk_player_stats_2018_player_id" FOREIGN KEY("player_id")
REFERENCES "player" ("player_id");

ALTER TABLE "mvp" ADD CONSTRAINT "fk_mvp_player_id" FOREIGN KEY("player_id")
REFERENCES "player" ("player_id");

