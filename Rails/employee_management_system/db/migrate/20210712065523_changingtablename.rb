class Changingtablename < ActiveRecord::Migration[6.1]
  def change
    rename_table :dependents, :nominees
  end
end
