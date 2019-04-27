def first_challenge
  contacts = {
    "Jon Snow" => {
      name: "Jon",
      email: "jon_snow@thewall.we",
      favorite_icecream_flavors: ["chocolate", "vanilla", "mint chip"],
      knows: nil
    },
    "Freddy Mercury" => {
      name: "Freddy",
      email: "freddy@mercury.com",
      favorite_icecream_flavors: ["strawberry", "cookie dough", "mint chip"]
    }
  }

  contacts.each do |contact, data|
    data.each do |attribute, info|
      if attribute == :favorite_icecream_flavors
        info.delete_if {|flavor| flavor == "Strawberry"}
      end
    end
  end
  #remember to return your newly altered contacts hash!
  contacts
end
