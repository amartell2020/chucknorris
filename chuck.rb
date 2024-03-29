require "chuck_norris"

class Chuckjokes
  def self.help
    puts "Enter what you would like to do\nFor a random joke enter 'ruby app.rb random'\nFor an id, enter 'ruby app.rb (enter # here)'\nTo replace a name enter 'ruby app.rb (fist name, last name)'"
  end
  def self.get_joke_by_id(id)
    id_joke = ChuckNorris::JokeFinder.find_joke(id)
    if id_joke.id == 'id'
      puts "Chuck Norris killed this joke"
    else
      puts id_joke.joke
      puts "ID #{id_joke.id}"
    end
  end
  def self.replace_name(nam1, nam2)
      change = ChuckNorris::JokeFinder.get_joke(first_name: nam1, last_name: nam2)
      puts change.joke
      puts "ID #{change.id}"
  end
  def self.random
    joke = ChuckNorris::JokeFinder.get_joke
    puts joke.joke
    puts "ID #{joke.id}"
  end
end
