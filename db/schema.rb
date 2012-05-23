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

ActiveRecord::Schema.define(:version => 20120523091655) do

  create_table "active_admin_comments", :force => true do |t|
    t.string   "resource_id",   :null => false
    t.string   "resource_type", :null => false
    t.integer  "author_id"
    t.string   "author_type"
    t.text     "body"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
    t.string   "namespace"
  end

  add_index "active_admin_comments", ["author_type", "author_id"], :name => "index_active_admin_comments_on_author_type_and_author_id"
  add_index "active_admin_comments", ["namespace"], :name => "index_active_admin_comments_on_namespace"
  add_index "active_admin_comments", ["resource_type", "resource_id"], :name => "index_admin_notes_on_resource_type_and_resource_id"

  create_table "admin_users", :force => true do |t|
    t.string   "email",                  :default => "", :null => false
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
  end

  add_index "admin_users", ["email"], :name => "index_admin_users_on_email", :unique => true
  add_index "admin_users", ["reset_password_token"], :name => "index_admin_users_on_reset_password_token", :unique => true

  create_table "authors", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "categories", :force => true do |t|
    t.string   "title"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "ckeditor_assets", :force => true do |t|
    t.string   "data_file_name",                  :null => false
    t.string   "data_content_type"
    t.integer  "data_file_size"
    t.integer  "assetable_id"
    t.string   "assetable_type",    :limit => 30
    t.string   "type",              :limit => 30
    t.datetime "created_at",                      :null => false
    t.datetime "updated_at",                      :null => false
  end

  add_index "ckeditor_assets", ["assetable_type", "assetable_id"], :name => "idx_ckeditor_assetable"
  add_index "ckeditor_assets", ["assetable_type", "type", "assetable_id"], :name => "idx_ckeditor_assetable_type"

  create_table "hp_first_thumbs", :force => true do |t|
    t.string   "one_file_name"
    t.string   "one_content_type"
    t.integer  "one_file_size"
    t.datetime "one_updated_at"
    t.string   "two_file_name"
    t.string   "two_content_type"
    t.integer  "two_file_size"
    t.datetime "two_updated_at"
    t.string   "three_file_name"
    t.string   "three_content_type"
    t.integer  "three_file_size"
    t.datetime "three_updated_at"
    t.string   "four_file_name"
    t.string   "four_content_type"
    t.integer  "four_file_size"
    t.datetime "four_updated_at"
    t.string   "five_file_name"
    t.string   "five_content_type"
    t.integer  "five_file_size"
    t.datetime "five_updated_at"
    t.string   "six_file_name"
    t.string   "six_content_type"
    t.integer  "six_file_size"
    t.datetime "six_updated_at"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
    t.integer  "first_article_id"
    t.integer  "second_article_id"
    t.integer  "third_article_id"
    t.integer  "fourth_article_id"
    t.integer  "fifth_article_id"
    t.integer  "sixth_article_id"
  end

  create_table "hp_main_images", :force => true do |t|
    t.string   "one_file_name"
    t.string   "one_content_type"
    t.integer  "one_file_size"
    t.datetime "one_updated_at"
    t.string   "two_file_name"
    t.string   "two_content_type"
    t.integer  "two_file_size"
    t.datetime "two_updated_at"
    t.string   "three_file_name"
    t.string   "three_content_type"
    t.integer  "three_file_size"
    t.datetime "three_updated_at"
    t.string   "four_file_name"
    t.string   "four_content_type"
    t.integer  "four_file_size"
    t.datetime "four_updated_at"
    t.string   "five_file_name"
    t.string   "five_content_type"
    t.integer  "five_file_size"
    t.datetime "five_updated_at"
    t.string   "six_file_name"
    t.string   "six_content_type"
    t.integer  "six_file_size"
    t.datetime "six_updated_at"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
    t.integer  "first_article_id"
    t.integer  "second_article_id"
    t.integer  "third_article_id"
    t.integer  "fourth_article_id"
    t.integer  "fifth_article_id"
    t.integer  "sixth_article_id"
    t.integer  "rotate_delay"
  end

  create_table "hp_second_thumbs", :force => true do |t|
    t.string   "one_file_name"
    t.string   "one_content_type"
    t.integer  "one_file_size"
    t.datetime "one_updated_at"
    t.string   "two_file_name"
    t.string   "two_content_type"
    t.integer  "two_file_size"
    t.datetime "two_updated_at"
    t.string   "three_file_name"
    t.string   "three_content_type"
    t.integer  "three_file_size"
    t.datetime "three_updated_at"
    t.string   "four_file_name"
    t.string   "four_content_type"
    t.integer  "four_file_size"
    t.datetime "four_updated_at"
    t.string   "five_file_name"
    t.string   "five_content_type"
    t.integer  "five_file_size"
    t.datetime "five_updated_at"
    t.string   "six_file_name"
    t.string   "six_content_type"
    t.integer  "six_file_size"
    t.datetime "six_updated_at"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
    t.integer  "first_article_id"
    t.integer  "second_article_id"
    t.integer  "third_article_id"
    t.integer  "fourth_article_id"
    t.integer  "fifth_article_id"
    t.integer  "sixth_article_id"
  end

  create_table "hp_third_thumbs", :force => true do |t|
    t.string   "one_file_name"
    t.string   "one_content_type"
    t.integer  "one_file_size"
    t.datetime "one_updated_at"
    t.string   "two_file_name"
    t.string   "two_content_type"
    t.integer  "two_file_size"
    t.datetime "two_updated_at"
    t.string   "three_file_name"
    t.string   "three_content_type"
    t.integer  "three_file_size"
    t.datetime "three_updated_at"
    t.string   "four_file_name"
    t.string   "four_content_type"
    t.integer  "four_file_size"
    t.datetime "four_updated_at"
    t.string   "five_file_name"
    t.string   "five_content_type"
    t.integer  "five_file_size"
    t.datetime "five_updated_at"
    t.string   "six_file_name"
    t.string   "six_content_type"
    t.integer  "six_file_size"
    t.datetime "six_updated_at"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
    t.integer  "first_article_id"
    t.integer  "second_article_id"
    t.integer  "third_article_id"
    t.integer  "fourth_article_id"
    t.integer  "fifth_article_id"
    t.integer  "sixth_article_id"
  end

  create_table "photographers", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "posts", :force => true do |t|
    t.text     "content"
    t.datetime "created_at",                         :null => false
    t.datetime "updated_at",                         :null => false
    t.integer  "category_id"
    t.string   "story_title"
    t.string   "story_subtitle"
    t.integer  "author_id"
    t.integer  "photographer_id"
    t.boolean  "published",       :default => false, :null => false
    t.date     "publish_date"
    t.string   "country"
    t.string   "city"
  end

  create_table "taggings", :force => true do |t|
    t.integer  "tag_id"
    t.integer  "taggable_id"
    t.string   "taggable_type"
    t.integer  "tagger_id"
    t.string   "tagger_type"
    t.string   "context",       :limit => 128
    t.datetime "created_at"
  end

  add_index "taggings", ["tag_id"], :name => "index_taggings_on_tag_id"
  add_index "taggings", ["taggable_id", "taggable_type", "context"], :name => "index_taggings_on_taggable_id_and_taggable_type_and_context"

  create_table "tags", :force => true do |t|
    t.string "name"
  end

end
