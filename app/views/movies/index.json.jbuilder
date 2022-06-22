json.array! @movies do |movie|
  json.id movie.id
  json.name movie.name
  json.premiere_date movie.premiere_date
  json.director do
    json.id movie.director.id
    json.firstname movie.director.firstname
    json.lastname movie.director.lastname
  end
end