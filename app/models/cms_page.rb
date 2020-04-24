class CmsPage < ApplicationRecord
	mount_uploader :bannerimage, CmsBannerImageUploader
end
