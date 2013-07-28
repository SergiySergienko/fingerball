class GamseModifiers::UserModifier < GamseModifiers::Base

  def self.can_modify?(instance_to_modify, options = {})
    return true if instance_to_modify.is_a?(User)
  end

  def self.modify(instance_to_modify, options = {})
    raise "should be overrided!"
  end

end