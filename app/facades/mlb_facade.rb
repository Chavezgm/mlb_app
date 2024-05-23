class MlbFacade
  def initialize
    @service = MlbApiService.new
  end

  def teams
    @service.teams[:teams]
  end

  def team(team_id)
    teams.find { |team| team[:id] == team_id.to_i }
  end

  def team_roster(team_id)
    @service.team_roster(team_id)[:roster]
  end
end
