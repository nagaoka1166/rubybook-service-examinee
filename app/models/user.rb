class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  #　学部のセレクトボックス
  enum facultys:{
          "---":0,
          法学部:1,経済学部:2,経営学部:3,産業社会学部:4,政策科学部:5,文学部:6,映像学部:7,
          総合心理学部:8,理工学部:9,グローバル教養学部:10,食マネジメント学部:11,情報理工学部:12,生命科学部:13,薬学部:14,
          スポーツ健康科学部:15,法学研究科:16,経済学研究科:17,経営学研究科:18,社会学研究科:19,国際関係研究科:20,
          政策科学研究科:21,文学研究科:22,映像研究科:23,理工学研究科:24,
          情報理工研究科:25,生命科学研究科:26,薬学研究科:27,スポーツ健康科学研究科:28,応用人間科学研究科:29,先端総合学術研究科:30,
          言語教育情報研究科:31,法務研究科:32,テクノロジー・マネジメント研究科:33,経営管理研究科:34,公務研究科:35,
          教職研究科:36,人間科学研究科:37,食マネジメント研究科:38
        }
  devise :database_authenticatable, :registerable,
        :recoverable, :rememberable, :validatable
end
