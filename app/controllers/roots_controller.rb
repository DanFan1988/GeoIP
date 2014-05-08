class RootsController < ApplicationController
  def root
    @remote_ip = request.env['HTTP_X_FORWARDED_FOR']
    @ip = request.ip
    @ipp = request.remote_ip
    @request = request
  end
end
