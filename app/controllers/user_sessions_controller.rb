class UserSessionsController < ApplicationController
  def create
    id = params[:idToken]
    channelId = '1655667657'
    return if session[:user_id]
    res = Net::HTTP.post_form(URI.parse('https://api.line.me/oauth2/v2.1/verify'),
                          {'id_token'=>id, 'client_id'=>channelId})
    line_user_id = JSON.parse(res.body)["sub"]
    user = User.find_by(line_user_id: line_user_id)
    if user.nil?
      user = User.create(line_user_id: line_user_id)
    elsif user
      session[:user_id] = user.id
    end
  end
end
