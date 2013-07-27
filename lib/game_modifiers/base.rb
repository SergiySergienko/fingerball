class GamseModifiers::Base

  def self.can_modify?(instance_to_modify)
    raise "should be overrided!"
  end

  def self.modify(instance_to_modify, options = {})
    raise "should be overrided!"
  end

end