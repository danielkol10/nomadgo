# frozen_string_literal: true

City.destroy_all
Guide.destroy_all

bansko = City.create(name: 'bansko', internet: '3gb')
bansko.save!
bansko_guide = Guide.create(title: 'bansko guide')
bansko_guide.city = bansko
bansko_guide.save!
berlin = City.create(name: 'berlin', internet: '13gb')
berlin.save!
berlin_guide = Guide.create(title: 'berlin guide')
berlin_guide.city = berlin
berlin_guide.save!
