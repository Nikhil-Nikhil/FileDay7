//
//  main.swift
//  FileDay7
//
//  Created by MacStudent on 2019-06-14.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import Foundation

func readJsonFile(jsonFileName: String)
{
    let url = Bundle.main.url(forResource: jsonFileName, withExtension: "json")
    guard let jsonData = url else { return }
    guard let data = try? Data(contentsOf: jsonData) else{ return }

    guard let json = try? JSONSerialization.jsonObject(with: data, options:[]) else{
        return}
    print(json)

var user = Users()
    
   if let jsonDictionay = json as?  [String: Any]
    {
        if let email = jsonDictionay["email"] as? String
    {
        print(email)
        user.email = email
    }
    if let username = jsonDictionay["username"] as? String
    {
        print(username)
        user.username = username
    }
      var address = Address()
if let addressDict = jsonDictionay["address"] as? Dictionary<String, Any>
        {
            if let city = addressDict["city"] as? String
            {
                print(city)
                address.city = city
            }
            if let street = addressDict["street"] as? String
            {
                print(street)
                address.street = street
            }
            if let suite = addressDict["suite"] as? String
            {
                print(suite)
                address.suite = suite
            }
            if let zipcode = addressDict["zipcode"] as? String
            {
                print(zipcode)
                address.zipcode = zipcode
            }
            if let geoDict = addressDict["geo"] as? Dictionary<String, Any>
            {
                if let lat = geoDict["lat"] as? String
                {
                    print(lat)
                }
                if let lng = geoDict["lng"] as? String
                {
                    print(lng)
                }
        }
            if let companyDict = jsonDictionay["company"] as? Dictionary<String, Any>
            {
                if let name = companyDict["name"] as? String
                {
                    print(name)
                }
                if let catchphrase = companyDict["catchphrase"] as? String
                {
                    print(catchphrase)
                }
                if let bs = companyDict["bs"] as? String
                {
                    print(bs)
                }
                
            }
        }
  }
}
readJsonFile(jsonFileName: "Users")

/*func readTextfile(fileName: String)
{
    if let pathOFText = Bundle.main.path(forResource: "Sample", ofType: "txt")
    {
        do{
            let text = try String()
        }
    }
}
*/
