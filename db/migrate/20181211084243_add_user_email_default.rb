class AddUserEmailDefault < ActiveRecord::Migration[5.2]
  def change
    change_column_default :users, :email, ''
  end
end
