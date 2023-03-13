class CreateMemes < ActiveRecord::Migration[6.1]
  def up
    unless ActiveRecord::Base.connection.table_exists?(:memes)
      create_table  :memes do |t|
        t.string :description
        t.references :user, null: false, foreign_key: true
  
        t.timestamps
      end
    end
  end

  def down
    drop_table :memes, if_exists: true
  end
end
