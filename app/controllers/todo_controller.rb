class TodoController < ApplicationController
    def index
    end
    def show
        #@todo_description = "CHANGE LATER"
    # if the user types /todo/show/1
    # make todo_description equal "wake Up"
    
        todo_id = params[:id]
        if todo_id == '1'
            @todo_description = "Wake Up"
        elsif todo_id == '2'
            @todo_description = "Eat Breakfast"
        elsif todo_id == '3'
            @todo_description = "Go to Class"
        elsif todo_id == '4'
            @todo_description = "Lunch"
        elsif todo_id == '5'
            @todo_description = "Go Back to Class"
        elsif todo_id == '6'
            @todo_description = "Dinner"
        elsif todo_id == '7'
            @todo_description = "Evening Activities"
        elsif todo_id == '8'
            @todo_description = "Go to Bed"
        end
    end
    def edit
    end
end