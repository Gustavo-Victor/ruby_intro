INSERT_RECIPE=1;
SHOW_RECIPES=2;
EXIT=3;

def header()
  puts "\n=============================="
  puts "========== COOK BOOK ==========";
  puts "==============================\n";
  puts "Welcome to cookbook!\nYour social network full of culinary recipes.";
end;


def menu()
  puts "[#{INSERT_RECIPE}] Register a recipe";
  puts "[#{SHOW_RECIPES}] Show all recipes";
  puts "[#{EXIT}] Exit";
  print "Choose an option: "
  return gets.to_i();
end;


def goodbye()
  puts "\n=============================="
  puts "========== THE END ==========";
  puts "==============================\n";
  puts "\nThanks for using cookbook, see ya!\n";
end;


def recipe_type_menu()
  puts "[1] Main course";
  puts "[2] Accompaniment ";
  puts "[3] Appetizer";
  puts "[4] Dessert";
  print "Choose an option: "
  return gets.chomp.to_i();
end;


def create_recipe()
  recipe_name = "";
  recipe_type = 1;
  recipe_type_string = "";

  puts "\nEnter the name of the recipe: ";
  recipe_name = gets.chomp;

  while recipe_name.length == 0 do
    puts "\nRecipe name is required.";
    puts "Please, enter the name of the recipe: ";
    recipe_name = gets.chomp;
  end;

  puts "\nEnter the type of the recipe: ";
  recipe_type = recipe_type_menu()

  if recipe_type.to_s().length == 0
    recipe_type_string = "other";
  end;

  case recipe_type
    when 1
      recipe_type_string = "main course";
    when 2
      recipe_type_string = "accompaniment";
    when 3
      recipe_type_string = "appetizer";
    when 4
      recipe_type_string = "dessert";
    else
      recipe_type_string = "other";
  end;

  recipe_hash = { name: recipe_name, type: recipe_type_string };

  puts;
  puts "Recipe '#{recipe_name}' successfully registered!";
  puts;

  return recipe_hash;
end;


def show_recipes(recipes = [])
  puts
  puts "========== RECIPES ==========";
  recipes.each do |recipe|
    puts "#{recipe[:name]} (#{recipe[:type]})";
  end;

  if recipes.empty?
    puts "There is no recipe registered in the system yet.";
  end;

  puts;
end;


def invalid_option()
  puts "\nInvalid option\n";
  puts;
end;


def main()
  header();
  recipes = [];
  option = menu();

  loop do
    case option
      when INSERT_RECIPE
        recipe = create_recipe();
        recipes << recipe ;
        option = menu();
      when SHOW_RECIPES
        show_recipes(recipes);
        option = menu();
      when EXIT
        break; 
      else
        invalid_option();
        option = menu();
    end;
  end;

  goodbye();
end;

main();
