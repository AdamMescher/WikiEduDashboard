require "#{Rails.root}/lib/importers/category_importer"

class ArticleFinderController < ApplicationController
  def index
    @articles = []
    if params[:category]
      @category = params[:category]
      @depth = params[:depth].to_i
      @articles = CategoryImporter.report_on_category(@category, depth: @depth)
    end
  end
end
