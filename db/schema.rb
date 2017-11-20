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

ActiveRecord::Schema.define(version: 20171117045815) do

  create_table "books", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string "title"
    t.string "desc"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "comments", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string "title"
    t.string "desc"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "departments", primary_key: "dept_no", id: :string, limit: 4, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string "dept_name", limit: 40, null: false
    t.index ["dept_name"], name: "dept_name", unique: true
  end

  create_table "dept_emp", primary_key: ["emp_no", "dept_no"], force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.integer "emp_no", null: false, unsigned: true
    t.string "dept_no", limit: 4, null: false
    t.date "from_date", null: false
    t.date "to_date", null: false
    t.index ["dept_no"], name: "dept_no"
    t.index ["emp_no"], name: "emp_no"
  end

  create_table "employees", primary_key: "emp_no", id: :integer, unsigned: true, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string "name", limit: 50, null: false
    t.string "gender", limit: 1, null: false
    t.date "birth_date", null: false
    t.date "hire_date", null: false
  end

  create_table "events", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string "title"
    t.string "desc"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "patients", primary_key: "patientID", id: :integer, unsigned: true, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string "name", limit: 30, default: "", null: false
    t.date "dateOfBirth", null: false
    t.date "lastVisitDate", null: false
    t.date "nextVisitDate"
  end

  create_table "posts", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.integer "law_id"
    t.integer "parent_id"
    t.string "titel"
    t.string "text"
    t.string "content"
    t.string "url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "product_details", primary_key: "productID", id: :integer, unsigned: true, default: nil, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.text "comment"
  end

  create_table "products", primary_key: "productID", id: :integer, unsigned: true, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string "productCode", limit: 3, default: "", null: false
    t.string "name", limit: 30, default: "", null: false
    t.integer "quantity", default: 0, null: false, unsigned: true
    t.decimal "price", precision: 7, scale: 2, default: "99999.99", null: false
  end

  create_table "products_suppliers", primary_key: ["productID", "supplierID"], force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.integer "productID", null: false, unsigned: true
    t.integer "supplierID", null: false, unsigned: true
    t.index ["supplierID"], name: "supplierID"
  end

  create_table "suppliers", primary_key: "supplierID", id: :integer, unsigned: true, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string "name", limit: 30, default: "", null: false
    t.string "phone", limit: 8, default: "", null: false
  end

  create_table "users", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string "name"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "dept_emp", "departments", column: "dept_no", primary_key: "dept_no", name: "dept_emp_ibfk_2", on_update: :cascade, on_delete: :cascade
  add_foreign_key "dept_emp", "employees", column: "emp_no", primary_key: "emp_no", name: "dept_emp_ibfk_1", on_update: :cascade, on_delete: :cascade
  add_foreign_key "product_details", "products", column: "productID", primary_key: "productID", name: "product_details_ibfk_1"
  add_foreign_key "products_suppliers", "products", column: "productID", primary_key: "productID", name: "products_suppliers_ibfk_1"
  add_foreign_key "products_suppliers", "suppliers", column: "supplierID", primary_key: "supplierID", name: "products_suppliers_ibfk_2"
end
