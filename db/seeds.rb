10.times do |i|
  Campaign.create(name: "Campaign #{i}",
                  end_date: Date.today,
                  funds_raised: 0,
                  description: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco enim ad minim veniam, quis nostrud exercitation ullamc' )
end
