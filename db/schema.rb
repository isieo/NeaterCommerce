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

ActiveRecord::Schema.define(:version => 20110604164133) do

  create_table "addresses", :force => true do |t|
    t.integer  "customer_id"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "address1"
    t.string   "address2"
    t.string   "city"
    t.integer  "state_id"
    t.string   "zip_code"
    t.integer  "country_id"
    t.string   "phone"
    t.string   "state_name"
    t.boolean  "archived"
    t.datetime "archived_at"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "addresses_customers", :id => false, :force => true do |t|
    t.integer "address_id",  :null => false
    t.integer "customer_id", :null => false
  end

  create_table "countries", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "customers", :force => true do |t|
    t.string   "first_name"
    t.string   "middle_name"
    t.string   "last_name"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "gateways", :force => true do |t|
    t.string   "name"
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "item_apis", :force => true do |t|
    t.string   "name"
    t.string   "api_class_name"
    t.text     "options"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "items", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.string   "sku"
    t.integer  "count_on_hand"
    t.integer  "cost_in_cents"
    t.string   "type"
    t.integer  "width"
    t.integer  "height"
    t.integer  "item_api_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "order_lines", :force => true do |t|
    t.integer  "order_id"
    t.integer  "product_id"
    t.integer  "quantity"
    t.integer  "price"
    t.integer  "row_number"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "orders", :force => true do |t|
    t.integer  "customer_id"
    t.string   "number"
    t.integer  "total"
    t.string   "payment_state"
    t.string   "shipping_state"
    t.integer  "shipping_address_id"
    t.integer  "billing_address_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "payment_methods", :force => true do |t|
    t.string   "name"
    t.integer  "gateway_id"
    t.text     "gateway_options"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "payment_profiles", :force => true do |t|
    t.integer  "customer_id"
    t.integer  "address_id"
    t.string   "payment_cim_id"
    t.boolean  "active"
    t.string   "last_digits"
    t.string   "month"
    t.string   "year"
    t.string   "cc_type"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "card_name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "payments", :force => true do |t|
    t.integer  "order_id"
    t.integer  "amount"
    t.integer  "payment_method_id"
    t.string   "state"
    t.string   "response_code"
    t.string   "avs_response"
    t.text     "data"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "product_groups", :force => true do |t|
    t.string   "name"
    t.boolean  "archived"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "product_variants", :force => true do |t|
    t.integer  "item_id"
    t.integer  "product_id"
    t.boolean  "master"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "products", :force => true do |t|
    t.string   "name"
    t.integer  "parent_id"
    t.text     "description"
    t.integer  "product_group_id"
    t.integer  "item_id"
    t.integer  "cents"
    t.boolean  "archived"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "states", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "user_actions", :force => true do |t|
    t.integer  "user_id"
    t.string   "action"
    t.text     "data"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", :force => true do |t|
    t.string   "email",                                 :default => "", :null => false
    t.string   "encrypted_password",     :limit => 128, :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",                         :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

end
