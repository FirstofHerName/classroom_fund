# school = School.new(
#                         name: "Lincoln Elementary",
#                         address: "123 Main St. Chicago, IL 60600"
#                        )
# school.save

# school = School.new(
#                     name: "Monroe Elementary",
#                     address: "456 Center St. Chicago, IL 60601"
#                     )
# school.save

# school = School.new(
#                     name: "Washington Elementary",
#                     address: "897 Oxford St. Chicago, IL 60602"
#                     )
# school.save

# school = School.new(
#                     name: "Mozart Elementary",
#                     address: "945 Lantern St. Chicago, IL 60603"
#                     )
# school.save

# school = School.new(
#                     name: "Funston Elementary",
#                     address: "765 Circle St. Chicago, IL 60604"
#                     )
# school.save


# classroom = Classroom.new(
#                           teacher_name: "Ms. A. Miller", 
#                           room_number: "106"
#                           )
# classroom.save

# classroom = Classroom.new(
#                           teacher_name: "Ms. B. Cody",
#                           room_number: "203"
#                           )
# classroom.save

# classroom = Classroom.new(
#                           teacher_name: "Ms. C. Smith", 
#                           room_number: "306"
#                           )
# classroom.save

# classroom = Classroom.new(
#                           teacher_name: "Ms. D. Peck", 
#                           room_number: "120"
#                           )
# classroom.save

# classroom = Classroom.new(
#                           teacher_name: "Ms. F. Lower", 
#                           room_number: "205"
#                           )
# classroom.save
# school_ids = School.pluck(:id)

# classroom = Classroom.new(
#                           teacher_name: "Ms. L. Alvarez ", 
#                           room_number: "407",
#                           school_id: school_ids.sample
#                           )
# classroom.save

# classroom = Classroom.new(
#                           teacher_name: "Ms. T. Gonzalez", 
#                           room_number: "208",
#                           school_id: school_ids.sample
#                           )
# classroom.save

# classroom = Classroom.new(
#                           teacher_name: "Ms. H. Torres", 
#                           room_number: "230",
#                           school_id: school_ids.sample
#                           )
# classroom.save

# classroom = Classroom.new(
#                           teacher_name: "Ms. S. Anthony", 
#                           room_number: "306",
#                           school_id: school_ids.sample
#                           )
# classroom.save

# classroom = Classroom.new(
#                           teacher_name: "Ms. T. Hernandez", 
#                           room_number: "2107",
#                           school_id: school_ids.sample
#                           )
# classroom.save

# classroom = Classroom.new(
#                           teacher_name: "Ms. P. Spring", 
#                           room_number: "305",
#                           school_id: school_ids.sample
#                           )
# classroom.save

# classroom = Classroom.new(
#                           teacher_name: "Ms. L. Chance", 
#                           room_number: "104",
#                           school_id: school_ids.sample
#                           )
# classroom.save

# project_ideas = [
#                   {
#                     name: "Dry Erase Board",
#                     details: "Our class is in need of a new dry erase board."
#                   },
#                   {
#                     name: "Storage bins",
#                     details: "We need storage for some of our supplies for each student in the class."
#                   },
#                   {
#                     name: "Bluetooth speakers",
#                     details: "We would like to be able to listen to soft music while working on projects or having downtime."
#                   },
#                   {
#                     name: "General Supplies",
#                     details: "We often run out of general supplies like colrox wipes, pen, pencils, markers, etc."
#                   },
#                   {
#                     name: "Aquarium supplies",
#                     details: "We would like to have a small aquarium in our class. Things needed are aquarium, rocks, fishes, Thermometer, Nylon Net, Water test Vial, filter, etc"
#                   },
#                   {
#                     name: "10 Volcanoes",
#                     details: "This is a group project. Each group will be making their own volcanoes and supplies is needed for each group, flour, salt, cooking oil, plastic soda bottles, dishwashing detergent, food coloring, vinegar ,baking dishes or pans."
#                   }
#                 ]


# Classroom.all.each do |classroom|
#   project_ideas.sample(rand(2..5)).each do |project_idea|
#     Project.create(
#                    classroom_id: classroom.id, 
#                    name: project_idea[:name],
#                    details: project_idea[:details]
#                    )
#   end
# end






