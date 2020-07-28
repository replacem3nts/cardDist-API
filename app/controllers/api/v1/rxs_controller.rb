class Api::V1::RxsController < ApplicationController
    before_action :authorized

    def create
    end

    def update
    end

    def cbo_update
        @rx = Rx.find(params[:rxId])
        presc = Prescriber.find(rx_params[:prescriberId])
        updated = @rx.update(
            hc_id: rx_params[:hcId],
            clienttel: rx_params[:tel],
            language: rx_params[:language],
            prescribername: "#{presc.firstname} #{presc.lastname}",
            prescriberphone: presc.tel,
            prescriberemail: presc.email,
            notes: rx_params[:notes]
        )
        if updated
            render json: {rx: RxSerializer.new(@rx)}
        else
            render json: {message: 'Sorry! Could not update, please try again.'}
        end
    end

    private

    def rx_params
        params.require(:rx).permit(:hcId, :tel, :language, :prescriberId, :notes)
    end
    
end
