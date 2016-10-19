class CreateSiglinks < ActiveRecord::Migration[5.0]
  def change
    create_table :siglinks do |t|
      t.string :linkpath
      t.references :siginfo

      t.timestamps
    end
  end
end
