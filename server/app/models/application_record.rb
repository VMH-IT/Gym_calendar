class ApplicationRecord < ActiveRecord::Base
  primary_abstract_class
  def set_image_url
    self.image_url = Rails.application.routes.url_helpers.url_for(image) if image.attached?
  end
end
