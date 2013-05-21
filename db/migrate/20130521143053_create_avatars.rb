class CreateAvatars < ActiveRecord::Migration
  def change
    create_table :avatars do |t|
      t.string :content_type
      t.string :avatar_for
      t.string :file_name
      t.string :file_size
      t.integer :avatar_id
      t.string :avatar

      t.timestamps
    end
  end
end
