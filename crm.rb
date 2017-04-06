require "sinatra"

get "/" do
  @crm_app_name = "Alex's CRM"
  erb :index
end
