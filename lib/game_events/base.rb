class GameEvents::Base
  # Base class

  def self.registered_event_modifiers
    {}
  end

  def self.proceed_modifiers(instance_to_modify, options = {})
    registered_event_modifiers.each do |game_event_name, modifier_klass|
      options.merge!({:game_event => game_event_name})
      modifier_klass.constantize.modify(instance_to_modify, options) if modifier_klass.constantize.can_modify?(instance_to_modify, options)
    end
  end

end