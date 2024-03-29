# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

AdminUser.create email: 'admin@example.com', password: 'password', password_confirmation: 'password'
AdminUser.create email: 'corey@golferholics.com', password: 'corey1568', password_confirmation: 'corey1568'

HpMainImage.create! if HpMainImage.count == 0
HpFirstThumb.create! if HpFirstThumb.count == 0
HpSecondThumb.create! if HpSecondThumb.count == 0
HpThirdThumb.create! if HpThirdThumb.count == 0

Category.create title: 'Food'
Category.create title: 'People'
Category.create title: 'Places'

Author.create name: 'Corey Tai'

Photographer.create name: 'A photographer!'

Noter.create name: 'A noter'