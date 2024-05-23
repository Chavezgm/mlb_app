class TeamsController < ApplicationController
  def index
    @teams = MlbFacade.new.teams
  end

  def show
    facade = MlbFacade.new
    @team = facade.team(params[:id])
    @roster = facade.team_roster(params[:id])
  end
end
