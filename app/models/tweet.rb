class Tweet
  #username, message
  attr_accessor :username, :message
  ALL_TWEETS = []
  def initialize(username, message)
    @username = username
    @message = message
    ALL_TWEETS << self
  end
  
  def self.all
    ALL_TWEETS
  end
end

# tweet1 = Tweet.new
# tweet1.username = "Jim"
# tweet1.username
# tweet1.message = "Hello"
