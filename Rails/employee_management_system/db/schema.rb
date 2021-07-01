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

ActiveRecord::Schema.define(version: 2021_07_01_065158) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "comments", force: :cascade do |t|
    t.string "content"
    t.string "feedback_type"
    t.bigint "feedback_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["feedback_type", "feedback_id"], name: "index_comments_on_feedback"
  end

  create_table "departments", force: :cascade do |t|
    t.string "Department_Name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "dependents", force: :cascade do |t|
    t.bigint "employee_id"
    t.string "Name"
    t.bigint "Contact_Number"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["employee_id"], name: "index_dependents_on_employee_id"
  end

  create_table "employees", force: :cascade do |t|
    t.string "Name"
    t.string "Last_Name"
    t.string "Gender", limit: 1
    t.date "DOB"
    t.date "DOJ"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "department_id"
    t.integer "Age"
    t.integer "Total_Years"
    t.index ["department_id"], name: "index_employees_on_department_id"
  end

  create_table "project_assignments", force: :cascade do |t|
    t.bigint "employee_id"
    t.bigint "project_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["employee_id"], name: "index_project_assignments_on_employee_id"
    t.index ["project_id"], name: "index_project_assignments_on_project_id"
  end

  create_table "projects", force: :cascade do |t|
    t.string "Project_Name"
    t.string "Status"
    t.date "Deploying_Date"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
