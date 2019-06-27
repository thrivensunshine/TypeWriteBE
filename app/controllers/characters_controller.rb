class CharactersController < ApplicationController
  before_action :set_piece, only: [:show, :update, :destroy]

  # GET /pieces
  def index
    @characters = Character.all

    render json: @characters
  end

  # GET /pieces/1
  def show
    render json: @character
  end

  # POST /pieces
  def create
    @character = Character.new(piece_params)

    if @character.save
      render json: @character, status: :created, location: @character
    else
      render json: @character.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /pieces/1
  def update
    if @character.update(piece_params)
      render json: @character
    else
      render json: @character.errors, status: :unprocessable_entity
    end
  end

  # DELETE /pieces/1
  def destroy
    @character.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_piece
      @character = Character.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def piece_params
      params.require(:piece).permit( :name, :age, :bio, :quirk, :mood)
    end
end
