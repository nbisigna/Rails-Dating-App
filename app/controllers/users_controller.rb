class UsersController < ApplicationController


	def index
		@users = User.all.shuffle
	end

	def questions
		@user = User.find(params[:id])
	end

	def show
		@user = User.find(params[:id])
	end

	def matches
		@user = User.find(params[:id])
		@users = User.all.paginate(:page => params[:page], :per_page => 33)
	end

	
	def count_words
  @user.makestring.scan(/\w+/).reduce(Hash.new(0)){|res,w| res[w.downcase]+=1;res}
    end
	
    def distance
    	format js
    end

	
end
