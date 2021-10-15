class Student < ApplicationRecord
    belongs_to :user
    enum grade:{
            default:0,
            one:1,two:2,three:3,four:4,five:5,six:6,
            M1:7,M2:8,M3:9,M4:10
          }
    # require 'date'
    #   birthday = Date.new(1986, 12, 1)
    #   today = Date.today # 2014/3/27
    #   age = today.year - birthday.year
    #       if today.month < birthday.month or (today.month == birthday.month and today.day < birthday.day)
    #         age -= 1 # まだ誕生日を迎えていない
    #       end
    #       p age #=> 2
end
