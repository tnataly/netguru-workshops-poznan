class AddBirthdateToStudents < ActiveRecord::Migration
  def change
    add_column :students, :birthdate, :date 

      # Add custom birthdates for seeded data for test...
  	Student.all.each do |student|
  		student.birthdate = Faker::Date.between(80.years.ago, 18.years.ago)
  		student.save
  	end
  end
end
