class UserType::Manager < UserType::Base

  def initialize(user)
    self.key = "manager"
    super(user)
  end

  def self.key
    "manager"
  end

end