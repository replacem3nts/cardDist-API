class Api::V1::RxsController < ApplicationController
    before_action :authorized

    def create
    end

    def update
    end

    def cbo_update
        @rx = Rx.find(params[:rxId])
        presc = Prescriber.find(rx_params[:prescriberId])
        @rx.update(
            hc_id: new_rx_info[:hcId],
            clienttel: new_rx_info[:tel],
            language: new_rx_info[:language],
            prescribername: "#{presc.firstname} #{presc.firstname}",
            prescriberphone: presc.tel,
            prescriberemail: presc.email,
            notes: new_rx_info[:notes]
            )
        byebug
    end

    private

    def rx_params
        params.require(:rx).permit(:hcId, :tel, :language, :prescriberId :notes)
    end
    
end
