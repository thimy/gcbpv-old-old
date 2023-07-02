class RetrieveSchema < ActiveRecord::Migration[7.0]
  def change
    create_table "active_storage_attachments", force: :cascade do |t|
      t.string "name", null: false
      t.string "record_type", null: false
      t.bigint "record_id", null: false
      t.bigint "blob_id", null: false
      t.datetime "created_at", null: false
      t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
      t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
    end
  
    create_table "active_storage_blobs", force: :cascade do |t|
      t.string "key", null: false
      t.string "filename", null: false
      t.string "content_type"
      t.text "metadata"
      t.string "service_name", null: false
      t.bigint "byte_size", null: false
      t.string "checksum"
      t.datetime "created_at", null: false
      t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
    end
  
    create_table "active_storage_variant_records", force: :cascade do |t|
      t.bigint "blob_id", null: false
      t.string "variation_digest", null: false
      t.index ["blob_id", "variation_digest"], name: "index_active_storage_variant_records_uniqueness", unique: true
    end
  
    create_table "categories", force: :cascade do |t|
      t.string "name"
      t.string "description"
      t.datetime "created_at", null: false
      t.datetime "updated_at", null: false
    end
  
    create_table "cities", force: :cascade do |t|
      t.string "name"
      t.datetime "created_at", null: false
      t.datetime "updated_at", null: false
    end
  
    create_table "editions", force: :cascade do |t|
      t.string "name"
      t.string "description"
      t.string "format"
      t.decimal "price"
      t.string "image"
      t.datetime "created_at", null: false
      t.datetime "updated_at", null: false
    end
  
    create_table "events", force: :cascade do |t|
      t.string "name"
      t.text "content"
      t.datetime "start_date"
      t.datetime "end_date"
      t.string "address_first"
      t.string "address_second"
      t.string "street"
      t.string "city"
      t.datetime "created_at", null: false
      t.datetime "updated_at", null: false
    end
  
    create_table "instrument_classes", force: :cascade do |t|
      t.bigint "instrument_id", null: false
      t.bigint "teacher_id", null: false
      t.datetime "created_at", null: false
      t.datetime "updated_at", null: false
      t.string "class_day"
      t.time "start_time"
      t.time "end_time"
      t.index ["instrument_id"], name: "index_instrument_classes_on_instrument_id"
      t.index ["teacher_id"], name: "index_instrument_classes_on_teacher_id"
    end
  
    create_table "instrument_classes_seasons", id: false, force: :cascade do |t|
      t.bigint "season_id", null: false
      t.bigint "instrument_class_id", null: false
      t.index ["instrument_class_id"], name: "index_instrument_classes_seasons_on_instrument_class_id"
      t.index ["season_id"], name: "index_instrument_classes_seasons_on_season_id"
    end
  
    create_table "instrument_classes_subscriptions", id: false, force: :cascade do |t|
      t.bigint "instrument_class_id", null: false
      t.bigint "subscription_id", null: false
      t.index ["instrument_class_id"], name: "index_instrument_classes_subscriptions_on_instrument_class_id"
      t.index ["subscription_id"], name: "index_instrument_classes_subscriptions_on_subscription_id"
    end
  
    create_table "instruments", force: :cascade do |t|
      t.string "name"
      t.text "description"
      t.datetime "created_at", null: false
      t.datetime "updated_at", null: false
    end
  
    create_table "payors", force: :cascade do |t|
      t.string "last_name"
      t.string "first_name"
      t.string "street_address"
      t.string "postcode"
      t.string "city"
      t.string "phone"
      t.string "mail"
      t.datetime "created_at", null: false
      t.datetime "updated_at", null: false
    end
  
    create_table "plans", force: :cascade do |t|
      t.string "name"
      t.decimal "class_price"
      t.decimal "workshop_price"
      t.decimal "obc_markup"
      t.decimal "outbounds_markup"
      t.datetime "created_at", null: false
      t.datetime "updated_at", null: false
      t.decimal "awakening_price", default: "0.0"
      t.decimal "kids_discovery_price", default: "0.0"
      t.decimal "discovery_price", default: "0.0"
    end
  
    create_table "posts", force: :cascade do |t|
      t.string "title"
      t.text "content"
      t.datetime "created_at", null: false
      t.datetime "updated_at", null: false
      t.string "status"
      t.bigint "event_id"
      t.bigint "category_id"
      t.index ["category_id"], name: "index_posts_on_category_id"
      t.index ["event_id"], name: "index_posts_on_event_id"
    end
  
    create_table "seasons", force: :cascade do |t|
      t.integer "start_year"
      t.bigint "plan_id", null: false
      t.datetime "created_at", null: false
      t.datetime "updated_at", null: false
      t.index ["plan_id"], name: "index_seasons_on_plan_id"
    end
  
    create_table "seasons_workshops", id: false, force: :cascade do |t|
      t.bigint "workshop_id", null: false
      t.bigint "season_id", null: false
      t.index ["season_id"], name: "index_seasons_workshops_on_season_id"
      t.index ["workshop_id"], name: "index_seasons_workshops_on_workshop_id"
    end
  
    create_table "sessions", force: :cascade do |t|
      t.bigint "instrument_class_id", null: false
      t.bigint "city_id", null: false
      t.time "start_time"
      t.time "end_time"
      t.datetime "created_at", null: false
      t.datetime "updated_at", null: false
      t.string "day"
      t.index ["city_id"], name: "index_sessions_on_city_id"
      t.index ["instrument_class_id"], name: "index_sessions_on_instrument_class_id"
    end
  
    create_table "students", force: :cascade do |t|
      t.string "last_name"
      t.string "first_name"
      t.bigint "payor_id", null: false
      t.datetime "created_at", null: false
      t.datetime "updated_at", null: false
      t.string "mail", default: "f"
      t.integer "birthyear"
      t.index ["payor_id"], name: "index_students_on_payor_id"
    end
  
    create_table "subscriptions", force: :cascade do |t|
      t.bigint "season_id", null: false
      t.bigint "student_id", null: false
      t.decimal "amount"
      t.datetime "created_at", null: false
      t.datetime "updated_at", null: false
      t.decimal "amount_paid"
      t.bigint "instrument_class_id"
      t.bigint "workshop_id"
      t.string "status"
      t.index ["instrument_class_id"], name: "index_subscriptions_on_instrument_class_id"
      t.index ["season_id"], name: "index_subscriptions_on_season_id"
      t.index ["student_id"], name: "index_subscriptions_on_student_id"
      t.index ["workshop_id"], name: "index_subscriptions_on_workshop_id"
    end

    create_table "subscriptions_workshops", id: false, force: :cascade do |t|
      t.bigint "subscription_id", null: false
      t.bigint "workshop_id", null: false
      t.index ["subscription_id"], name: "index_subscriptions_workshops_on_subscription_id"
      t.index ["workshop_id"], name: "index_subscriptions_workshops_on_workshop_id"
    end

    create_table "teachers", force: :cascade do |t|
      t.string "name"
      t.text "description"
      t.string "picture"
      t.datetime "created_at", null: false
      t.datetime "updated_at", null: false
      t.string "status"
    end

    create_table "workshops", force: :cascade do |t|
      t.string "name"
      t.bigint "teacher_id", null: false
      t.text "description"
      t.string "workshop_day"
      t.time "start_time"
      t.time "end_time"
      t.string "location"
      t.datetime "created_at", null: false
      t.datetime "updated_at", null: false
      t.string "workshop_type"
      t.index ["teacher_id"], name: "index_workshops_on_teacher_id"
    end
  
    add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
    add_foreign_key "active_storage_variant_records", "active_storage_blobs", column: "blob_id"
    add_foreign_key "instrument_classes", "instruments"
    add_foreign_key "instrument_classes", "teachers"
    add_foreign_key "posts", "categories"
    add_foreign_key "posts", "events"
    add_foreign_key "seasons", "plans"
    add_foreign_key "sessions", "cities"
    add_foreign_key "sessions", "instrument_classes"
    add_foreign_key "students", "payors"
    add_foreign_key "subscriptions", "instrument_classes"
    add_foreign_key "subscriptions", "seasons"
    add_foreign_key "subscriptions", "students"
    add_foreign_key "subscriptions", "workshops"
    add_foreign_key "workshops", "teachers"
  end
end
