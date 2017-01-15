class Dashboard::FlickrSearchController < Dashboard::BaseController
  require 'flickraw-cached'
  respond_to :js

  def search
    count = 0
    @search_tag = params[:search]

    begin
      photos = if @search_tag.blank?
                 flickr.photos.getRecent(per_page: 10)
               else
                 flickr.photos.search(text: @search_tag, per_page: 10)
               end

      @photos = photos.map { |photo| FlickRaw.url_q(photo) }
    end
  end

end