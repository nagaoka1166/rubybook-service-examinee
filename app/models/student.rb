class Student < ApplicationRecord
    belongs_to :user
    # validates :grade, presence: true
    validates :grade, absence: true, if: :content_type == 2
    validates :grade, presence: true, if: :content_type == 1
    enum grade:{
       zero: 0, one:1,two:2,three:3,four:4,five:5,six:6,
            M1:7,M2:8,M3:9,M4:10
          }

end
