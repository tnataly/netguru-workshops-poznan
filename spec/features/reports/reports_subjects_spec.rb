require 'spec_helper'

feature '/reports/subjects page'  do
  let!(:student) { create :student, first_name: 'Jan', last_name: 'Nowak', birthdate: '2010-01-01' }
  let!(:subject_item) { create :subject_item, title: 'Math' }
  let!(:participant) { create :participation, student: student, subject_item: subject_item }
  let!(:subject_item_note) { create :subject_item_note, subject_item: subject_item, student: student }

	background do
    	sign_in
   		expect(page).to have_content 'Logout'
    	visit report_subjects_path
  	end

  	scenario 'should have correct navigation' do
    	within('.breadcrumbs') do
      		expect(page).to have_content 'RoR Workhops » Subjects'
    	end

  	end

  	scenario 'there should contain a birthdate in format ' do
  	   	expect(page).to have_content('2010-01_01')
  	end	

end