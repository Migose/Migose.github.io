class NotesController < ApplicationController
    # CREATE
    def new
    end
    
    def create
        note = Note.new
        note.title = params[:input_title]
        note.content = params[:input_content]
        note.save
        redirect_to "/notes/#{note.id}"
        
    end
    
    #READ
    def index
        @notes = Note.all
    end
    
    def show
        @note = Note.find params[:id]
    end
    
    #UPDATE
    def edit
        @note = Note.find params[:id]
    end
    
    def update
        note = Note.find params[:note_id]
        note.title = params[:input_title]
        note.content = params[:input_content]
        note.save
        redirect_to "/notes/#{note.id}"
    end
    
    #DESTROY
    def destroy
        @note = Note.find params[:id]
        @note.destroy
        redirect_to "/notes"
    end
    
end
