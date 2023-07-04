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

    CONDITION = ["Excellent", "Good", "Poor"]

    validates :condition, inclusion: {
        in: CONDITION,
        message: "Please choose a valid conditon"
    }
end
