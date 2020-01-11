class RequestController < ApplicationController
  def wish
      @requests = Request.where(requester: session[:id])
  end
  def setwish
      requestbook = Request.new(requester:session[:id], title:params[:title], user:params[:user], status: "申請中")
      requestbook.save
      redirect_to("/request/wish")
  end
  def admit
      @requests = Request.where(user: session[:id])
  end
  def setadmit
      admitbook = Request.find_by(requester:params[:requester], title:params[:title])
      admitbook.status = params[:status]
      admitbook.save
      redirect_to("/request/admit")
  end
end
