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

ActiveRecord::Schema.define(version: 20140213222812) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "cohorts", force: true do |t|
    t.date     "date_start"
    t.date     "date_end"
    t.integer  "number"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "pods", force: true do |t|
    t.string   "building"
    t.integer  "slot_num"
    t.integer  "cohort_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "pods", ["cohort_id"], name: "index_pods_on_cohort_id", using: :btree

  create_table "roles", force: true do |t|
    t.string   "name"
    t.integer  "resource_id"
    t.string   "resource_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "roles", ["name", "resource_type", "resource_id"], name: "index_roles_on_name_and_resource_type_and_resource_id", using: :btree
  add_index "roles", ["name"], name: "index_roles_on_name", using: :btree

  create_table "student_pods", force: true do |t|
    t.integer  "student_id"
    t.integer  "pod_id"
    t.integer  "week_num"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "student_pods", ["pod_id"], name: "index_student_pods_on_pod_id", using: :btree
  add_index "student_pods", ["student_id"], name: "index_student_pods_on_student_id", using: :btree

  create_table "students", force: true do |t|
    t.string   "image_url"
    t.string   "f_name"
    t.string   "l_name"
    t.string   "github"
    t.string   "twitter"
    t.string   "email"
    t.integer  "cohort_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "students", ["cohort_id"], name: "index_students_on_cohort_id", using: :btree

  create_table "users", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "name"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  create_table "users_roles", id: false, force: true do |t|
    t.integer "user_id"
    t.integer "role_id"
  end

  add_index "users_roles", ["user_id", "role_id"], name: "index_users_roles_on_user_id_and_role_id", using: :btree

end
