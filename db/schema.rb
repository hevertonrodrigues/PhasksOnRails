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

ActiveRecord::Schema.define(version: 20140228175001) do

  create_table "categories", force: true do |t|
    t.string   "type",        limit: 1
    t.string   "name"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "collaborators", force: true do |t|
    t.string   "name",       limit: 50
    t.string   "email",      limit: 150
    t.integer  "role_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "collaborators", ["role_id"], name: "index_collaborators_on_role_id"

  create_table "colors", force: true do |t|
    t.string   "name",       limit: 20
    t.string   "hex",        limit: 7
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "projects", force: true do |t|
    t.string   "name",        limit: 100
    t.text     "description"
    t.integer  "color_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "projects", ["color_id"], name: "index_projects_on_color_id"

  create_table "roles", force: true do |t|
    t.string   "role",       limit: 50
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tasks", force: true do |t|
    t.string   "task",            limit: 200
    t.text     "description"
    t.integer  "status"
    t.integer  "collaborator_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "tasks_list_id"
    t.integer  "project_id"
  end

  add_index "tasks", ["collaborator_id"], name: "index_tasks_on_collaborator_id"
  add_index "tasks", ["project_id"], name: "index_tasks_on_project_id"
  add_index "tasks", ["tasks_list_id"], name: "index_tasks_on_tasks_list_id"

  create_table "tasks_lists", force: true do |t|
    t.string   "name",        limit: 200
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
