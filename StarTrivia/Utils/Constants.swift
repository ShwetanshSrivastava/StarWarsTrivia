//
//  Constants.swift
//  StarTrivia
//
//  Created by Shwetansh Srivastava on 12/03/20.
//  Copyright © 2020 Shwetansh Srivastava. All rights reserved.
//

import UIKit

let BLACK_BG = UIColor.black.withAlphaComponent(0.6).cgColor

let BASE_URL = "https://swapi.co/api/"

let PERSON_URL = BASE_URL + "people/"

typealias PersonResponseCompletion = (Person?) -> Void
