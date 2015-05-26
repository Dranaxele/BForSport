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

  create_table "equipes", primary_key: "id_equipe", force: :cascade do |t|
    t.integer "id_sport",    limit: 4,  null: false
    t.string  "equipe_name", limit: 30, null: false
    t.integer "equipe_nb",   limit: 4,  null: false
  end

  add_index "equipes", ["id_sport"], name: "id_sport", using: :btree

  create_table "joueurs", primary_key: "id_joueur", force: :cascade do |t|
    t.integer "id_equipe",       limit: 4,  null: false
    t.string  "joueur_name",     limit: 30, null: false
    t.string  "joueur_lastname", limit: 30, null: false
  end

  add_index "joueurs", ["id_equipe"], name: "id_equipe", using: :btree

  create_table "match", primary_key: "id_match", force: :cascade do |t|
    t.integer "id_sport",      limit: 4,  null: false
    t.string  "match_name",    limit: 30, null: false
    t.date    "match_date",               null: false
    t.string  "match_lieu",    limit: 30, null: false
    t.integer "id_equipe1",    limit: 4,  null: false
    t.integer "id_equipe2",    limit: 4,  null: false
    t.string  "match_status",  limit: 15, null: false
    t.integer "score_equipe1", limit: 4,  null: false
    t.integer "score_equipe2", limit: 4,  null: false
  end

  create_table "paris", primary_key: "id_pari", force: :cascade do |t|
    t.integer "id_match",    limit: 4, null: false
    t.integer "id_user",     limit: 4, null: false
    t.integer "vote1",       limit: 4, null: false
    t.integer "vote2",       limit: 4, null: false
    t.integer "pari_pts",    limit: 4, null: false
    t.integer "pari_status", limit: 4, null: false
  end

  create_table "sports", primary_key: "id_sport", force: :cascade do |t|
    t.string "sport_name", limit: 30, null: false
  end

  create_table "users", primary_key: "id_user", force: :cascade do |t|
    t.string  "user_name",        limit: 30, null: false
    t.string  "user_lastname",    limit: 30, null: false
    t.string  "user_login",       limit: 30, null: false
    t.string  "user_password",    limit: 30, null: false
    t.integer "user_score",       limit: 4,  null: false
    t.date    "user_lastconnect",            null: false
  end

  add_foreign_key "equipes", "sports", column: "id_sport", primary_key: "id_sport", name: "equipes_ibfk_1"
  add_foreign_key "joueurs", "equipes", column: "id_equipe", primary_key: "id_equipe", name: "joueurs_ibfk_1"
end
