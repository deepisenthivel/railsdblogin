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
@fakeshow = Fake.all
  end
end
