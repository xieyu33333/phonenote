# coding: utf-8
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
# phone      :integer
#  email      :string(255)
#  qq         :integer
#  skype      :string(255)
#  name       :string(255)
#  job        :string(255)
#  tel        :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Note.delete_all
Note.create(name:"周卿" , phone:18602111148 , email:"zhouqing@smapp.hk"  ,skype:"zhou.ping" , job:"总经理" , tel:119 )
Note.create(name:"刘鹏" , phone:18628030103 , email:"liupeng@smapp.hk"  ,skype:"zd_zorro" , job:"副总经理" , tel:113 )
Note.create(name:"饶冠旗（Michael）" , phone:13392156576 , email:"Michaelrao@smapp.hk"  ,skype:"mrao8888" , job:"硬件产品经理" , tel:115 )
Note.create(name:"段晓寒" , phone:13686018679 , email:"duan@smapp.hk"  ,skype:"xiao795" , job:"QA" , tel: 0)
Note.create(name:"盛勇" , phone:13801238337 , email:"lenord@smapp.hk"  ,skype:"sylenord" , job:"销售经理" , tel:102 )
Note.create(name:"陈鑫" , phone:15010346199 , email:"chenxin@smapp.hk"  ,skype:"eddiecharm" , job:"技术总监" , tel:111 )
Note.create(name:"庹超" , phone:18602311590 , email:"tuochao@smapp.hk"  ,skype:"Twochau" , job:"设计师" , tel:103 )
Note.create(name:"李明" , phone:15011332287 , email:"liming@smapp.hk"  ,skype:"Leeming58" , job:"客户经理" , tel:109 )
Note.create(name:"韩颖" , phone:18911585982 , email:"hanying@smapp.hk"  ,skype:"hy_greencat" , job:"设计师" , tel:103 )
Note.create(name:"陆世政" , phone:15677397724 , email:"lushizheng@smapp.hk"  ,skype:"xiaoz1122" , job:"Andriod开发工程师" , tel:112 )
Note.create(name:"谢郁" , qq:392163682 , phone:15652173118 , email:"xieyu@smapp.hk"  ,skype:"xieyu33333" , job:"web开发工程师" , tel:111 )
Note.create(name:"田大宝" , phone:15811504059 , email:"tiandabao@smapp.hk"  ,skype:"tdbailmy" , job:"ios开发工程师" , tel:104 )
Note.create(name:"赵坤杰" , phone:18910670612 , email:"zhaokunjie@smapp.hk"  ,skype:"kunjie.zhao" , job:"财务总监" , tel:109 )
Note.create(name:"Chris So" , phone:13823682363 , email:"Chrisso@smapp.hk"  ,skype:"" , job:"" , tel: 0)
Note.create(name:"AnthonyMok" , phone:14715682810 , email:""  ,skype:"" , job:"" , tel:0 )
