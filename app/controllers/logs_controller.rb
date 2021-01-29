class LogsController < ApplicationController
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

  def grnv_bar_info_params
  end
end
