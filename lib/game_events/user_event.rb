class GameEvents::UserEvent < GameEvents::Base

  SIGNIN_EVENT = "user_sign_in"
  SIGNOUT_EVENT = "user_sign_out"
  LEVEL_UP_EVENT = "user_level_up"

  def self.registered_event_modifiers
    {
        SIGNIN_EVENT => "GameModifiers::UserEventModiriers::UserSigninModifier"
    }
  end

end