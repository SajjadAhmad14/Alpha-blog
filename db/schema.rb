ActiveRecord::Schema.define(version: 2020_10_24_124823) do

  create_table "articles", force: :cascade do |t|
    t.string "title"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
