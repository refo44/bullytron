class Person < ApplicationRecord
	has_many :bullyings

	has_attached_file :photo, styles: { medium: "600x600>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :photo, { content_type: ["image/jpeg", "image/gif", "image/png"] }

	def full_name
		"#{self.first_name} #{self.last_name}"
	end
end
