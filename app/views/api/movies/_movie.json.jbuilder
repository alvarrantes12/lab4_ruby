json.extract! movie, :id, :name, :publicationYear, :created_at, :updated_at
json.url movie_url(movie, format: :json)
