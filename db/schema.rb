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

ActiveRecord::Schema.define(version: 20170731184806) do

  create_table "simulation_jobs", force: :cascade do |t|
    t.integer  "simulation_id"
    t.string   "status"
    t.text     "job_cache"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "simulation_jobs", ["simulation_id"], name: "index_simulation_jobs_on_simulation_id"

  create_table "simulations", force: :cascade do |t|
    t.string   "status"
    t.text     "job_cache"
    t.string   "staged_dir"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
