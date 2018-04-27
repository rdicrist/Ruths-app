class Image < ActiveRecord::Base
    validates :i, presence: true
    validates :caption, presence: true
    validates :category, presence: true

    
    has_attached_file :i, styles: {:medium => "640x" }
    validates_attachment_content_type :i, 
        :content_type => [/\Aimage\/.*\Z/, 'video/mp4']
    
    belongs_to :user
    
    
    
end
