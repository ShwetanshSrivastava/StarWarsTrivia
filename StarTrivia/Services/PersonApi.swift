//
//  PersonApi.swift
//  StarTrivia
//
//  Created by Shwetansh Srivastava on 13/03/20.
//  Copyright © 2020 Shwetansh Srivastava. All rights reserved.
//

import Foundation


class PersonApi {
    
    func getRandomPersonUrlSession (id: Int, completion: @escaping PersonResponseCompletion) {
        guard let url = URL(string: "\(PERSON_URL)\(id)") else { return }
        let task = URLSession.shared.dataTask(with: url) { (data, response, error) in
            guard error == nil else {
                debugPrint(error.debugDescription)
                return
            }
            
            guard let data = data else { return }
            
            do {
                let jsonObj = try JSONSerialization.jsonObject(with: data, options: [])
                guard let json = jsonObj as? [String: Any] else { return }
                let person = self.parsePersonData(json: json)
                DispatchQueue.main.async {
                    completion(person)
                }
            } catch {
                debugPrint(error.localizedDescription)
                return
            }
        }
        task.resume()
    }
    
    private func parsePersonData (json: [String: Any]) -> Person {
        let name = json["name"] as? String ?? ""
        let height = json["height"] as? String ?? ""
        let mass = json["mass"] as? String ?? ""
        let hair = json["hair"] as? String ?? ""
        let birthYear = json["birth_year"] as? String ?? ""
        let gender = json["gender"] as? String ?? ""
        let homeWorldUrl = json["homeworld"] as? String ?? ""
        let filmUrl = json["films"] as? [String] ?? [String]()
        let vehicleUrl = json["vehicles"] as? [String] ?? [String]()
        let starshipUrl = json["starship"] as? [String] ?? [String]()

        return Person(name: name, height: height, mass: mass, hair: hair, birthYear: birthYear, gender: gender, homeworldUrl: homeWorldUrl, filmUrls: filmUrl, vehicleUrls: vehicleUrl, starshipUrls: starshipUrl)
    }
}
