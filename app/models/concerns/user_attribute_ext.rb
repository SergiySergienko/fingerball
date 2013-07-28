module UserAttributeExt
  extend ActiveSupport::Concern

  included do |klass|
    belongs_to :user
  end

  module ClassMethods

    def registered_attr_types
      ["last_activity_time", "last_activity_action"]
    end

    def build_base_collection(entity)
      result = []
      registered_attr_types.each do |attr_type|
        result << UserAttribute.new(:attribute_type => attr_type, :value => "")
      end
      return result
    end

  end

end