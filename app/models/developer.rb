class Developer < ActiveRecord::Base
  has_secure_password
  has_many :time_entries
  validates :name, presence: true
  validates :email, uniqueness: true

  def max_work
    
  end

end
