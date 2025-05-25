class Favorite < ApplicationRecord
  belongs_to :user
  belongs_to :post_image

  valigates :user_id, uniquness:{scope: :post_image_id}
end
