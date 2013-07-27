class UserType::Base

  attr_accessor :user, :key

  def initialize(user)
    self.user = user
    self.key = 'player'
  end

end