# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Student.create(name:"Alex", GPA:"3.3", high_school:"Bard")
Student.create(name:"Saman", GPA:"3.0", high_school:"John Bowne Highschool")
Student.create(name:"Natalie", GPA:"3.8", high_school:"Sewanhaka Highschool")

Application.create(deadline:Time.now, category:"early action", resume:"will upload", student_id:1, college_id:1)

College.create(name:"Northeastern University", rank:21, size:30000, category:"private university", location:"Boston")

CollegeActivity.create(college_id:1, activity_id:1)

Activity.create(name:"Volleyball", category:"sport", level:"club")
Activity.create(name:"Computers", category:"academic", level:"club")

StudentActivity.create(student_id:1, activity_id:1)