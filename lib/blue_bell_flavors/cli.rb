class CLI

  def call
    Scraper.scrape_our_products
    welcome
    flavor_listings
    menu
  end

  def welcome
    puts ""
    puts "\|/          (__)"    
    puts "     `\------(oo)"
    puts "       ||   (__)"
    puts "       ||w--||     \|/"
    puts "   \|/"
    puts ""
    puts "Welcome to the Blue Bell Ice Cream Flavor CLI!"
    puts ""
    puts "To see all of our wonderful Blue Bell Ice Cream Flavors, type 'list'."
    puts "To end this program, type 'exit'."
    puts ""
  end

  def flavor_listings
    #get the input and list those items
    input = gets.strip
      # if user types "list"
    if input == "list"
      #list ALL of the flavors from the BlueBellIceCream Class
      puts ""
      flavors = BlueBellFlavors::BlueBellIceCream.all
      #list the flavors with an index number.
      flavors.each.with_index(1) {|flavor, index| puts "#{flavor} #{index.name}"}
    #if user types "exit"
    elsif input == "exit"
      #clear the system and exit the program
      system "clear" or system "cls"
      exit
    #if user mistypes, restart the flavor_listings method.
    else
      puts ""
      puts "Please type 'list' to see our flavors, or 'exit' to exit the program."
      flavor_listings
    end
  end

  def menu
    #once the list is established, have the user type an integer for which flavor they want to know more info.
    puts ""
    puts "Please select the number of the flavor you wish to know more about! Otherwise, type exit to leave the program."
    input = gets.strip

    if input.to_i > 0
      #Take the user input and assign it to the same flavor they want (array index are - 1 from user input)
      flavor_choice = BlueBellFlavors::blue_bell_ice_cream.find_by_index(input.to_i - 1)
      #list the flavor name, size, description, and a URL to nutritional info.
      puts ""
      puts "BLUE BELL FLAVORS RULE!"
      puts "Flavor Chosen: #{flavor_choice.name}"
      puts "Size: #{flavor_choice.size}"
      puts "Description: #{flavor_choice.description}"
      puts "Nutritional URL: #{flavor_choice.nutrition}"
    #if the user typed exit, exit the program
    elsif input == "exit"
      puts ""
      puts "Take care! Thanks for stopping in!"
      puts ""
      system "clear" or system "cls"
      exit
    else
    #if the user types an unknown flavor or not-exit, start the menu method again.
      puts "Please try again."
      menu
    end
  end
end