# frozen_string_literal: true

City.destroy_all
Guide.destroy_all

bansko = City.create(name: 'bansko', internet: '3gb', weather: '25c')
bansko.save!
bansko_guide = Guide.create(title: 'bansko guide')
bansko_guide.city = bansko
bansko_guide.save!
berlin = City.create(name: 'berlin', internet: '13gb', weather: '15c')
berlin.save!
berlin_guide = Guide.create(title: 'berlin guide')
berlin_guide.city = berlin
berlin_guide.save!

# more cities with guides for grid

chiang_mai = City.create(name: 'chiang mai', internet: '22gb', weather: '55c')
chiang_mai.save!

istanbul = City.create(name: 'istanbul', internet: '1gb', weather: '200c')
istanbul.save!

london = City.create(name: 'london', internet: '12gb', weather: '-5c')
london.save!

paris = City.create(name: 'paris', internet: '11gb', weather: '1c')
paris.save!

denver = City.create(name: 'denver', internet: '8gb', weather: '5c')
denver.save!

budapest = City.create(name: 'budapest', internet: '18gb', weather: '7c')
budapest.save!

prague = City.create(name: 'prague', internet: '22gb', weather: '-11c')
prague.save!

chicago = City.create(name: 'chicago', internet: '19gb', weather: '-33c')
chicago.save!

tokyo = City.create(name: 'tokyo', internet: '200gb', weather: '18c')
tokyo.save!

seoul = City.create(name: 'seoul', internet: '300gb', weather: '17c')
seoul.save!
