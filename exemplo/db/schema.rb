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

ActiveRecord::Schema.define(version: 20151008230237) do

  create_table "accounts", force: :cascade do |t|
    t.string   "agencia"
    t.string   "banco"
    t.string   "conta"
    t.float    "saldo"
    t.float    "limite"
    t.float    "codigo_cliente"
    t.date     "data_cadastro"
    t.string   "cpf"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.string   "nome"
    t.string   "name"
  end

  create_table "users", force: :cascade do |t|
    t.string   "last_name"
    t.string   "address"
    t.integer  "code"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "mail"
    t.string   "password"
  end

end
