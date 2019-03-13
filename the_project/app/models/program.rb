class Program < ApplicationRecord
  has_attached_file :image, :styles => { :medium => "300x300>", :thumb => "100x100>" }
  validates_attachment :image, content_type: { content_type: ["image/jpg", "image/jpeg", "image/png", "image/gif"] }

  validates :name, presence: true, length: {minimum: 6}
  validates :description, presence: true, length: {maximum: 500}
end
