# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
#


showtype = Showtype.new
showtype.name = "CPP 외 전부"
showtype.save

feature = Feature.new
feature.name = "Traffic"
feature.showtype_id = showtype.id
feature.featype = 0
feature.save

featunit_array = ["Impressions", "User Views", "DAU", "MAU", "Installs", "Users", "Followers", "Views", "Other..."]

featunit_array.each do |unit_name|
  featunit = Featunit.new
  featunit.feature_id = feature.id
  featunit.name = unit_name
  if unit_name == "Other..."
    featunit.unitype = 1
    featunit.is_other = true
  else
    featunit.unitype = 0
    featunit.is_other = false
  end

  if unit_name == "DAU"
    featunit.featper = 1
  end

  if unit_name == "MAU"
    featunit.featper = 2
  end

  featunit.save
end




  feature = Feature.new
  feature.name = "AD type"
  feature.showtype_id = showtype.id
  feature.featype = 0
  feature.save

  featunit_array = ["Banner", "Interstitial", "Rich media", "Video", "Screen", "Display", "Offerwall", "Voice", "Text", "Other..."]
  featunit_array.each do |unit_name|
    featunit = Featunit.new
    featunit.name = unit_name
    featunit.feature_id = feature.id
    case unit_name

    when "Video"
      featunit.unitype = 7
    when "Voice"
      featunit.unitype = 8
    when "Text"
      featunit.unitype = 1
    when "Other..."
      featunit.unitype = 3
    else
      featunit.unitype = 6
    end
    featunit.save
  end

  feature = Feature.new
  feature.name = "Company Type"
  feature.featype = 0
  feature.showtype_id = showtype.id
  feature.save

  featunit_array = ["Agency", "Ad network", "DSP", "SSP", "Ad exchange", "Publisher (App / Website)", "Media"]

  featunit_array.each do |unit_name|
    featunit = Featunit.new
    featunit.feature_id
    featunit.name = unit_name
    featunit.unitype = 0
    featunit.save
  end


  feature = Feature.new
  feature.name = "Integration Support"
  feature.showtype_id = showtype.id
  feature.featype = 5
  feature.save

  featunit_array = ["SDK", "API", "S2S" , "URL Scheme", "Package Name" , "Not Needed"]

  featunit_array.each do |unit_name|
    featunit = Featunit.new
    featunit.name = unit_name
    featunit.unitype = 5
    featunit.feature_id = feature.id
  end





a_all = Marketingtype.new
a_all.filter = 1
a_all.name = "All"
a_all.can_select = false
a_all.save

ad = Marketingtype.new
ad.filter = 1
ad.name = "AD"
ad.can_select = false
ad.save

online = Marketingtype.new
online.filter = 2
online.name = "Online"
online.parent_id = ad.id
online.can_select = false
online.save

online_array = ["CPC", "CPM", "CPP(cost per period)" , "Text ad" ,"Video", "SNS" ,"SEO"]

online_array.each do |element|

  filter4 = Marketingtype.new
  filter4.filter = 3
  filter4.parent_id = online.id
  filter4.name = element
  filter4.can_select = true
  if element != "CPP(cost per period)"
    filter4.showtype_id = Showtype.where(:name => "CPP 외 전부").first.id
  else


  end

  filter4.save

end

mobile = Marketingtype.new
mobile.filter = 2
mobile.name = "Mobile"
mobile.parent_id = ad.id
mobile.can_select = false
mobile.save


ad_mobiles = ["CPI","CPI(non-incentive)","CPC", "CPM", "CPP(cost per period)", "Text ad", "Video", "SNS", "App Discovery" "Messaging", "Rank Guarantee", "Reviews & Ratings", "ASO"]

ad_mobiles.each do |ad_mobile|
  mkc = Marketingtype.create(name: ad_mobile, filter: 3, parent_id: mobile.id)
end


offline = Marketingtype.new
offline.name = "Offline"
offline.filter = 2
offline.parent_id = ad.id
offline.save

offline_array = ["Outdoor advertising", "Magazine", "News Paper", "Cinema", "TV", "Radio"]

offline_array.each do |element|
  Marketingtype.create(name: element, filter: 3, parent_id: offline.id)
end

promotion = Marketingtype.new
promotion.name = "Promotion"
promotion.filter = 1
promotion.save

promotion_array = ["Viral Marketing", "PR", "Reviews Sites" , "Event"]
promotion_array.each do |element|

  Marketingtype.create(name: element, filter: 3, parent_id: promotion.id)
end

management = Marketingtype.new
management.name = "Management"
management.filter = 1
management.save

management_array = ["SNS", "Community / Forum", "Customer Service(C/S)"]
management_array.each do |element|
  Marketingtype.create(name: element, filter: 3, parent_id: management.id)
end

test = Marketingtype.new
test.name = "Test"
test.filter = 1
test.save

test_array = ["CBT (Closed Beta Test)", "FGT (Focus Group Test)", "QA (Quality assuarance)"]
test_array.each do |element|

  Marketingtype.create(name: element, filter: 3, parent_id: test.id)
end

production = Marketingtype.new
production.name = "Production"
production.filter = 1
production.save

materials_array = ["Localization"]

materials_array2 = ["Trailer", "BGM", "AD Banner Design", "Stationery Design", "Goods"]

materials_array.each do |element|
  Marketingtype.create(name: element, filter: 3, parent_id: production.id, global: true)
end

materials_array2.each do |element|
  Marketingtype.create(name: element, filter: 3, parent_id: production.id, global: true)
end



