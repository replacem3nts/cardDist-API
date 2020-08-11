class Api::V1::HcsController < ApplicationController
    before_action :authorized, only: [:persist_login]

    def login
        @hc = Hc.find_by(username: params[:username])
        if @hc && @hc.authenticate(params[:password]) 
            wristband = encode_token({hc_id: @hc.id})
            render json: {
                hc: HcSerializer.new(@hc),
                token: wristband
            }
        else
            render json: {message: "Incorrect username or password"}
        end
    end

    def persist_login
        wristband = encode_token({hc_id: @hc.id})
        render json: {
            hc: HcSerializer.new(@hc),
            token: wristband
        }
    end
end
