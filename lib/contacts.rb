require "pry"

# This is the array we will be passing into the remove_strawberry method
contacts = {
  "Jon Snow" => {
    name: "Jon",
    email: "jon_snow@thewall.we",
    favorite_ice_cream_flavors: ["chocolate", "vanilla"],
  },
  "Freddy Mercury" => {
    name: "Freddy",
    email: "freddy@mercury.com",
    favorite_ice_cream_flavors: ["strawberry", "cookie dough", "mint chip"],
  },
}

def remove_strawberry(contacts)
  contacts.each do |name, value|
    if name == "Freddy Mercury"
      contacts["Freddy Mercury"].each do |name|
        #binding.pry
        if name[0] == :favorite_ice_cream_flavors
        #if name == :favorite_ice_cream_flavors
          contacts["Freddy Mercury"][:favorite_ice_cream_flavors].each_with_index do |name, index|
            if name == "strawberry"
              contacts["Freddy Mercury"][:favorite_ice_cream_flavors].delete_at(index)
            end
          end
        end
      end
    end
  end
end

remove_strawberry(contacts)
