class Student < ApplicationRecord
    belongs_to :user
validates_associated :user
validate :grade_validate_researcher
validate :grade_validate_student


def grade_validate_researcher
  if self.user.content_type == 2 && grade.present?
    errors.add(:grade, 'を記入しないでください')
  end
end

def grade_validate_student
if self.user.content_type == 1 && grade.nil?
    errors.add(:grade, 'ここに文章を入れます')
  end
end

    enum grade:{
       zero: 0, one:1,two:2,three:3,four:4,five:5,six:6,
            M1:7,M2:8,M3:9,M4:10
          }

end
