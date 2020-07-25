class Api::V1::CbosController < ApplicationController
    before_action :authorized, only: [:persist_login]

    def index
        @cbos = Cbo.all
        render json: @cbos
    end

    def get_constants
        @covidimpacts = Covidimpact.all
        @doctorvisits = Doctorvisit.all
        @funduses = Funduse.all
        render json: {covidimpacts: @covidimpacts, doctorvisits: @doctorvisits, funduses: @funduses}
    end

    def login
        @cbo = Cbo.find_by(username: params[:username])
        if @cbo && @cbo.authenticate(params[:password])
            wristband = encode_token({cbo_id: @cbo.id})
            render json: {
                cbo: CboSerializer.new(@cbo),
                token: wristband
            }
        else
            render json: {message: "Incorrect username or password"}
        end
    end

    def persist_login
        wristband = encode_token({cbo_id: @cbo.id})
        render json: {
            cbo: CboSerializer.new(@cbo),
            token: wristband
        }
    end
    
end
