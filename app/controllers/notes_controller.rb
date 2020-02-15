class NotesController < ApplicationController

  def create
    note = Note.new(user_id: params[:user_id], title: params[:title], content: params[:content])
    if note.valid?
      note.save
      render json: note
    else
      render json: {error: 'note could not be created'}
    end
  end
  
end
