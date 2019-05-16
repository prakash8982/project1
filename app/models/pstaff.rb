class Pstaff < ApplicationRecord
	belongs_to :user
	has_attached_file :registration_certificate
    validates_attachment :registration_certificate, :content_type => { :content_type => %w(application/pdf application/msword application/vnd.openxmlformats-officedocument.wordprocessingml.document) }
     
    

    has_attached_file :aadhaar_card
validates_attachment :aadhaar_card, :content_type => { :content_type => %w(application/pdf application/msword application/vnd.openxmlformats-officedocument.wordprocessingml.document) }
end
