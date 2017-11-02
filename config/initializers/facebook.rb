class Facebook
  class << self
    def fbgraph(token)
      @oauth = Koala::Facebook::OAuth.new(185822845299749, '9dcd5599fff24bacd185296c54f4971a')
      @oauth.get_app_access_token
    end

    def get_object(token, id, args = {}, options = {}, &block)
      fbgraph(token).get_object(id, args, options, &block)
    end
  end
end
