class ApplicationController < ActionController::API
    def encode_token(payload)
        JWT.encode(payload, 'nutmeg')
    end

    def auth_header
        request.headers['Authorization']
    end

    def decoded_token
        if auth_header
            token = auth_header.split(' ')[1]
            begin
                JWT.decode(token, 'nutmeg', true, algorithm: 'HS256')
            rescue JWT::DecodeError
                nil
            end
        end
    end
    
    def logged_in_user
        if decoded_token
            user_id = decoded_token[0].values[0].to_s
            user_type = decoded_token[0].keys[0].to_s
            case user_type
            when 'cbo_id'
                @cbo = Cbo.find_by(id: user_id)
            when 'hc_id'
                @hc = Hc.find_by(id: user_id)
            when 'cardloader_id'
                @cardloader = Cardloader.find_by(id: user_id)
            else
                nil
            end
        end
    end

    def logged_in?
        !!logged_in_user
    end

    def authorized
        render json: { message: 'Please log in'}, status: :unauthorized unless logged_in?
    end

end
