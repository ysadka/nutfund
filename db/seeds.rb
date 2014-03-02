10.times do |i|
  Campaign.create(name: "Campaign #{i}",
                  end_date: Date.today,
                  funds_raised: rand(51234..18_513_597),
                  description: 'Lorem Ipsom.....' )
end
