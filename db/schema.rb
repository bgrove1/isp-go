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

ActiveRecord::Schema.define(version: 20170419212316) do

  create_table "admin_users", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "first_name",      limit: 25
    t.string   "last_name",       limit: 50
    t.string   "email",           limit: 100, default: "", null: false
    t.string   "username",        limit: 25
    t.datetime "created_at",                               null: false
    t.datetime "updated_at",                               null: false
    t.string   "password_digest"
    t.index ["username"], name: "index_admin_users_on_username", using: :btree
  end

  create_table "admin_users_pages", id: false, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "admin_users_id"
    t.integer "page_id"
    t.index ["admin_users_id", "page_id"], name: "index_admin_users_pages_on_admin_users_id_and_page_id", using: :btree
  end

  create_table "in_store_promoters", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "firstname"
    t.string   "lastname"
    t.float    "leads_per_hour",       limit: 24, default: 0.0
    t.datetime "created_at",                                      null: false
    t.datetime "updated_at",                                      null: false
    t.integer  "territory_id"
    t.integer  "marketing_manager_id",            default: 1
    t.string   "active",                          default: "YES"
    t.index ["active"], name: "index_in_store_promoters_on_active", using: :btree
    t.index ["marketing_manager_id"], name: "index_in_store_promoters_on_marketing_manager_id", using: :btree
    t.index ["territory_id"], name: "index_in_store_promoters_on_territory_id", using: :btree
  end

  create_table "isp_shifts", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "in_store_promoter_id"
    t.time     "time_in"
    t.time     "time_out"
    t.date     "date"
    t.string   "store_id"
    t.integer  "prospects_approached"
    t.integer  "presentations_given"
    t.integer  "leads"
    t.datetime "created_at",                                    null: false
    t.datetime "updated_at",                                    null: false
    t.float    "leads_per_hour",       limit: 24, default: 0.0
    t.index ["in_store_promoter_id"], name: "index_isp_shifts_on_in_store_promoter_id", using: :btree
    t.index ["store_id"], name: "index_isp_shifts_on_store_id", using: :btree
  end

  create_table "marketing_managers", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "first_name",      limit: 25
    t.string   "last_name",       limit: 50
    t.string   "email",                      default: "",  null: false
    t.string   "username",        limit: 25
    t.string   "string",          limit: 25
    t.string   "password_digest"
    t.float    "leads_per_hour",  limit: 24, default: 0.0
    t.datetime "created_at",                               null: false
    t.datetime "updated_at",                               null: false
  end

  create_table "pages", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "subject_id"
    t.string   "name"
    t.string   "permalink"
    t.integer  "position"
    t.boolean  "visible",    default: false
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
    t.index ["permalink"], name: "index_pages_on_permalink", using: :btree
    t.index ["subject_id"], name: "index_pages_on_subject_id", using: :btree
  end

  create_table "section_edits", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "admin_users_id"
    t.integer  "section_id"
    t.string   "summary"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.index ["admin_users_id", "section_id"], name: "index_section_edits_on_admin_users_id_and_section_id", using: :btree
  end

  create_table "sections", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "page_id"
    t.string   "name"
    t.integer  "position"
    t.boolean  "visible",                    default: false
    t.string   "content_type"
    t.text     "content",      limit: 65535
    t.datetime "created_at",                                 null: false
    t.datetime "updated_at",                                 null: false
    t.index ["page_id"], name: "index_sections_on_page_id", using: :btree
  end

  create_table "stores", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "territory_id"
    t.string   "name"
    t.string   "manager"
    t.string   "phone_number"
    t.float    "leads_per_hour", limit: 24, default: 0.0
    t.datetime "created_at",                              null: false
    t.datetime "updated_at",                              null: false
    t.integer  "store_number"
  end

  create_table "subjects", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "name"
    t.integer  "position"
    t.boolean  "visible",    default: false
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
  end

  create_table "territories", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "name"
    t.string   "dsm"
    t.float    "leads_per_hour",         limit: 24, default: 0.0
    t.integer  "number_of_stores"
    t.integer  "number_of_hours_worked"
    t.integer  "number_of_active_isps"
    t.datetime "created_at",                                      null: false
    t.datetime "updated_at",                                      null: false
    t.integer  "marketing_manager_id",              default: 1
    t.index ["marketing_manager_id"], name: "index_territories_on_marketing_manager_id", using: :btree
  end

end
