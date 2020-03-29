//
//  SelectionVC.swift
//  StarTrivia
//
//  Created by Shwetansh Srivastava on 12/03/20.
//  Copyright © 2020 Shwetansh Srivastava. All rights reserved.
//

import UIKit

class SelectionVC: UIViewController {

    let personApi = PersonApi()
    
    @IBOutlet weak var nameLbl: UILabel!
    @IBOutlet weak var heightLbl: UILabel!
    @IBOutlet weak var massLbl: UILabel!
    @IBOutlet weak var dobLbl: UILabel!
    @IBOutlet weak var genderLbl: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func randomClicked(_ sender: Any) {
        let randomValue = Int.random(in: 1...87)
        personApi.getRandomPersonUrlSession(id:randomValue) { (person) in
            if let person = person {
                self.nameLbl.text = person.name
                self.heightLbl.text = person.height
                self.massLbl.text = person.mass
                self.dobLbl.text = person.birthYear
                self.genderLbl.text = person.gender
            }
        }
    }
}

