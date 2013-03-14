class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.integer :type , :default => 1
      t.string :name
      t.string :email
      t.string :password_digest

      t.timestamps
    end
  end
end
