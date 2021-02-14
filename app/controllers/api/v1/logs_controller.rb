module Api
  module V1
    class LogsController < ApplicationController
      def index
        logs = Log.all
        render json: logs
      end
    end
  end
end

