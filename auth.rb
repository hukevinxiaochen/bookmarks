require "jwt"
require "date"

#------------
# Auth, the helper module
#
# Provide some means of authenticating requests.
#------------
module Auth

  # TODO: Devise authentication strategy for issuing tokens
  # TODO: Tokens should only be passed over TLS
  # TODO: Check for and handle expired tokens appropriately
 
  def get_valid_token
    # What is the current day and time?
    now = Time.now
    
    # Issue a JWT to clients we trust.
    # Make sure it expires 2 minutes from now.
    payload = {:data => 'test'}
    expiration_time = Time.now + 120
    return token = JWT.encode(payload, nil, 'none', 
                       {:iss => "Kevin", 
                        :exp => expiration_time}
                      ) 
  end

  #------
  # Check for a valid token
  #
  # Is it there?
  # Is it valid?
  def is_valid_token?(token)
    # true/false: The token is where I put it.
    token ? true : false
  end
end


