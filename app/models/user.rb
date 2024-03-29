class User < ApplicationRecord
  #アソシエーション
  has_one :researcher
  has_one :student, dependent: :destroy
  has_many :posts
  has_many :entries, dependent: :destroy
  has_many :likes, dependent: :destroy
  has_many :like_posts, through: :likes, source: :post
  has_many :entry_posts, through: :entries, source: :post
  accepts_nested_attributes_for :student
  validates :name, presence: true
  validates :faculty, presence: true
  VALID_EMAIL_REGEX = /.*@ed.ritsumei.ac.jp/
  validates :email, presence: true, uniqueness: { case_sensitive: false }, format: { with: VALID_EMAIL_REGEX, message: "有効なメールアドレスをご入力ください。"}, if: :email?
  validates :content_type, presence: true
  validates :password, presence: true, confirmation: true
  validates :password_confirmation, presence: true
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable


  def liked_by?(post_id)
    likes.where(post_id: post_id).exists?
  end
  #　学部のセレクトボックス
  enum faculty:{
          law:1,econmic:2,manegement:3,social:4,policy:5,letters:6,movie:7,
          psychology:8,Science_Engineering:9,Liberal:10,food:11,information_science:12, life_sciences:13,Pharmaceutical:14,
          sports:15,graduate_law:16,graduate_economic:17,graduate_manegement:18,graduate_social:19,graduata_liberal:20,
          graduate_policy:21,graduate_letters:22,graduate_movie:23,graduate_Science_Engineering:24,
          graduate_infomation_engineering:25,graduate_life_science:26,graduate_Pharmaceutical:27,graduate_sports:28,graduate_Applied_human_science:29,graduate_advance_human:30,
          graduate_language_education:31,graduate_legal:32,graduate_technology_manegment:33,graduate_business_manegement:34,graduate_public:35,
          graduate_education:36,graduate_human_science:37,graduate_food:38
        }

attr_accessor :category
  devise :database_authenticatable, :registerable,
        :recoverable, :rememberable
end
