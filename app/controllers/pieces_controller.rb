class PiecesController < ApplicationController
  before_action :set_piece, only: [:show, :update, :destroy]

  # GET /pieces
  def index
    @pieces = Piece.all

    render json: @pieces
  end

  # GET /pieces/1
  def show
    render json: @piece
  end

  # POST /pieces
  def create
    @piece = Piece.new(piece_params)

    if @piece.save
      render json: @piece, status: :created, location: @piece
    else
      render json: @piece.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /pieces/1
  def update
    if @piece.update(piece_params)
      render json: @piece
    else
      render json: @piece.errors, status: :unprocessable_entity
    end
  end

  # DELETE /pieces/1
  def destroy
    @piece.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_piece
      @piece = Piece.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def piece_params
      params.require(:piece).permit(:body, :note, :likes, :bookmarked, :timed, :word_count, :user_id)
    end
end
