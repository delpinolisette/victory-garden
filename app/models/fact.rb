require 'http'
require 'json'

class Fact < ApplicationRecord

    def api_key
      "mOkh3NSpq1BsmeUoDwl0lacYcPqz724ZfwbTbjyx"
    end

    def query_for_fdcid
        #find the id of the food typed in
        base_url = "https://api.nal.usda.gov/fdc/v1/foods/search"
        query = "#{base_url}?query=#{self.search}&dataType=&pageSize=1&pageNumber=1&sortOrder=asc&api_key=#{api_key}"
        resp = HTTP.get(query)
        json = JSON.parse(resp)
        fdcid = json["foods"][0]["fdcId"]
    end

    def protein
      base_url = "https://api.nal.usda.gov/fdc/v1/foods/search"
      query = "#{base_url}?query=#{self.search}&dataType=&pageSize=1&pageNumber=1&sortOrder=asc&api_key=#{api_key}"
      resp = HTTP.get(query)
      json = JSON.parse(resp)
      protein = json["foods"][0]["foodNutrients"]#[27]
    end
end
