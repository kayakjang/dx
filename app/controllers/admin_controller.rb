class AdminController < ApplicationController
  http_basic_authenticate_with :name => "durex", :password => "frodo" 
  
  def login
  end

  def index
  end
  
  def moderation
  end
  
  def winners
  end

  def entries
  end

  def flagged
  end

  def translations
  end

end
