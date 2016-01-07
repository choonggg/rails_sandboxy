class API::RecordsController < API::ApiController
  def index
    respond_with Record.all
  end
end
