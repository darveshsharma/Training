class ChangingColumnsCase < ActiveRecord::Migration[6.1]
  def change
    rename_column(:employees ,:Name ,:name)
    rename_column(:employees ,:Last_Name ,:last_name)
    rename_column(:employees ,:Gender ,:gender)
    rename_column(:employees ,:DOB ,:dob)
    rename_column(:employees ,:DOJ ,:doj)
    rename_column(:employees ,:Age ,:age)
    rename_column(:employees ,:Total_Years ,:total_years)
    rename_column(:projects ,:Project_Name,:name)
    rename_column(:projects ,:Status ,:status)
    rename_column(:projects ,:Deploying_Date ,:deploying_date)
    rename_column(:departments ,:Department_Name ,:name)
    rename_column(:dependents ,:Name ,:name)
    rename_column(:dependents ,:Contact_Number ,:contact_number)
  end
end
