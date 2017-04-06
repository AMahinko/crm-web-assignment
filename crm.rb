require_relative "contact.rb"
require "sinatra"
index_counter = 0

###Test Data

Contact.create("Randall", "Trager", "Tragermeister@nss_exodus.nt", "Worrying obsession with hair dye. Possibly robosexual.")
Contact.create("Leon", "Voronin", "major_v@schreknet.vtm", "Russian bootleg James Bond. Despises cheetos. Silence affordable.")
Contact.create("Richter", "Monroe", "rmonroe@swarmvpn.net", "Will hack 4 opiates.")

###Test Data


get "/" do
  index_counter += 1
  @crm_app_name = "Alex's CRM"
  @visit_counter = "This page has been served #{index_counter} times"
  @time = "The current time is #{Time.now} EST"
  erb :index
end

get "/contacts" do


erb :contacts
end

get "/contacts/new" do


  erb :contact_new
end

post "/contacts" do

Contact.create(params[:first_name], params[:last_name], params[:email], params[:note])
redirect to ('/contacts')

end
