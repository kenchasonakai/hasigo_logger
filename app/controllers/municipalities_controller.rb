class MunicipalitiesController < ApplicationController
  def create
    code = params[:muniCd]
    address = params[:lv01Nm]
    muni = Municipality.find_by(muni_cd: code)
    msg = "#{muni.muni_name}#{address}"
    render :json => { msg: msg }
  end
end
