class NotesController < ApplicationController

  def index
    @notes = Note.all
    render json: @notes
  end

  def show
  end

  def create
  end

  def update
  end

  def destroy
  end
end
