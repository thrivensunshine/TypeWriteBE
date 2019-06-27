class CommentsController < ApplicationController
  before_action :set_piece, only: [:show, :update, :destroy]

  # GET /pieces
  def index
    comments = Comment.all

    render json: comments
  end

  # GET /pieces/1
  def show
    render json: comment
  end

  # POST /pieces
  def create
    comment = Comment.new(piece_params)

    if comment.save
      render json: comment, status: :created, location: comment
    else
      render json: comment.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /pieces/1
  def update
    if comment.update(piece_params)
      render json: comment
    else
      render json: comment.errors, status: :unprocessable_entity
    end
  end

  # DELETE /pieces/1
  def destroy
    comment.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_piece
      comment = Comment.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def piece_params
      params.require(:piece).permit( :name, :age, :bio, :quirk, :mood)
    end
end
