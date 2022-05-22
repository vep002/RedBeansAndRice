

ActiveRecord::Schema.define(version: 2022_05_22_205525) do

  create_table "items", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.integer "amount"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "locations", force: :cascade do |t|
    t.string "name"
    t.float "longitude"
    t.float "latitude"
    t.string "street"
    t.string "city"
    t.string "state"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "stocks", force: :cascade do |t|
    t.integer "location_id", null: false
    t.integer "item_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["item_id"], name: "index_stocks_on_item_id"
    t.index ["location_id"], name: "index_stocks_on_location_id"
  end

  add_foreign_key "stocks", "items"
  add_foreign_key "stocks", "locations"
end
