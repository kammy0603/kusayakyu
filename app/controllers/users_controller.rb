class UsersController < ApplicationController
before_action :search_term_id, only: [:index, :search]

  def index
    @users = User.all
    @user = User.where(category_id: params[:id]).order('created_at DESC')
  end

  def search
   @results = @p.result
  end

  private
  def search_term_id
    @p = User.ransack(params[:q])
  end

  def set_user_column
    @user_term_id = User.select("term_id").distinct  # 重複なくnameカラムのデータを取り出す
  end

end
