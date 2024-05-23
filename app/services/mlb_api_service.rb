class MlbApiService
  BASE_URL = 'https://statsapi.mlb.com/api/v1'

  def conn
    Faraday.new(BASE_URL) do |faraday|
      faraday.headers['Accept'] = 'application/json'
    end
  end

  def get_url(url)
    response = conn.get(url)
    JSON.parse(response.body, symbolize_names: true)
  end

  def teams
    get_url('/teams')
  end

  def team_roster(team_id)
    get_url("/teams/#{team_id}/roster")
  end
end
