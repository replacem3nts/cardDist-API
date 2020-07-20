class Api::V1::PrescribersController < ApplicationController
    before_action :authorized

    def create
        @prescriber = Prescriber.create(
            cbo: @cbo, 
            firstname: params[:firstname], 
            lastname: params[:lastname],
            tel: params[:tel],
            email: params[:email])
        if @prescriber.valid?
            render json: {prescriber: PrescriberSerializer.new(@prescriber)}
        else
            render json: {message: "Sorry! Couldn't create that prescriber"}
        end
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
        @prescriber = Prescriber.find(params[:id])
        if @cbo === @prescriber.cbo
            valid_destroy = @prescriber.destroy
            if valid_destroy
                render json: {garbage: 'Deleted'}
            else
                render json: {message: 'Sorry! Prescriber could not be deleted.'}
            end
        end
    end

    private
    def prescriber_params
        params.permit(:id, :firstname, :lastname, :tel, :email)
    end
end
