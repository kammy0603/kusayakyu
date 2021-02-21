class UsersController < ApplicationController
before_action :search_term_id, only: [:index, :search]

  def index
    @users = User.all
  end

  def search
   @results = @p.result
  end

  private
  def search_term_id
    @p = User.ransack(params[:q])
  end

  def set_user_column
    @term_id = Term.select("term_id").distinct  # 重複なくterm_idカラムのデータを取り出す
  end

end
