class AddStudentToSubjectItemNote < ActiveRecord::Migration
  def change
  	add_column :subject_item_notes, :student_id, :integer, references: :students
  	add_index :subject_item_notes, :student_id
  	add_foreign_key :subject_item_notes, :students
  end
end
