class NotesController < ApplicationController

  before_action :set_note, only: [:show, :update, :destroy]

  def index
    @notes = Note.all
    render json: @notes
  end

  def show
    @note = Note.find(params[:id])
    render json: @note
  end

  def create
    Note.create(note_params)
  end

  def update
    @note.update(note_params)
  end

  def destroy
    @note.destroy
  end

  private

    def set_note
      @note = Note.find(params[:id])
    end

    def note_params
      params.require(:note).permit(:title, :body)
    end

end
