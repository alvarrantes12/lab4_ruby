class CreateMovieDirectors < ActiveRecord::Migration[7.0]
  def change
    create_table :movie_directors do |t|
      t.string :name
      t.string :last_name

      t.timestamps
    end
  end
end
