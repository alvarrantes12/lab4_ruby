class CreateMovies < ActiveRecord::Migration[7.0]
  def change
    create_table :movies do |t|
      t.belongs_to :movie_director
      t.string :name
      t.integer :year

      t.timestamps
    end
  end
end
