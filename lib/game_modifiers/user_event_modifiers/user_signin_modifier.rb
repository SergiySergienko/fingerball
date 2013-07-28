class GameModifiers::UserEventModiriers::UserSigninModifier < GameModifiers::UserModifier

  def self.can_modify?(instance_to_modify, options = {})
    return true if super(instance_to_modify) && options[:game_event] == GameEvents::UserEvent::SIGNIN_EVENT
  end

  def self.modify(instance_to_modify, options = {})
    instance_to_modify.user_attributes.find_by_attribute_type("last_activity_time").value = Time.now
    instance_to_modify.user_attributes.find_by_attribute_type("last_activity_action").value = GameEvents::UserEvent::SIGNIN_EVENT
  end

end