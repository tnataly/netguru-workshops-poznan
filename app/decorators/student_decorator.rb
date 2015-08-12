class StudentDecorator < BaseDecorator
  def full_name
    "#{first_name} #{last_name}"
  end

  def avg_notes(subject_item)
  	avg = SubjectItemNote.where("subject_item_id = ?", subject_item.id).average(:value)
  	if avg.nil?
  		return "0.00"
  	else	
  		return "%.2f" % avg
  	end

  end
end
