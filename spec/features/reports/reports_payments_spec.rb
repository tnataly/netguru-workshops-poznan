require 'spec_helper'

feature '/reports/payments page'  do
	background do
    	sign_in
   		expect(page).to have_content 'Logout'
    	visit report_payments_path
  	end

  	scenario 'should have correct navigation' do
    	within('.breadcrumbs') do
      		expect(page).to have_content 'RoR Workhops » Payments'
    	end

    	within('#navbar') do
    		expect(page).to have_content('Payments')
    	end

  	end

  	scenario 'there should be a table' do
  	   	expect(page).to have_selector('table')
  	end	

end