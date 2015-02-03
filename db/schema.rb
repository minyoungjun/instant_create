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

ActiveRecord::Schema.define(version: 20150203014228) do

  create_table "costs", force: true do |t|
    t.integer  "product_id"
    t.float    "amount"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "details", force: true do |t|
    t.integer  "product_id"
    t.integer  "cost_id"
    t.integer  "feature_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "featpers", force: true do |t|
    t.integer  "featunit_id"
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "featselects", force: true do |t|
    t.integer  "product_id"
    t.integer  "feature_id"
    t.integer  "featunit_id"
    t.boolean  "is_other",    default: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "featunits", force: true do |t|
    t.integer  "feature_id"
    t.string   "name"
    t.integer  "unitype"
    t.integer  "per_type",   default: 0
    t.boolean  "is_other",   default: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "features", force: true do |t|
    t.integer  "showtype_id"
    t.string   "name"
    t.integer  "featype"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "featvalues", force: true do |t|
    t.integer  "feature_id"
    t.integer  "featper_id"
    t.integer  "product_id"
    t.integer  "detail_id"
    t.string   "content"
    t.integer  "amount_i"
    t.float    "amount_f"
    t.float    "amount_f_2"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "marketingtypes", force: true do |t|
    t.integer  "parent_id"
    t.integer  "showtype_id"
    t.string   "name"
    t.integer  "filter"
    t.boolean  "can_select",  default: true
    t.boolean  "is_mobile",   default: false
    t.integer  "mobile_type"
    t.boolean  "global",      default: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "pervalues", force: true do |t|
    t.integer  "featvalue_id"
    t.integer  "featper_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "products", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "showtypes", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "valueimages", force: true do |t|
    t.integer  "featvalue_id"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
