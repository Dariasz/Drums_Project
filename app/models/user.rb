class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
   attr_accessor :login
  
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :authentication_keys => [:login]


         validates :imie, presence: true
         validates :nickname, presence: true
         validates :nazwisko, presence: true
         validates_format_of :nickname, with: /^[a-zA-Z0-9_\.]*$/ , :multiline => true 
         validates_uniqueness_of :nickname
         validates :nickname, :presence => true, :uniqueness => { :case_sensitive => false } # etc.
         has_attached_file :avatar, :styles => { :medium => "300x300>", :thumb => "100x100#", :mini => "50x50#" }, :default_url => ":style/default.png"
         validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/
        validates_confirmation_of :password

    def self.find_for_database_authentication(warden_conditions)
        conditions = warden_conditions.dup
        if login = conditions.delete(:login)
        where(conditions.to_h).where(["lower(nickname) = :value OR lower(email) = :value", { :value => login.downcase }]).first
        elsif conditions.has_key?(:nickname) || conditions.has_key?(:email)
        where(conditions.to_h).first
        end
    end




end
