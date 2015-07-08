class CreatePhotos < ActiveRecord::Migration
  def change
    create_table :photos do |t|
      t.column :photographer, :string
      t.column :datetaken, :string
      t.column :camera, :string
      t.column :details, :string

      t.timestamps
    end
  end
end
