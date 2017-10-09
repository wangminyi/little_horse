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

ActiveRecord::Schema.define(version: 20171008074536) do

  create_table "items", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "prices", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "product_id"
    t.string   "location"
    t.integer  "price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["location"], name: "index_prices_on_location", using: :btree
    t.index ["price"], name: "index_prices_on_price", using: :btree
    t.index ["product_id"], name: "index_prices_on_product_id", using: :btree
  end

  create_table "products", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "name"
    t.string   "brand"
    t.string   "label"
    t.string   "image"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["brand"], name: "index_products_on_brand", using: :btree
    t.index ["name"], name: "index_products_on_name", using: :btree
  end

  create_table "rewards", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "name"
    t.string   "reward_company"
    t.string   "undertake_company"
    t.string   "reward_nature"
    t.string   "reward_type"
    t.date     "reward_at"
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
