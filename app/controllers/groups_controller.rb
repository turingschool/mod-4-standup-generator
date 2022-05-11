class GroupsController < ApplicationController 
    def index 
        @groups = Student.generate_groups
    end 
end 