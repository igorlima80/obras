class Wheater < ApplicationRecord
    enum climate_condition: {
        sunny: 0,
        rainy: 1,
        storm: 2,
        cloudy: 3     
      } 

      enum shift: {
            morning: 0,
            evening: 1,
            night:2     
        } 

    belongs_to :work_diary  
end
