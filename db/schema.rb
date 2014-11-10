# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 0) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "players", force: true do |t|
    t.string  "name"
    t.string  "position"
    t.integer "fan_points"
    t.string  "player_code"
    t.integer "team_id"
  end

  add_index "players", ["team_id"], name: "index_players_on_team_id", using: :btree

  create_table "reports", force: true do |t|
    t.string   "source"
    t.string   "title"
    t.string   "author"
    t.datetime "created_at"
    t.string   "url"
  end

  create_table "rosters", force: true do |t|
    t.integer "player_id"
    t.integer "season_id"
    t.integer "statistic_id"
    t.string  "chart"
  end

  add_index "rosters", ["player_id"], name: "index_rosters_on_player_id", using: :btree
  add_index "rosters", ["season_id"], name: "index_rosters_on_season_id", using: :btree
  add_index "rosters", ["statistic_id"], name: "index_rosters_on_statistic_id", using: :btree

  create_table "seasons", force: true do |t|
    t.integer "year"
    t.integer "week",     default: 1
    t.string  "opponent"
  end

  create_table "statistics", force: true do |t|
    t.integer "pass_yds"
    t.integer "pass_td"
    t.integer "pass_int"
    t.integer "rush_att"
    t.integer "rush_yds"
    t.integer "rush_td"
    t.integer "rec_tgt"
    t.integer "receptions"
    t.integer "rec_yds"
    t.integer "rec_td"
    t.integer "ret_yds"
    t.integer "ret_td"
    t.integer "misc_2pt"
    t.integer "fum_lost"
  end

  create_table "statuses", force: true do |t|
    t.integer "player_id"
    t.integer "report_id"
    t.integer "priority"
  end

  add_index "statuses", ["player_id"], name: "index_statuses_on_player_id", using: :btree
  add_index "statuses", ["report_id"], name: "index_statuses_on_report_id", using: :btree

  create_table "teams", force: true do |t|
    t.string "abbr_name"
    t.string "market"
    t.string "name"
  end

end
