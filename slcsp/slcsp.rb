require 'csv'
require 'pry'
class Slcsp_finder
  slcsp = CSV.read("slcsp.csv")
  zips = CSV.read("zips.csv")
  plans = CSV.read("plans.csv")
  
  # def list_zipcodes
  i = 1
  j = 1
  k = 1
  # list_zip = []
  while i < slcsp.length
   slcsp_zip = slcsp[i][0]
   while j < zips.length
    if slcsp_zip == zips[j][0]
      rate_area = zips[j][4]
      while k < plans.length
        if rate_area == plans[k][5] && plans[k][3] == "Silver" 
        end
        k += 1
      end
    end 
    j+=1
   end
    i+=1
  end
  # end
  
  zips = CSV.read("zips.csv").length
  binding.pry
  j = 0
  while i < CSV.read("zips.csv").length
    
  end

end


binding.pry
