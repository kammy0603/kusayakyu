class TeamsController < ApplicationController
  before_action :search_team, only: [:list, :search]
  def new
    @team = Team.new
  end

  def create
    @team = Team.new(team_params)
    if @team.save
      redirect_to root_path
    else
      render :new
    end
  end

  def show
    @team = Team.find(params[:id])
  end

  def list
    @teams = Team.all
  end

  def search
    @results = @p.result
  end

  private

  def search_team
    @p = Team.ransack(params[:q])
  end

  def set_team_column
    @team_term_id = Team.select('term_id').distinct
  end

  def team_params
    params.require(:team).permit(:teamname, :prefecture_id, :year, :age_id, :frequency_id, :level_id, :offer_id, :achievement, :location, :teamimage)
  end

end
