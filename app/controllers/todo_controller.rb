class TodoController < ApplicationController
    def index
    end
    def show
        @todo = Todo.find_by_id(params[:id])
        #@todo_description = "CHANGE LATER"
    # if the user types /todo/show/1
    # make todo_description equal "wake Up"
    
    #   todo_id = params[:id]
    #    if todo_id == '1'
    #        @todo_description = "Wake Up: (6:00) Get out of bed and complete the regular morning routine."
    #    elsif todo_id == '2'
    #        @todo_description = "Eat Breakfast: (7:00) Go to the dining hall and eat a good breakfast."
    #    elsif todo_id == '3'
    #        @todo_description = "Go to Class: (8:00) Meet up with the group and go to the classroom."
    #    elsif todo_id == '4'
    #        @todo_description = "Lunch: (12:00) Go back to the dining hall and eat lunch."
    #    elsif todo_id == '5'
    #        @todo_description = "Go Back to Class:(13:00) Walk back to the classroom from the dining hall and continue coding."
    #    elsif todo_id == '6'
    #        @todo_description = "Dinner: (17:00) Walk back to dining hall and eat dinner."
    #    elsif todo_id == '7'
    #        @todo_description = "Evening Activities: (18:00) Participate with the MSU trainers in group activities."
    #    elsif todo_id == '8'
    #        @todo_description = "Go to Bed: (21:00) GO back the the dorm room and get ready for sleep."
    #    end
    end
    def new
    end
    def create
        t = Todo.new
        t.description = params['description']
        t.save
        redirect_to "/todo/show/#{ t.id }"
    end
    def edit
    end
end