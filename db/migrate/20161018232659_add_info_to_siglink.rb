class AddInfoToSiglink < ActiveRecord::Migration[5.0]
  def change
    add_column :siglinks, :info, :text

  end
end
