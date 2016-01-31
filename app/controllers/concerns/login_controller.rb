class LoginController < ApplicationController
  def index; end
  def register
    user = User.new(params[:email])
    render text: 'okay'
  end
end