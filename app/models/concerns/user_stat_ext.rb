module UserStatExt
  extend ActiveSupport::Concern

  included do |klass|
    belongs_to :user
  end

  module ClassMethods

  end

end