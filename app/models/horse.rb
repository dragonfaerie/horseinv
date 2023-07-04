class Horse < ApplicationRecord
    # TODO: Add valdiations and restrict lists to valid items
    has_many :breeds
    has_many :manufacturers
    has_many :molds

    validates :released_as, presence: true

    COLOR = ["Black", "Bay", "Sooty Bay", "Dark Bay", "Chestnut", "Liver Chestnut", "Flaxen Chestnut", "Grey", "Grullo", "Dun", "Palomino", "Cremello", "Buckskin", "Red Roan", "Blue Roan"]

    validates :color, inclusion: {
        in: COLOR,
        message: "Please choose a valid color"
    }

    PATTERN = ["None", "Tobiano", "Sabino", "Overo", "Blanket", "Leopard"]

    validates :pattern, inclusion: {
        in: PATTERN,
        message: "Please choose a valid pattern"
    }

    GENDER = ["Stallion", "Mare", "Gelding", "Colt", "Filly"]

    validates :gender, inclusion: {
        in: GENDER,
        message: "Please choose a valid gender"
    }

    SIZE = ["Traditional", "Classic", "Stablemate"]

    validates :size, inclusion: {
        in: SIZE,
        message: "Please choose a valid size"
    }

    FINISH = ["Original Finish", "Custom"]

    validates :finish, inclusion: {
        in: FINISH,
        message: "Please choose a valid finish"
    }


    # validates :title, :released_on, :duration, presence: true
    # validates :total_gross, numericality: { greater_than_or_equal_to: 0 }

    # t.string "location"
    # t.boolean "verified"
    # t.string "office_pony"
    # t.integer "purchase_price"
    # t.string "condition"
end
