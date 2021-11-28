class Post < ApplicationRecord
    # belongs_to :researcher
    has_many :entries
    belongs_to :user
    has_many :likes
    has_many :posts, dependent: :destroy
    # has_many :like_users, through: :likes, source: :user
    #バリデーション
    validates :title, presence: true
    validates :description, presence: true , length: {minimum: 20}
    validates :caution, presence: true
    validates :testing_field, presence: true
    validates :item, presence: true
    validates :experment_period, presence: true
    validates :recruitment_period, presence: true
    validates :is_active, inclusion: [true, false]

    enum faculty:{
          default:0,
          law:1,econmic:2,manegement:3,social:4,policy:5,letters:6,movie:7,
          psychology:8,Science_Engineering:9,Liberal:10,food:11,information_science:12, life_sciences:13,Pharmaceutical:14,
          sports:15,graduate_law:16,graduate_economic:17,graduate_manegement:18,graduate_social:19,graduata_liberal:20,
          graduate_policy:21,graduate_letters:22,graduate_movie:23,graduate_Science_Engineering:24,
          graduate_infomation_engineering:25,graduate_life_science:26,graduate_Pharmaceutical:27,graduate_sports:28,graduate_Applied_human_science:29,graduate_advance_human:30,
          graduate_language_education:31,graduate_legal:32,graduate_technology_manegment:33,graduate_business_manegement:34,graduate_public:35,
          graduate_education:36,graduate_human_science:37,graduate_food:38
        }
end
