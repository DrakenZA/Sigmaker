class AddNameToSiginfo < ActiveRecord::Migration[5.0]
  def change
    add_column :siginfos, :name, :string

  end
end
