class BoardsController < ApplicationController
  before_action :set_target_board, only: %i[show edit update destroy]

  def index
    #  DBから一覧の取得
    # @boards = Board.all
    @boards = Board.page(params[:page])
  end

  def new
    # モデル内のクラスを使用可能
    # 定義したインスタンスはビューの中でも利用可能
    @board = Board.new(flash[:board])
    # binding.pry
  end

  def create
    # ストロングパラメータを受け取って保存する
    board = Board.new(board_params)
    if board.save
      flash[:notice] = "「#{board.title}」の掲示板を作成しました"
      redirect_to board
    else
      redirect_to new_board_path, flash: {
        board: board,
        error_messages: board.errors.full_messages
      }
    end
  end

  def show
    # @comment = @board.comments.new
    @comment = Comment.new(board_id: @board.id)
  end
  
  def edit
  end
  
  def update
    if @board.update(board_params)
      redirect_to board
    else
      redirect_to :back, flash: {
        board: @board,
        error_messages: @board.errors.full_messages
      }
    end
  end

  def destroy
    @board.delete

    redirect_to boards_path, flash: { notice: "「#{@board.title}」の掲示板が削除されました" }
  end

  private

  def board_params
    params.require(:board).permit(:name, :title, :body)
  end

  def set_target_board
    @board = Board.find(params[:id])
  end

end