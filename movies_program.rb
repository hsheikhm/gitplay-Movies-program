movies = {
  Memento: 3,
  Primer: 4,
  Ishtar: 1,
  Superman: 4,
  Inception: 3,
  Batman: 5,
  Titanic: 3,
  Speed: 4,
  Gladiator: 5
}

puts """
What would you like to do? Please choose from the following 4 options:

-- Type 'add' if you wish to add a movie to the listing.
-- Type 'update' if you wish to update an existing movie on the listing.
-- Type 'display' if you wish to see all existing movies on the listing.
-- Type 'delete' if you wish to remove an existing movie from the listing."""

choice = gets.chomp.downcase
case choice
when 'add'
  puts "What movie do you want to add?"
  title = gets.chomp
  if movies[title.to_sym].nil?
    puts "What's the rating? (Type a number 0 to 4.)"
    rating = gets.chomp
    movies[title.to_sym] = rating.to_i
    puts "#{title} has been added with a rating of #{rating}."
  else
    puts "That movie already exists! Its rating is #{movies[title.to_sym]}."
  end
when 'update'
  puts "What movie do you want to update?"
  title = gets.chomp
  if movies[title.to_sym].nil?
    puts "Movie not found!"
  else
    puts "What's the new rating? (Type a number 0 to 4.)"
    rating = gets.chomp
    movies[title.to_sym] = rating.to_i
    puts "#{title} has been updated with new rating of #{rating}."
  end
when 'display'
  movies.each do |movie, rating|
    puts "#{movie}: #{rating}"
  end
when 'delete'
  puts "What movie do you want to delete?"
  title = gets.chomp
  if movies[title.to_sym].nil?
    puts "Movie not found!"
  else
    movies.delete(title.to_sym)
    puts "#{title} has been removed."
  end
else
  puts "Sorry, I didn't understand you. You must choose from the folloing four optons:
  -- Type 'add' if you wish to add a movie to the listing.
  -- Type 'update' if you wish to update an existing movie on the listing.
  -- Type 'display' if you wish to see all existing movies on the listing.
  -- Type 'delete' if you wish to remove an existing movie from the listing."
end
