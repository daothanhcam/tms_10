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

ActiveRecord::Schema.define(version: 20150227075054) do

  create_table "activities", force: true do |t|
    t.text     "act_type"
    t.integer  "user_id"
    t.integer  "cource_id"
    t.integer  "subject_id"
    t.integer  "task_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "activities", ["cource_id"], name: "index_activities_on_cource_id", using: :btree
  add_index "activities", ["subject_id"], name: "index_activities_on_subject_id", using: :btree
  add_index "activities", ["task_id"], name: "index_activities_on_task_id", using: :btree
  add_index "activities", ["user_id"], name: "index_activities_on_user_id", using: :btree

  create_table "courses", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "start"
    t.datetime "finish"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "courses_subjects", force: true do |t|
    t.integer  "course_id"
    t.integer  "subject_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "courses_subjects", ["course_id"], name: "index_courses_subjects_on_course_id", using: :btree
  add_index "courses_subjects", ["subject_id"], name: "index_courses_subjects_on_subject_id", using: :btree

  create_table "enrollments", force: true do |t|
    t.integer  "user_id"
    t.integer  "course_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "status"
  end

  add_index "enrollments", ["course_id"], name: "index_enrollments_on_course_id", using: :btree
  add_index "enrollments", ["user_id"], name: "index_enrollments_on_user_id", using: :btree

  create_table "subjects", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "start"
    t.datetime "finish"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "subjects", ["user_id"], name: "index_subjects_on_user_id", using: :btree

  create_table "tasks", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "start"
    t.datetime "finish"
    t.integer  "subject_id"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "tasks", ["user_id"], name: "index_tasks_on_user_id", using: :btree

  create_table "users", force: true do |t|
    t.string   "name"
    t.string   "email"
    t.string   "image"
    t.string   "password_digest"
    t.string   "remember_digest"
    t.string   "reset_digest"
    t.string   "activation_digest"
    t.string   "role"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
