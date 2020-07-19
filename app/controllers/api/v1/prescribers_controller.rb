class Api::V1::PrescribersController < ApplicationController
    before_action :authorized

    def create
    end

    def update
        @prescriber = Prescriber.find(params[:id])
        if @cbo === @prescriber.cbo
            valid_update = @prescriber.update(prescriber_params)
            if valid_update
                render json: {prescriber: PrescriberSerializer.new(@prescriber)}
            else
                render json: {message: "Sorry! Couldn't update that prescriber"}
            end
        end
    end

    def destroy
    end

    private
    def prescriber_params
        params.permit(:firstname, :lastname, :tel, :email)
    end
end
