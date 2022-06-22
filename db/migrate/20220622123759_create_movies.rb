class CreateMovies < ActiveRecord::Migration[7.0]
  def change
    create_table :movies do |t|
      t.string :name
      t.integer :age
      t.belongs_to :director

      t.timestamps
    end
  end
end
