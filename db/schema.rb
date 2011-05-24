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

ActiveRecord::Schema.define(:version => 20110523213552) do

  create_table "admin_sessions", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "admins", :force => true do |t|
    t.string   "username"
    t.string   "crypted_password"
    t.string   "password_salt"
    t.string   "persistence_token"
    t.string   "single_access_token"
    t.string   "perishable_token"
    t.integer  "login_count"
    t.integer  "failed_login_count"
    t.datetime "last_request_at"
    t.datetime "current_login_at"
    t.datetime "last_login_at"
    t.string   "current_login_ip"
    t.string   "last_login_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "articles", :force => true do |t|
    t.string   "title"
    t.boolean  "featured"
    t.boolean  "banner"
    t.integer  "color_box_id"
    t.string   "article_url"
    t.integer  "issue_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "article_image_file_name"
    t.string   "article_image_content_type"
    t.integer  "article_image_file_size"
    t.datetime "article_image_updated_at"
    t.string   "sub_title"
    t.text     "content"
  end

  add_index "articles", ["color_box_id"], :name => "index_articles_on_color_box_id"
  add_index "articles", ["issue_id"], :name => "index_articles_on_issue_id"

  create_table "color_boxes", :force => true do |t|
    t.string   "color"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "issues", :force => true do |t|
    t.string   "title"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "issue_cover_file_name"
    t.string   "issue_cover_content_type"
    t.integer  "issue_cover_file_size"
    t.datetime "issue_cover_updated_at"
    t.boolean  "active"
  end

end
