json.extract! movie, :id, :name, :year_of_publication, :created_at, :updated_at
json.url movie_url(movie, format: :json)
