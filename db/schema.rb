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

ActiveRecord::Schema.define(version: 20140205225425) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "invites", force: true do |t|
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id"
  end

  add_index "invites", ["user_id"], name: "index_invites_on_user_id", using: :btree

  create_table "okrs", force: true do |t|
    t.string   "objective"
    t.string   "kr1"
    t.string   "kr2"
    t.string   "kr3"
    t.string   "kr4"
    t.string   "kr5"
    t.string   "kr6"
    t.string   "kr7"
    t.string   "kr8"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id"
  end

  add_index "okrs", ["user_id"], name: "index_okrs_on_user_id", using: :btree

  create_table "students", force: true do |t|
    t.string  "family_name"
    t.string  "given_name"
    t.integer "table_id"
  end

  create_table "tables", force: true do |t|
  end

  create_table "teams", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "todos", force: true do |t|
    t.string   "todo"
    t.string   "pct_complete"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id"
    t.string   "week_created"
  end

  add_index "todos", ["user_id"], name: "index_todos_on_user_id", using: :btree

  create_table "users", force: true do |t|
    t.string   "name"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "password_digest"
    t.string   "remember_token"
    t.text     "photo"
    t.integer  "team_id"
  end

  add_index "users", ["remember_token"], name: "index_users_on_remember_token", using: :btree
  add_index "users", ["team_id"], name: "index_users_on_team_id", using: :btree

end
