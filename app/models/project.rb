class Project < ActiveRecord::Base
  has_many :time_entries

  def total_hours
    self.time_entries.reduce(0) do |sum, entry|
      sum + entry.duration_worked
    end
  end

  def worked_on
    self.time_entries.each do |e|
      return e.worked_on
    end
  end


end
