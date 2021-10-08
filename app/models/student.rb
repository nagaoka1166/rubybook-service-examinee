class Student < ApplicationRecord
    belongs_to :user
    enum grades:{
            default:0,
            one:1,two:2,three:3,four:4,five:5,six:6,
            M２:8,M３:9,M４:10
          }
end
