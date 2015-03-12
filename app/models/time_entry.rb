class TimeEntry < ActiveRecord::Base
  belongs_to :developer
  belongs_to :project


  def developer_name
    Developer.find_by_id(session[:developer_id])
  end
  #
  # def project_name
  #   self.projects.each do |t|
  #     return t
  #   end
  # end





end
