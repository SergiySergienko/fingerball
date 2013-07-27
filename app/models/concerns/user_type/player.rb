class UserType::Player < UserType::Base

  def initialize(user)
    self.key = 'player'
    super(user)
  end

  def self.key
    "player"
  end

end