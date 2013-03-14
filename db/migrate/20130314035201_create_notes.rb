class CreateNotes < ActiveRecord::Migration
  def change
    create_table :notes do |t|
      t.integer :phone
      t.string :email
      t.integer :qq
      t.string :skype
      t.string :name
      t.string :job
      t.integer :tel

      t.timestamps
    end
  end
end
