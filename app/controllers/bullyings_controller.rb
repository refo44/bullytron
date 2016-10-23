class BullyingsController < ApplicationController

	private
    def find_bullying
      @bullying = Bullying.find(bullying_params[:id])
    end
    def bullying_params
      params.require(:bullying).permit(:id,:bully_id, :bulled_id, :decription,:the_best)
    end
end
