class CreateMovies < ActiveRecord::Migration[6.1]
  def change
    create_table :movies do |t|
      t.string :code
      t.string :name

      t.integer :lock_version, default: 0
      t.timestamps
    end
    add_index :movies, :code, unique: true
  end
end
