class Contact < ActiveRecord::Base

  mount_uploader :photo, AvatarUploader

  validates :first_name, :last_name, :email, :phone, :company_name, :photo, presence: true

  def full_name
    [last_name, first_name].join(", ")
  end
end
