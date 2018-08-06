class Client::RoutesController < ApplicationController
  def new
    render "new.html.erb"
  end

  def create
    client_params = {
      input_from: params[:input_from],
      input_to: params[:input_to]
    }
    response = Unirest.post("localhost:3000/api/routes", parameters: client_params)
    p "*" * 50
    p response.body
    p "*" * 50
    @route = response.body
    render "show.html.erb"
  end
end
