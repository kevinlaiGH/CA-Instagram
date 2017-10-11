class Photo < ApplicationRecord
  include ImageUploader::Attachment.new(:image) # adds an `image` virtual attribute
  validates :image_data, :caption,  presence: true
    belongs_to :user
    acts_as_votable

    def self.search(search)
     where("image_data LIKE ? OR description LIKE ?", "%#{search}%", "%#{search}%")
    end

end
