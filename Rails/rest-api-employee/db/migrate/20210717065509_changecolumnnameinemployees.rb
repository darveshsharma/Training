class Changecolumnnameinemployees < ActiveRecord::Migration[6.1]
  def change
    rename_column(:employees ,:dedignation ,:designation)
  end
end
