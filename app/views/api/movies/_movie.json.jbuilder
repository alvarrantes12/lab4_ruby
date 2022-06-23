json.extract! movie, :id, :name, :publication_year, :created_at, :updated_at
json.url movie_url(movie, format: :json)
