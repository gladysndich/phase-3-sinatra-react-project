class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/" do
    
  end

  get "/teams" do
    teams = Team.all
    teams.to_json
  end

  get "/teams/:id" do
    team_id = Team.find(params[:id])
    team_id.to_json
  end

  get "/players" do
    players = Player.all
    players.to_json
  end

  get "/players/:id" do
    player_id = Player.find(params[:id])
    player_id.to_json
  end

  get "/coaches" do
    coaches = Coach.all
    coaches.to_json
  end

  get "/coaches/:id" do
    coach_id = Coach.find(params[:id])
    coach_id.to_json
  end

  post '/teams' do
    new_team = Team.create(name: params[:name])
  end

  post '/coaches' do
    new_coach = Coach.create(name:params[:name],
    team_id:params[:team_id])
    new_coach.to_json
  end

  post '/players' do
    new_player = Player.create(name: params[:name],
    team_id:params[:team_id])
    new_player.to_json
  end

  delete '/teams/:id' do
    ditch_team = Team.find(params[:id])
    ditch_team.destroy
    ditch_team.to_json
  end

  patch '/teams/:id' do
    updated_team = Team.find(params[:id])
    updated_team.update(
      name: params[:name]
    )
    updated_team.to_json
  end

end
