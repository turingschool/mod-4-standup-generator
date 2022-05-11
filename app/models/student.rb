class Student < ApplicationRecord 
    def self.generate_groups
        total_students = Student.count
        frontend = Student.where(program: 'FE')
        backend = Student.where(program: 'BE')

        groups_of_frontenders = make_groups(frontend.shuffle, total_students)
        groups_of_backenders = make_groups(backend.shuffle, total_students)
        formatted_groups = groups_of_backenders.reverse.zip(groups_of_frontenders).map do |set_of_students|
            set_of_students.flatten
        end
        return formatted_groups
    end 

    def self.make_groups(students, total_students)
        groups_from_program = []
        num_groups = total_students / 4
        min_students_per_group = students.count/num_groups
        num_groups_that_need_one_more = students.count % num_groups 
        num_groups_that_need_one_more.times do 
            groups_from_program << students.shift(min_students_per_group + 1)
        end 
        (students.count/min_students_per_group).times do 
            groups_from_program << students.shift(min_students_per_group)
        end  
        groups_from_program
    end    

end 