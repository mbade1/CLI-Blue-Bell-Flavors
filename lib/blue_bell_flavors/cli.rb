class BlueBell::CLI

  def call
    BlueBell::Scraper.scrape_our_products
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
    input = gets.strip
    if input.downcase == "list"
      puts ""
      flavors = BlueBell::BlueBellIceCream.all
      flavors.each.with_index(1) {|flavor, index| puts "#{index} #{flavor.name}"}
    elsif input.downcase == "exit"
      system "clear" or system "cls"
      exit
    else
      puts ""
      puts "Please type 'list' to see our flavors, or 'exit' to exit the program."
      flavor_listings
    end
  end

  def menu
    puts ""
    puts "Please select the number of the flavor you wish to know more about! Otherwise, type 'exit' to leave the program."
    input = gets.strip

    if input.to_i > 0
      flavor_choice = BlueBell::BlueBellIceCream.find_by_index(input.to_i - 1)
      puts ""
      puts "BLUE BELL FLAVORS RULE!"
      puts "Flavor Chosen: #{flavor_choice.name}"
      puts "Size: #{flavor_choice.size}"
      puts "Description: #{flavor_choice.description}"
      puts "Nutritional URL: #{flavor_choice.nutrition}"
    elsif input.downcase == "exit"
      puts ""
      puts "Take care! Thanks for stopping in!"
      puts ""
      system "clear" or system "cls"
      exit
    else
      puts "Please try again."
      menu
    end
  end
end


  #flavor_listings steps:
    #get the input and list those items
    # if user types "list"
    #list ALL of the flavors from the BlueBellIceCream Class
    #list the flavors with an index number.
    #if user types "exit" 
    #clear the system and exit the program
    #if user mistypes, restart the flavor_listings method.

  #menu steps:
    #once the list is established, have the user type an integer for which flavor they want to know more info.
    #Take the user input and assign it to the same flavor they want (array index are - 1 from user input)
    #list the flavor name, size, description, and a URL to nutritional info.
    #if the user typed exit, exit the program
    #if the user types an unknown flavor or not-exit, start the menu method again.
