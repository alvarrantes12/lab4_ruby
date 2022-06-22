json.extract! movie, :id, :name, :age, :created_at, :updated_at
json.url movie_url(movie, format: :json)
