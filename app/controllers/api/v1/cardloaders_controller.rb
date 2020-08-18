class Api::V1::CardloadersController < ApplicationController
    def index
        @cl = Cardloader.first
        render json: {cardloader: CardloaderSerializer.new(@cl)}
    end

    def login
        @cardloader = Cardloader.find_by(username: params[:username])
        if @cardloader && @cardloader.authenticate(params[:password])
            wristband = encode_token({cardloader_id: @cardloader.id})
            render json: {
                cardloader: CardloaderSerializer.new(@cardloader),
                token: wristband
            }
        else
            render json: {message: "Incorrect username or password"}
        end

    end

    def persist_login
        wristband = encode_token({cardloader_id: @cardloader.id})
        render json: {
            cardloader: CardloaderSerializer.new(@cardloader),
            token: wristband
        }
    end
end
