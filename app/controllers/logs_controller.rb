class LogsController < ApplicationController

  def index
  end
  def return_logs_json
  #  user = User.find(session[:user_id])
  #  @drank_ons = user.logs.select('logs.drank_on').distinct(:drank_on)
  #  @logs = user.logs.eager_load(:grnv_bar_info).select('logs.*, grnv_bar_infos.*')
  #  render :json => { logs: @logs, drank_ons: @drank_ons }
  #  log = user.logs.eager_load(:grnv_bar_info).first
  end
  def create
    grnv_bar_info = GrnvBarInfo.find_by(grnv_id: params[:grnvId])
    new_grnv_bar_info = GrnvBarInfo.new(grnv_id: params[:grnvId], address: params[:grnvAddress], name: params[:name], image: params[:image], grnv_url: params[:grnvUrl], tel: params[:grnvTel], opentime: params[:grnvOpentime], holiday: params[:grnvHoliday])

    @grnv_bar_info = grnv_bar_info ? grnv_bar_info : new_grnv_bar_info
    @grnv_bar_info.save if !grnv_bar_info
    @log = current_user.logs.build(grnv_bar_info_id: @grnv_bar_info.id, drank_on: drank_on)
    @log.save if @log.valid?
  end

  private

  def drank_on
    drank_on = (DateTime.now - 10.hour).to_date
  end
end
