class Message

  include ActiveModel::Model
  include ActiveModel::Conversion
  include ActiveModel::Validations

  attr_accessor :name, :email, :content, :phone

  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i
  validates :email, presence: true, length: { maximum: 255 },
                    format: { with: VALID_EMAIL_REGEX }  
  validates :name,
    presence: true

  validates :content,
    presence: true
  
  VALID_NUMBER_REGEX = /\d[0-9]\)*\z/
  
  validates :phone, format: { with: VALID_NUMBER_REGEX },
					length: { :minimum => 10, :maximum => 15 }
end