class NotesController < ApplicationController

  before_action :set_note, only: [:show, :update, :destroy]

  def index
    render json: Note.all
  end

  def show
    render json: @note
  end

  def create
    @note = Note.create(note_params)
    render json: @note
  end

  def update
    @note.update(note_params)
    render json: @note
  end

  def destroy
    @note.destroy
    head :no_content
  end

  private

    def set_note
      @note = Note.find(params[:id])
    end

    def note_params
      params.require(:note).permit(:title, :body)
    end

end
