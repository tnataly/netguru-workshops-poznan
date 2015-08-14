class CreatePayments < ActiveRecord::Migration
  def change
    create_table :payments do |t|
      t.float :amount
      t.date :pay_date
      t.date :month
      t.references :student, index: true, foreign_key: true

      t.timestamps null: false
    end

    Student.all.each do |student|
    	rand(10).times do
  			Payment.create!(
  				amount: rand(100.00..500.00),
  				pay_date: Faker::Date.between(1.years.ago, 5.days.ago),
  				month: Faker::Date.backward(365),
  				student: student
  				) 
  		end
  	end
  	
  end
end
