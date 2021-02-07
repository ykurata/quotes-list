//
//  DataService.swift
//  Module2-16 wrap-up
//
//  Created by Yasuko Kurata on 2021-02-05.
//

import Foundation


class DataService {
    
    static func getLocalData() -> [Author] {
        
        // Get path in app bundle
        let pathString = Bundle.main.path(forResource: "Data", ofType: "json")
        
        guard pathString != nil else {
            return [Author]()
        }
        
        // Create URL object
        let url = URL(fileURLWithPath: pathString!)
        
        do {
            // Create Data object
            let data = try Data(contentsOf: url)
            
            // Decode the json data
            let decoder = JSONDecoder()
            
            do {
                let authorData = try decoder.decode([Author].self, from: data)
                
                for a in authorData {
                    a.id = UUID()
                }
                return authorData
            }
            catch {
                print(error)
            }
            
        }
        catch {
            print(error)
        }
        
        return [Author]()
    }
    
}
