class HomeController < ApplicationController
  def index
    response = Typhoeus.get('https://mindicador.cl/api/uf')

    response =  JSON.parse(response.body)
    @response_body = response
    
  end
end
