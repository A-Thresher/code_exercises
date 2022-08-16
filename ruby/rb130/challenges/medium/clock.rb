class Clock
  MINUTES_IN_HOUR = 60
  MINUTES_IN_DAY  = 1440

  attr_reader :total_minutes, :hour, :minutes

  def initialize(minutes)
    @total_minutes = minutes
    normalize_minutes
  end

  def self.at(hour, minutes = 0)
    minutes += hour * MINUTES_IN_HOUR
    new(minutes)
  end

  def to_s
    format("%02d:%02d", hour, minutes)
  end

  def +(minutes)
    Clock.new(@total_minutes + minutes)
  end

  def -(minutes)
    Clock.new(@total_minutes - minutes)
  end

  def ==(other)
    total_minutes == other.total_minutes
  end

  private

  def normalize_minutes
    until (0...MINUTES_IN_DAY).cover?(@total_minutes)
      if @total_minutes > MINUTES_IN_DAY
        @total_minutes -= MINUTES_IN_DAY
      elsif @total_minutes < 0
        @total_minutes += MINUTES_IN_DAY
      end
    end

    @hour, @minutes = @total_minutes.divmod(MINUTES_IN_HOUR)
  end
end
