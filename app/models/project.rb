class Project < ActiveRecord::Base
  has_many :time_entries

  def total_hours
    result = 0
    time_entries.each do |entry|
      result += entry.duration_worked
    end
    return result
  end

  def worked_on
    self.time_entries.each do |e|
      return e.worked_on
    end
  end


end
