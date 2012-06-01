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

ActiveRecord::Schema.define(:version => 20120517163344) do

  create_table "caseprocedures", :force => true do |t|
    t.string   "laterality"
    t.string   "volume"
    t.integer  "patient_case_id"
    t.integer  "procedure_id"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  create_table "facilities", :force => true do |t|
    t.string   "name"
    t.integer  "physician_id"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "images", :force => true do |t|
    t.date     "date"
    t.time     "time"
    t.string   "image_uri"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "patientcases", :force => true do |t|
    t.date     "procedure_date"
    t.time     "procedure_time"
    t.integer  "facility_id"
    t.string   "firstname"
    t.string   "lastname"
    t.date     "dob"
    t.string   "payment"
    t.string   "dictation"
    t.string   "followup"
    t.integer  "physician_id"
    t.integer  "procedure_id"
    t.integer  "age"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  create_table "physicians", :force => true do |t|
    t.string   "firstname"
    t.string   "lastname"
    t.string   "login"
    t.string   "password"
    t.integer  "specialty_id"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "procedures", :force => true do |t|
    t.string   "name"
    t.integer  "specialty_id"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

end
