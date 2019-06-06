require "chuck_norris"

class Chuckjokes
  attr_accessor :jokes
  def initialize(jokes)
    @jokes = jokes
  end
  def self.help
  end
  def self.get_joke_by_id(id)
    id_joke = ChuckNorris::JokeFinder.find_joke(id)
    id_joke.joke
  end
  def self.replace_name(name)
  end
  def self.random
    joke = ChuckNorris::JokeFinder.get_joke
    puts joke.joke
  end
end
