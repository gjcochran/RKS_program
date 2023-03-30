require 'sinatra'

def username_for(firstname, lastname, middlename='')
  (firstname[0] + (middlename[0]||'') + lastname).downcase
end


get "/:lastname/:firstname" do
  lastname = params[:lastname]
  firstname = params[:firstname]
  username = username_for(firstname, lastname)
  "#{firstname} #{lastname}'s username is #{username}"
end

get "/:lastname/:firstname/:middlename" do
  lastname = params[:lastname]
  firstname = params[:firstname]
  middlename = params[:middlename]
  username = username_for(firstname, lastname, middlename)
  "#{firstname} #{middlename} #{lastname}'s username is #{username}"
end
