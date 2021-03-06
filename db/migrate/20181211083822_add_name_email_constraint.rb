class AddNameEmailConstraint < ActiveRecord::Migration[5.2]

  def up
    change_column_null :users, :first_name, false
    change_column_null :users, :last_name, false
    change_column_null :users, :email, false
  end

  def down
    change_column_null :users, :first_name, true
    change_column_null :users, :last_name, true
    change_column_null :users, :email, true
  end

end
