class CmsPageController < ApplicationController
  def page
  	@cms_page = CmsPage.find_by_slug(params[:slug])
  	p @cms_page
  	if @cms_page.blank?
 		render_404
  	end
  end

  def render_404
  	respond_to do |format|
    	format.html { render :file => "#{Rails.root}/public/404", :layout => false, :status => :not_found }
    	format.xml  { head :not_found }
    	format.any  { head :not_found }
  	end
  end
end
