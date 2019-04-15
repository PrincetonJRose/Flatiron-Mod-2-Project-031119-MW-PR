class ResourcesController < ApplicationController

    def index
        if params[:query]
            @resources = Resource.where("name LIKE ?", "%#{params[:query]}%")
            if !params[:query].empty?
                flash[:message] = "Search results for '#{params[:query]}'."
            end
            if @resources.size == 0
                flash[:message] = "We didn't find any search results that matched what you typed in."
                @resources = Resource.all
            end
        else
            @resources = Resource.all
        end
    end

    def show
        @resource = Resource.find(params[:id])
        @review = Review.new
    end

end