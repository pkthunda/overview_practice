class Developer < ActiveRecord::Base
  has_secure_password
  has_many :time_entries, dependent: :restrict_with_error
  validates :name, presence: true
  validates :email, uniqueness: true

  def hours_worked
    self.time_entries.reduce(0) do |sum, entry|
      sum + entry.duration_worked
    end
  end

end


# [1,2,3,4].reduce(0) do |sum, num|
#   sum + num.to_s
# end
