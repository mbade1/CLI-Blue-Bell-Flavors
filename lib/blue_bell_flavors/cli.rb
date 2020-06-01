class BlueBellFlavors::CLI

  #Welcomes the user and asks the following:
    #Hello and welcome to the Blue Bell Ice Cream Flavor CLI!
    #To select a type of flavor, please select a number from the following list:
      #1 - New Flavors (== what's new on site)
      #2 - Year Round Flavors
      #3 - Rotational Flavors
      #4 - Lite/No Sugar Added Flavors
      #5 - Exit

    #get the input and list those items:
      # if input.to_i == 1 ####   Maybe we need to use gets.chomp.to_i or gets.string.to_i
        ##new_flavors
      #elsif input.to_i == 2
        ##year_round_flavors
      #elsif input.to_i == 3
        ##rotational_flavors
      #elsif input.to_i == 4
        ##lite_no_sugar_added_flavors
      #elsif input.to_i == 5
        ##exit_method
      #else
        #puts "Sorry, I did not understand that input. Please try again.""


##call method (method used for actual CLI) - the #call method MUST match the bin/blue_bell file (line 6)
  #scraper method - ##all flavors MUST scrape for:
    #size (half gallon), description, and url with nutrition info.
  ##welcome - lists the welcome message - lines 3-10 above
  ##flavor_listings
    #lists lines 12-24
  ##exit_method
    #puts "Thank you for looking at our ice cream flavors! Have yourself a Blue Bell country day!"


##welcome class method




end
