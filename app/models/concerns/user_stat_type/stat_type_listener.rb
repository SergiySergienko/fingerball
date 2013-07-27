class UserStatType::StatTypeListener

  attr_accessor :classes

  def self.get_instance
    @stat_listener ||= UserStatType::StatTypeListener.new
  end

  def classes
    ["UserStatType::Strength", "UserStatType::Power"]
  end

  def build_base_stats_collection(entity)
    result = []
    self.classes.each do |klass|
      result << UserStat.new(:stat_type => klass)
    end
    result
  end

  private

  def initialize
    #@stat_listener ||= UserStatType::StatTypeListener.new
    #@stat_listener
  end

end