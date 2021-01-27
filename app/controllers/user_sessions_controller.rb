class UserSessionsController < ApplicationController
  def create
    id = params[:idToken]
    channelId = '1655381466'
    res = Net::HTTP.post_form(URI.parse('https://api.line.me/oauth2/v2.1/verify'),
                          {'id_token'=>id, 'client_id'=>channelId})
    line_user_id = JSON.parse(res.body)["sub"]
  end
end
