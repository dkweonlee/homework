require 'csv'
require 'pry'
class Slcsp_finder
  slcsp = CSV.read("slcsp.csv")
  zips = CSV.read("zips.csv")
  plans = CSV.read("plans.csv")
  plan_compare = []
  i = 1
  j = 1
  k = 1
  while i < slcsp.length
  slcsp_zip = slcsp[i][0]
  while j < zips.length
    if slcsp_zip == zips[j][0]
      rate_area = zips[j][4]
      while k < plans.length
        if rate_area == plans[k][5] && plans[k][3] == "Silver"
          if  plan_compare.length < 2
            plan_compare<<plans[k][4]
            plan_compare.sort!
          end
          if plans[k][4] < plan_compare[1]
             plan_compare.pop
             plan_compare<<plans[k][4]
             plan_compare.sort!
          end
        end 
      end
      k += 1
      end
    end 
    j+=1
    end
  i+=1
  end


binding.pry
