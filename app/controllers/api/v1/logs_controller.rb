module Api
  module V1
    class LogsController < ApplicationController
      def index
        logs = current_user.logs.eager_load(:grnv_bar_info)
        render json: logs
      end
    end
  end
end

