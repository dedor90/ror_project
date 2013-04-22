namespace :testing do
	desc "creates 39 courses from Emily Stolfo's csv"

	task :create_courses => :environment do
		puts "starting to read in CSV"

		require 'csv'

		CSV.foreach(Rails.root.join("courses.csv"), {:headers=>:first_row}) do |row|
			c = Course.new
			c.call_number = row[0]
			c.title = row[1]
			c.start_time = row[2]
			c.end_time = row[3]
			c.meets_on = row[4]
			c.building = row[5]
			c.room = row[6]
			c.instructor = row[7]

			print c.call_number, ", ", c.title, "\n"
			c.save
		end


	end
end