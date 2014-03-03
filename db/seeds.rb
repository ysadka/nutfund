10.times do |i|
  Campaign.create(name: "Campaign #{i}",
                  end_date: Date.today,
                  funds_raised: 0,
                  description: 'Lorem Ipsom.....' )
end
