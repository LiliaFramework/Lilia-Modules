file = {
	"modules",
}

dir = "docs/html"
project = "Lilia Modules"
title = "Lilia Modules Documentation"
no_space_before_args = true
style = "docs/css"
template = "docs/templates"
format = "markdown"
ignore = true
use_markdown_titles = true
merge = true
sort = true
sort_modules = true
simple_args_string = true -- we show optionals/defaults outside of the display name
strip_metamethod_prefix = true -- remove the name of the table when displaying metamethod names
no_viewed_topic_at_top = true -- don't put the currently viewed topic at the top
use_new_templates = true -- new templating system
pretty_urls = true -- avoid showing .html in urls
pretty_topic_names = true -- strips extension from manual filenames, this does not check filename collisions
kind_names = {
   module = "Libraries",
}
custom_tags = {
   {
      "realm",
      hidden = true
   },
   {
      "internal",
      hidden = true
   }
}


custom_display_name_handler = function(item, default_handler)
   if item.type == "function" and item.module then
      if item.module.type == "meta" then
         return item.module.mod_name .. ":" .. default_handler(item)
      elseif item.module.type == "hooks" then
         if item.module.mod_name == "Class" then
            return "CLASS:" .. default_handler(item)
         elseif item.module.mod_name == "Faction" then
            return "FACTION:" .. default_handler(item)
         else
            return "MODULE:" .. default_handler(item)
         end
      end
   end
   return default_handler(item)
end

new_type("factions", "Factions", true)
new_type("classes", "Classes", true)
new_type("information", "Information", true)
new_type("library", "Libraries", true)
new_type("hooks", "Hooks", true)
new_type("meta", "Meta", true)
new_type("configuration", "Configurations", true)
new_type("structures", "Structures", true)
new_type("store", "Store", true)
tparam_alias("inventory", "Inventory")
tparam_alias("item", "Item")
tparam_alias("date", "Date")
tparam_alias("panel", "Panel")
tparam_alias("string", "String")
tparam_alias("bool", "Boolean")
tparam_alias("func", "Function")
tparam_alias("client", "Player")
tparam_alias("entity", "Entity")
tparam_alias("character", "Character")
tparam_alias("color", "Color")
tparam_alias("tab", "Table")
tparam_alias("material", "Material")
tparam_alias("vector", "Vector")
tparam_alias("angle", "Angle")
tparam_alias("int", "Integer")