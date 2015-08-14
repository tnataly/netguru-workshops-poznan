class ReportsController < ApplicationController
  before_action :authenticate_user!
  expose(:subject_items) { SubjectItem.includes(:teacher, :students) }
  expose(:payments) {Payment.includes(:student)}

  def subjects
  	render :subjects
  end

  def payments_all
  	render :payments_all
  end

end
