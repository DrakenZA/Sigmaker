class AddTitleToSiglink < ActiveRecord::Migration[5.0]
  def change
    add_column :siglinks, :title, :string
  end
end
