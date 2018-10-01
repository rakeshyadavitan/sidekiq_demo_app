class VisitorsController < ApplicationController
  def index
  end

  def contact
    h = JSON.generate({ 'name' => params[:name],
                        'email' => params[:email],
                        'message' => params[:message] })

    # if instead of sidekiq I was just sending email from rails
    VisitorMailer.contact_email(@name, @email, @message).deliver_later

    redirect_to :root
  end
end
