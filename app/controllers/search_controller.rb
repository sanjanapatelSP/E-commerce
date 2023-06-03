class SearchController < ApplicationController
  def results
        @query = params[:q]
        @results = Product.where("name like ?", "%#{@query}%")
   
  end
end
