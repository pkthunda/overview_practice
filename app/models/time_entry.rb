class TimeEntry < ActiveRecord::Base
  belongs_to :developer
  belongs_to :project


  # def developer_name
  #   self.developers.each do |d|
  #     return d.name
  #   end
  # end
  #
  # def project_name
  #   self.projects.each do |t|
  #     return t.name
  #   end
  # end





end
