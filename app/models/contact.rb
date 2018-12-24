class Contact
  include ActiveModel::Model

  EMAIL = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i

  attr_accessor :email, :body

  validates :email,
    presence: true,
    format: {
      with: EMAIL,
      message: 'Must be a valid email address'
    }

  validates :body, presence: true
end
