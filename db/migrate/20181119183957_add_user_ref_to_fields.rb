class AddUserRefToFields < ActiveRecord::Migration[5.2]
  def change
    add_reference :fields, :user, foreign_key: true
  end
end
