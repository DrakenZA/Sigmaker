class CreateSiginfos < ActiveRecord::Migration[5.0]
  def change
    create_table :siginfos do |t|
      t.string :userid
      t.string :email
      t.string :phonenum
      t.text :links

      t.timestamps
    end
  end
end
