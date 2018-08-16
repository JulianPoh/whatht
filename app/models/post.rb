class Post < ApplicationRecord
    belongs_to :user
    acts_as_commontable dependent: :destroy
    attr_accessor :image
    scope :creatures, -> { where(category: 'Creatures') }
    scope :objects, -> { where(category: 'Objects') }
    scope :medical, -> { where(category: 'Medical') }

    mount_uploader :image, ImageUploader
end
