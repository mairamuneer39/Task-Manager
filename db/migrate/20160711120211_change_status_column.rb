class ChangeStatusColumn < ActiveRecord::Migration
  def change
    change_column :tasks, :status, :default => "New"
  end
end
