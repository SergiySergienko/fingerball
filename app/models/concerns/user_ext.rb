module UserExt
  extend ActiveSupport::Concern

  included do
    scope :active, -> {where(is_active: 1)}
    scope :players, -> {where(user_type: UserType::Player.key)}
    scope :managers, -> {where(user_type: UserType::Manager.key)}
    has_many :stats, :class_name => "UserStat", :dependent => :destroy
    has_many :user_attributes, :dependent => :destroy
    before_save :prepare_base_user
  end

  #instance methods

  def user
    self.user_type.constantize.new(self)
  end

  def user=(user_instance)
    self.user_type = user_instance.class
  end

  protected

  def prepare_base_user
    self.transaction do
      prepare_stats
      prepare_attrs
    end
  end

  def prepare_stats
    self.stats << UserStatType::StatTypeListener.get_instance.build_base_stats_collection(self) if self.id.nil? && self.stats.empty?
    self
  end

  def prepare_attrs
    self.user_attributes << UserAttribute.build_base_collection(self) if self.id.nil? && self.user_attributes.empty?
    self
  end

  module ClassMethods
    #class methods

  end

end