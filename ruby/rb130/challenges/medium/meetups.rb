require 'date'

class Meetup
  def initialize(year, month)
    @year = year
    @month = month
  end

  def day(weekday, descriptor)
    days = collect_days(weekday)
    day = select_day(descriptor, days)

    return nil unless day
    Date.civil(@year, @month, day)
  end

  private

  def collect_days(weekday)
    weekday_query = (weekday.downcase + '?').to_sym
    date_range = (Date.civil(@year, @month)..Date.civil(@year, @month, -1))

    date_range.select(&weekday_query).map(&:day)
  end

  def select_day(descriptor, days)
    case descriptor.downcase
    when 'first'  then  days.first
    when 'second' then  days[1]
    when 'third'  then  days[2]
    when 'fourth' then  days[3]
    when 'fifth'  then  days[4]
    when 'last'   then  days.last
    when 'teenth' then  days.find { |day| (13..19).cover?(day) }
    end
  end
end
