class ChangeColumnName < ActiveRecord::Migration[5.2]
  def change
    rename_column :messages, :body, :message
  end
end

