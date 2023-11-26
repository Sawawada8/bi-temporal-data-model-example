# frozen_string_literal: true

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

ActiveRecord::Schema[7.0].define(version: 20_231_126_030_436) do
  # These are extensions that must be enabled in order to support this database
  enable_extension 'plpgsql'

  create_table 'engineers', force: :cascade do |t|
    t.string 'name', null: false
    t.integer 'bitemporal_id'
    t.datetime 'valid_from'
    t.datetime 'valid_to'
    t.datetime 'transaction_from'
    t.datetime 'transaction_to'
  end

  create_table 'skills', force: :cascade do |t|
    t.bigint 'engineer_id', null: false
    t.string 'name', null: false
    t.text 'description'
    t.integer 'level', null: false
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.index ['engineer_id'], name: 'index_skills_on_engineer_id'
  end
end
