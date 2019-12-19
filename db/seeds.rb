# frozen_string_literal: true

City.destroy_all
Guide.destroy_all

bansko = City.create(name: 'bansko', internet: '40', weather: nil, country: 'bulgaria', price: '1384', lat: '44.8404', long: '23.4857',
                     image: 'city_card_images/test.jpg')
bansko.save!
bansko_guide = Guide.create(title: 'bansko guide')
bansko_guide.city = bansko
bansko_guide.save!
berlin = City.create(name: 'berlin', internet: '40', weather: nil, country: 'germany', price: '1384', lat: '41.8404', long: '23.4857',
                     image: 'city_card_images/test.jpg')
berlin.save!
berlin_guide = Guide.create(title: 'berlin guide')
berlin_guide.city = berlin
berlin_guide.save!

# more cities with guides for grid

chiang_mai = City.create(name: 'chiang mai',
                         internet: '20',
                         weather: nil, country: 'thailand', price: '1384', lat: '41.8404', long: '23.4857',
                         image: 'city_card_images/test.jpg')
chiang_mai.save!

chiang_mai_pros_cons = ProsCon.create(name: 'humid', pro_or_con: 'c')
chiang_mai_pros_cons.city = chiang_mai
chiang_mai_pros_cons.save!

istanbul = City.create(name: 'istanbul', internet: '20', weather: nil, country: 'turkey', price: '1384', lat: '41.8404', long: '23.4857',
                       image: 'city_card_images/test.jpg')
istanbul.save!

london = City.create(name: 'london', internet: '20', weather: nil, country: 'england', price: '2000', lat: '41.8404', long: '23.4857',
                     image: 'city_card_images/test.jpg')
london.save!

paris = City.create(name: 'paris', internet: '20', weather: nil, country: 'france', price: '2000', lat: '41.8404', long: '23.4857',
                    image: 'city_card_images/test.jpg')
paris.save!

denver = City.create(name: 'denver', internet: '20', weather: nil, country: 'USA', price: '2000', lat: '41.8404', long: '23.4857',
                     image: 'city_card_images/test.jpg')
denver.save!

budapest = City.create(name: 'budapest', internet: '30', weather: nil, country: 'hungary', price: '1384', lat: '41.8404', long: '23.4857',
                       image: 'city_card_images/test.jpg')
budapest.save!

prague = City.create(name: 'prague', internet: '30', weather: nil, country: 'czech republic', price: '1384', lat: '41.8404', long: '23.4857',
                     image: 'city_card_images/test.jpg')
prague.save!

chicago = City.create(name: 'chicago', internet: '30', weather: nil, country: 'USA', price: '2000', lat: '41.8404', long: '23.4857',
                      image: 'city_card_images/test.jpg')
chicago.save!

tokyo = City.create(name: 'tokyo', internet: '50', weather: nil, country: 'japan', price: '2000', lat: '41.8404', long: '23.4857',
                    image: 'city_card_images/test.jpg')
tokyo.save!

seoul = City.create(name: 'seoul', internet: '50', weather: nil, country: 'korea', price: '2000', lat: '41.8404', long: '23.4857',
                    image: 'city_card_images/test.jpg')
seoul.save!
