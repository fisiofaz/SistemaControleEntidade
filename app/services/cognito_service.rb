# app/services/cognito_service.rb
class CognitoService
    def initialize
      @cognito = Aws::CognitoIdentityProvider::Client.new
    end
  
    def sign_up(email, password)
      @cognito.sign_up({
        client_id: ENV['COGNITO_CLIENT_ID'],
        username: email,
        password: password
      })
    end
  
    def authenticate(email, password)
      @cognito.initiate_auth({
        client_id: ENV['COGNITO_CLIENT_ID'],
        auth_flow: 'USER_PASSWORD_AUTH',
        auth_parameters: {
          username: email,
          password: password
        }
      })
    end
end
  