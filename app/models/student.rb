class Student < ApplicationRecord

  validates :name,presence: true, length: { minimum: 3, maximum: 10 },format: { with: /\A[a-zA-z]+\Z/, message: "only letters are allowed"}

  validates :email,presence: true, uniqueness: true

  validates :email,confirmation: true
  validates :email_confirmation,presence: true

  validates :marks, comparison:  { greater_than: 20 },numericality: { even: true,message: "oops low marks"}

  #custom validations
  validate :validate_student_age
  def validate_student_age
    if age<10
      errors.add(:age,"should be greater than 10")
    end
  end

  # callbacks
   before_create :greeting_message
   before_save :greeting_message_before_save
   before_validation :greeting_message_before_validation
   before_destroy :greeting_message_before_destroy

   after_create :greeting_message_after_create
   after_save :greeting_message_after_save
   after_validation :greeting_message_after_validation
   after_destroy :greeting_message_after_destroy
   after_commit :greeting_message_after_commit

   def greeting_message_before_save
      puts "hey!! i will run before saving an object...."
   end
   def greeting_message_before_validation
    puts "hey!! i will run before validating an object...."
    end
   def greeting_message_before_destroy
    puts "hey!! i will run before destroying an object...."
    end
   def greeting_message_after_create
    puts "hey!! i will run after creating an object...."
    end
   def greeting_message_after_save
    puts "hey!! i will run after saving an object...."
    end
   def greeting_message_after_validation
    puts "hey!! i will run after validation an object...."
    end
   def greeting_message_after_commit
    puts "hey!! i will run after commiting an object...."
    end
   def greeting_message_after_destroy
    puts "hey!! i will run after destroying an object...."
    end


   def greeting_message
     puts "hey!! i will run before creating an object...."
   end

end
