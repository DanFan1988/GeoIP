class RootsController < ApplicationController
  def root
    ip = request.remote_ip.delete('.').to_i
    @ip = Ipblock.where("start < ? AND end > ?", ip, ip).first
  end
end
