class SigmakerController < ApplicationController

def gensig



@sig = Siginfo.find_by_userid(params[:id])
print @sig
end



end
