class Student < ApplicationRecord
    belongs_to :user
    enum grade:{
            default:0,
            one:1,two:2,three:3,four:4,five:5,six:6,
            M1:7,M2:8,M3:9,M4:10
          }
end
