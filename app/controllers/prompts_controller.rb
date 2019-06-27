class PromptsController < ApplicationController
  before_action :set_piece, only: [:show, :update, :destroy]

  # GET /pieces
  def index
    @prompts = Prompt.all

    render json: @prompts
  end

  # GET /pieces/1
  def show
    render json: @prompt
  end

  # POST /pieces
  def create
    @prompt = Prompt.new(piece_params)

    if @prompt.save
      render json: @prompt, status: :created, location: @prompt
    else
      render json: @prompt.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /pieces/1
  def update
    if @prompt.update(piece_params)
      render json: @prompt
    else
      render json: @prompt.errors, status: :unprocessable_entity
    end
  end

  # DELETE /pieces/1
  def destroy
    @prompt.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_piece
      @prompt = Prompt.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def piece_params
      params.require(:piece).permit(:emotion, :setting, :event, :genre, :timed, :word_count)
    end
end
