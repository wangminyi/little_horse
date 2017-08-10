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

ActiveRecord::Schema.define(version: 20170810091052) do

  create_table "rewards", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "name"
    t.string   "reward_company"
    t.string   "undertake_company"
    t.string   "reward_nature"
    t.string   "reward_type"
    t.datetime "reward_at"
    t.string   "file"
    t.string   "person_name"
    t.string   "person_gender"
    t.string   "person_work_info"
    t.string   "person_salary"
    t.string   "project_name"
    t.string   "project_company"
    t.string   "project_member"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.index ["name"], name: "index_rewards_on_name", using: :btree
    t.index ["person_name"], name: "index_rewards_on_person_name", using: :btree
    t.index ["project_name"], name: "index_rewards_on_project_name", using: :btree
    t.index ["reward_at"], name: "index_rewards_on_reward_at", using: :btree
  end

end