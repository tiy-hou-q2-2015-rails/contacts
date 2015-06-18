class Message < ActiveRecord::Base

  validates :from, :email, :message, presence: true

  validates :email, format: {with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i }

end
