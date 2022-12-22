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

ActiveRecord::Schema[7.0].define(version: 2022_12_21_092437) do
  create_table "Creatassembiliesandparts", force: :cascade do |t|
    t.integer "assembly_id"
    t.integer "part_id"
    t.index ["assembly_id"], name: "index_Creatassembiliesandparts_on_assembly_id"
    t.index ["part_id"], name: "index_Creatassembiliesandparts_on_part_id"
  end

  create_table "articles", force: :cascade do |t|
    t.string "book_name"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_articles_on_user_id"
  end

  create_table "assembilies", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "comments", force: :cascade do |t|
    t.string "title"
    t.integer "article_id"
    t.integer "news_id"
    t.integer "event_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["article_id"], name: "index_comments_on_article_id"
    t.index ["event_id"], name: "index_comments_on_event_id"
    t.index ["news_id"], name: "index_comments_on_news_id"
  end

  create_table "commets", force: :cascade do |t|
    t.string "title"
    t.integer "article_id"
    t.integer "news_id"
    t.integer "event_id"
    t.index ["article_id"], name: "index_commets_on_article_id"
    t.index ["event_id"], name: "index_commets_on_event_id"
    t.index ["news_id"], name: "index_commets_on_news_id"
  end

  create_table "parts", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
