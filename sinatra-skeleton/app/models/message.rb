require 'uri'

class Message < ActiveRecord::Base

  validates :author,
    presence: true
  validates :content,
    presence: true
  validates :url,
      allow_blank: true,
      format: {
      with: URI.regexp,
      message: "must be a valid https url"
    }

end