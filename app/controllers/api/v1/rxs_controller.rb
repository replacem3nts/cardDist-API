class Api::V1::RxsController < ApplicationController
    before_action :authorized

    def create
    end

    def update
    end

    def cbo_update
        @rx = Rx.find(params[:rxId])
        presc = Prescriber.find(cbo_rx_params[:prescriberId])
        updated = @rx.update(
            hc_id: cbo_rx_params[:hcId],
            clienttel: cbo_rx_params[:tel],
            language: cbo_rx_params[:language],
            prescribername: "#{presc.firstname} #{presc.lastname}",
            prescriberphone: presc.tel,
            prescriberemail: presc.email,
            notes: cbo_rx_params[:notes]
        )
        if updated
            render json: {rx: RxSerializer.new(@rx)}
        else
            render json: {message: 'Sorry! Could not update, please try again.'}
        end
    end

    def hc_update
        @rx = Rx.find(params[:rxId])
        updated = @rx.update(
            cardserial: hc_rx_params[:cardserial],
            appt: hc_rx_params[:appt],
            pickedup: hc_rx_params[:pickedup]
        )
        if updated
            render json: {rx: RxSerializer.new(@rx)}
        else
            render json: {message: 'Sorry! Could not update, please try again.'}
        end
    end

    private

    def cbo_rx_params
        params.require(:rx).permit(:hcId, :tel, :language, :prescriberId, :notes)
    end

    def hc_rx_params
        params.require(:rx).permit(:cardserial, :appt, :pickedup)
    end
    
end
