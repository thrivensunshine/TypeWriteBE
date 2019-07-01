class ApplicationController < ActionController::API

  def encode_token(payload)
    JWT.encode(payload, 'p-n+k8jcYs_uuvtBPquFtTp2#NGCm@W5uLd2vpBP6cXe6Lre?%7wh6FVaLZSPnu?n697F=w@AqJVvrTLdc*6S*4jCLrhVLqJNJEsXqQd8C&K8uPk?du')
  end

  def auth_header
    request.headers['Authorization']
  end

  def decoded_token
    if auth_header
      token = auth_header
      begin
        JWT.decode(token, 'p-n+k8jcYs_uuvtBPquFtTp2#NGCm@W5uLd2vpBP6cXe6Lre?%7wh6FVaLZSPnu?n697F=w@AqJVvrTLdc*6S*4jCLrhVLqJNJEsXqQd8C&K8uPk?du', true, algorithm: 'HS256')
      rescue JWT::DecodeError
        nil
      end
    end
  end

  def current_user
    if decoded_token
      user_id = decoded_token[0]['user_id']
      @user = User.find_by(id: user_id)
    end
  end

  def logged_in?
    !!current_user
  end

  def authorized
    render json: { message: 'Log in'}, status: :unauthorized unless logged_in?
  end

end
