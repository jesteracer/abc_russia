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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20130624032750) do

  create_table "curations", :force => true do |t|
    t.integer  "user_id"
    t.integer  "person_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "curations", ["person_id"], :name => "index_curations_on_person_id"
  add_index "curations", ["user_id"], :name => "index_curations_on_user_id"

  create_table "delayed_jobs", :force => true do |t|
    t.integer  "priority",   :default => 0, :null => false
    t.integer  "attempts",   :default => 0, :null => false
    t.text     "handler",                   :null => false
    t.text     "last_error"
    t.datetime "run_at"
    t.datetime "locked_at"
    t.datetime "failed_at"
    t.string   "locked_by"
    t.string   "queue"
    t.datetime "created_at",                :null => false
    t.datetime "updated_at",                :null => false
  end

  add_index "delayed_jobs", ["priority", "run_at"], :name => "delayed_jobs_priority"

  create_table "people", :force => true do |t|
    t.string   "fio"
    t.text     "about"
    t.date     "birth_date"
    t.text     "accused_for"
    t.text     "contacts"
    t.text     "accounts"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
    t.date     "imprisoned_date"
    t.date     "release_date"
    t.string   "address"
  end

  create_table "photos", :force => true do |t|
    t.integer  "person_id"
    t.datetime "created_at",                                 :null => false
    t.datetime "updated_at",                                 :null => false
    t.string   "attachment_file_name"
    t.string   "attachment_content_type"
    t.integer  "attachment_file_size"
    t.datetime "attachment_updated_at"
    t.boolean  "main",                    :default => false
  end

  add_index "photos", ["person_id"], :name => "index_photos_on_person_id"

  create_table "users", :force => true do |t|
    t.datetime "created_at",                                           :null => false
    t.datetime "updated_at",                                           :null => false
    t.string   "email",                                                :null => false
    t.string   "encrypted_password", :limit => 128,                    :null => false
    t.string   "confirmation_token", :limit => 128
    t.string   "remember_token",     :limit => 128,                    :null => false
    t.boolean  "admin",                             :default => false
    t.boolean  "curator",                           :default => false
  end

  add_index "users", ["email"], :name => "index_users_on_email"
  add_index "users", ["remember_token"], :name => "index_users_on_remember_token"

end
