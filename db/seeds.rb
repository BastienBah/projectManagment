# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# Create account for Bastien Bahuet
User.create(:email => 'b.bahuet@worldcastconnect.com', :password => 'bbahuetConnect', :password_confirmation => 'bbahuetConnect', :firstname => 'Bastien', :name => 'Bahuet', :admin => true, :support => true, :developper => true)
# Create account for David Houze
User.create(:email => 'd.houze@worldcastsystems.com', :password => 'dhouzeConnect', :password_confirmation => 'dhouzeConnect', :firstname => 'David', :name => 'Houze', :admin => true, :support => true, :developper => true)
# Create account for Mathieu Yerle
User.create(:email => 'm.yerle@worldcastconnect.com', :password => 'myerleConnect', :password_confirmation => 'myerleConnect', :firstname => 'Mathieu', :name => 'Yerle', :admin => true, :business => true)
# Create account for Louis Heches
User.create(:email => 'l.heches@worldcastconnect.com', :password => 'lhechesConnect', :password_confirmation => 'lhechesConnect', :firstname => 'Louis', :name => 'Heches', :admin => true, :support => true, :developper => true)
# Create account for Sonia Marmouri
User.create(:email => 's.marmouri@worldcastconnect.com', :password => 'smarmouriConnect', :password_confirmation => 'smarmouriConnect', :firstname => 'Sonia', :name => 'Marmouri', :admin => true)
# Create account for Christopher Zellermann
User.create(:email => 'c.zellermann@worlcastconnect.com', :password => 'czellermannConnect', :password_confirmation => 'czellermannConnect', :firstname => 'Christopher', :name => 'Zellermann', :admin => true, :developper => true)
# Create account for Maxime Riss
User.create(:email => 'm.rirss@worlcastconnect.com', :password => 'mrissConnect', :password_confirmation => 'mrissConnect', :firstname => 'Maxime', :name => 'Riss', :admin => true, :developper => true)
# Create account for Paul Gatille
User.create(:email => 'p.gatille@worlcastconnect.com', :password => 'pgatilleConnect', :password_confirmation => 'pgatilleConnect', :firstname => 'Paul', :name => 'Gatille', :admin => true, :developper => true)
# Create account for Victor Bidot
User.create(:email => 'v.bidot@worlcastconnect.com', :password => 'vbidotConnect', :password_confirmation => 'vbidotConnect', :firstname => 'Victor', :name => 'Bidot', :business => true)
