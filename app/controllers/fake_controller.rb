class FakeController < ApplicationController
  def index
  end
def create
@username=params[:username]
@password=params[:password]
@email=params[:email]
@fakeobject = Fake.new(:username => @username, :password => @password, :email =>@email)
@fakeobject.save
redirect_to :controller => "fake", :action => 'show'
end

def show
@user=params[:user]
@pass=params[:pass]
@fakelogin=Fake.find_by(:username =>  @user, :password => @pass)
if @fakelogin.nil?
redirect_to :controller => "fake", :action => 'index'
else

@fakeshow = Fake.all

end
end
=begin
def check
@user=params[:user]
@pass=params[:pass]
@fakelogin=Fake.find_by(:username =>  @user, :password => @pass)
if @fakelogin.nil?
redirect_to :controller => "fake", :action => 'index'
else
redirect_to :controller => "fake", :action => 'show'
end
end
=end


end
