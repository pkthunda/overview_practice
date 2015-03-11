class Project < ActiveRecord::Base
  has_many :time_entries

  def max_hours

  end

end
