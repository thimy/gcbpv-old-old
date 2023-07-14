# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2023_07_14_073729) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

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

  create_table "categories_posts", id: false, force: :cascade do |t|
    t.bigint "category_id", null: false
    t.bigint "post_id", null: false
    t.index ["category_id", "post_id"], name: "index_categories_posts_on_category_id_and_post_id"
    t.index ["post_id", "category_id"], name: "index_categories_posts_on_post_id_and_category_id"
  end

  create_table "cities", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "courses", force: :cascade do |t|
    t.bigint "instrument_id", null: false
    t.bigint "teacher_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "archived"
    t.string "description"
    t.index ["instrument_id"], name: "index_courses_on_instrument_id"
    t.index ["teacher_id"], name: "index_courses_on_teacher_id"
  end

  create_table "courses_seasons", id: false, force: :cascade do |t|
    t.bigint "course_id", null: false
    t.bigint "season_id", null: false
    t.index ["course_id", "season_id"], name: "index_courses_seasons_on_course_id_and_season_id"
    t.index ["season_id", "course_id"], name: "index_courses_seasons_on_season_id_and_course_id"
  end

  create_table "courses_subscriptions", id: false, force: :cascade do |t|
    t.bigint "course_id", null: false
    t.bigint "subscription_id", null: false
    t.index ["course_id", "subscription_id"], name: "index_courses_subscriptions_on_course_id_and_subscription_id"
    t.index ["subscription_id", "course_id"], name: "index_courses_subscriptions_on_subscription_id_and_course_id"
  end

  create_table "d_classes", force: :cascade do |t|
    t.bigint "discovery_id", null: false
    t.bigint "teacher_id", null: false
    t.boolean "archived"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["discovery_id"], name: "index_d_classes_on_discovery_id"
    t.index ["teacher_id"], name: "index_d_classes_on_teacher_id"
  end

  create_table "d_classes_subscriptions", id: false, force: :cascade do |t|
    t.bigint "d_class_id", null: false
    t.bigint "subscription_id", null: false
    t.index ["d_class_id", "subscription_id"], name: "index_d_classes_subscriptions_on_d_class_id_and_subscription_id"
    t.index ["subscription_id", "d_class_id"], name: "index_d_classes_subscriptions_on_subscription_id_and_d_class_id"
  end

  create_table "discoveries", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.decimal "price"
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
    t.string "city"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "address"
  end

  create_table "group_works", force: :cascade do |t|
    t.string "name"
    t.string "location"
    t.decimal "price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "archived"
  end

  create_table "group_works_seasons", id: false, force: :cascade do |t|
    t.bigint "group_work_id", null: false
    t.bigint "season_id", null: false
    t.index ["group_work_id", "season_id"], name: "index_group_works_seasons_on_group_work_id_and_season_id"
    t.index ["season_id", "group_work_id"], name: "index_group_works_seasons_on_season_id_and_group_work_id"
  end

  create_table "instruments", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "archived"
  end

  create_table "meetings", force: :cascade do |t|
    t.string "name"
    t.integer "amount"
    t.string "meeting_day"
    t.text "description"
    t.decimal "price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "archived"
  end

  create_table "payment_states", force: :cascade do |t|
    t.string "name"
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
  end

  create_table "posts", force: :cascade do |t|
    t.string "title"
    t.text "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "status"
    t.bigint "event_id"
    t.index ["event_id"], name: "index_posts_on_event_id"
  end

  create_table "projects", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "archived"
  end

  create_table "projects_seasons", id: false, force: :cascade do |t|
    t.bigint "project_id", null: false
    t.bigint "season_id", null: false
    t.index ["project_id", "season_id"], name: "index_projects_seasons_on_project_id_and_season_id"
    t.index ["season_id", "project_id"], name: "index_projects_seasons_on_season_id_and_project_id"
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
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "archived"
    t.bigint "slot_id"
    t.bigint "course_id"
    t.index ["course_id"], name: "index_sessions_on_course_id"
    t.index ["slot_id"], name: "index_sessions_on_slot_id"
  end

  create_table "sessions_subscriptions", id: false, force: :cascade do |t|
    t.bigint "session_id", null: false
    t.bigint "subscription_id", null: false
    t.index ["session_id", "subscription_id"], name: "index_sessions_subscriptions_on_session_id_and_subscription_id"
    t.index ["subscription_id", "session_id"], name: "index_sessions_subscriptions_on_subscription_id_and_session_id"
  end

  create_table "slots", force: :cascade do |t|
    t.bigint "teacher_id", null: false
    t.bigint "city_id", null: false
    t.time "start_time"
    t.time "end_time"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "day"
    t.string "description"
    t.index ["city_id"], name: "index_slots_on_city_id"
    t.index ["teacher_id"], name: "index_slots_on_teacher_id"
  end

  create_table "staffs", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.integer "start_year"
    t.boolean "is_employee"
    t.text "description"
    t.string "picture"
    t.string "role"
    t.string "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "students", force: :cascade do |t|
    t.string "last_name"
    t.string "first_name"
    t.bigint "payor_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "mail", default: "f"
    t.integer "birthyear"
    t.string "email"
    t.index ["payor_id"], name: "index_students_on_payor_id"
  end

  create_table "subscriptions", force: :cascade do |t|
    t.bigint "season_id", null: false
    t.bigint "student_id", null: false
    t.decimal "amount"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.decimal "amount_paid"
    t.text "information"
    t.bigint "payment_state_id"
    t.index ["payment_state_id"], name: "index_subscriptions_on_payment_state_id"
    t.index ["season_id"], name: "index_subscriptions_on_season_id"
    t.index ["student_id"], name: "index_subscriptions_on_student_id"
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
    t.string "email"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "volunteer"
    t.string "login"
    t.bigint "student_id"
    t.bigint "payor_id"
    t.string "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.bigint "teacher_id"
    t.boolean "admin"
    t.index ["confirmation_token"], name: "index_users_on_confirmation_token", unique: true
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["payor_id"], name: "index_users_on_payor_id"
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
    t.index ["student_id"], name: "index_users_on_student_id"
    t.index ["teacher_id"], name: "index_users_on_teacher_id"
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
    t.boolean "archived"
    t.index ["teacher_id"], name: "index_workshops_on_teacher_id"
  end

  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
  add_foreign_key "active_storage_variant_records", "active_storage_blobs", column: "blob_id"
  add_foreign_key "courses", "instruments"
  add_foreign_key "courses", "teachers"
  add_foreign_key "d_classes", "discoveries"
  add_foreign_key "d_classes", "teachers"
  add_foreign_key "posts", "events"
  add_foreign_key "seasons", "plans"
  add_foreign_key "slots", "cities"
  add_foreign_key "slots", "teachers"
  add_foreign_key "students", "payors"
  add_foreign_key "subscriptions", "seasons"
  add_foreign_key "subscriptions", "students"
  add_foreign_key "workshops", "teachers"
end
