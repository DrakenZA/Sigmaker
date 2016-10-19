class SigmakerController < ApplicationController
after_filter :set_header_for_iframe
def gensig



@sig = Siginfo.find_by_userid(params[:id])
print @sig
end




private
def set_header_for_iframe
  response.headers.delete "X-Frame-Options"
end


end
