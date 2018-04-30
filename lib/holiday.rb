require 'pry'
# given that holiday_hash looks like this:
# {
#   :winter => {
#     :christmas => ["Lights", "Wreath"],
#     :new_years => ["Party Hats"]
#   },
#   :summer => {
#     :fourth_of_july => ["Fireworks", "BBQ"]
#   },
#   :fall => {
#     :thanksgiving => ["Turkey"]
#   },
#   :spring => {
#     :memorial_day => ["BBQ"]
#   }
# }

def second_supply_for_fourth_of_july(holiday_hash)
  holiday_hash[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  holiday_hash.each do |season, data|

    if season == :winter
      data.each do |holiday, supplies|
        supplies << supply
      end
    end
  end
holiday_hash
end


def add_supply_to_memorial_day(holiday_hash, supply)
  holiday_hash.each do |season, data|

    if season == :spring
      data.each do |holiday, supplies|
        supplies << supply
      end
    end
  end
holiday_hash
end


def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  holiday_hash[season][holiday_name] = supply_array
  holiday_hash
end

def all_winter_holiday_supplies(holiday_hash)
all_supplies = %w()
  holiday_hash.each do |season, data|
    if season == :winter
      data.each do |holiday, supplies|
        all_supplies << supplies
      end
    end
  end
  all_supplies.join(" , ")
end


def all_supplies_in_holidays(holiday_hash)

  holiday_hash.each do |season, holiday|
    puts "#{season.to_s.capitalize!}:"
      holiday.each do |celebration, supplies|
        holiday = "#{celebration.to_s}"
        if holiday.include? "_"
          holiday = "#{holiday}".split(/ |\_|\-/).map(&:capitalize).join(" ")
          puts "  #{holiday}:" + " #{supplies.join(", ")}"
        end
        puts "  #{holiday.capitalize!}:" + " #{supplies.join(", ")}"
      end
  end
end

  # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.



def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"

end
