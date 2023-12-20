//
//  BuilderVC.swift
//  Design-Patterns-In-Swift
//
//  Created by macbook pro on 20.12.2023.
//

import UIKit

class BuilderVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let waiter = Waiter()
        let chef = Chef()
        
        waiter.setBuilder(chef)
        waiter.prepareMeal(mainCourse: "Pizza", drink: "Wine", dessert: "Tramisu")
        
        if let meal = waiter.getMeal() {
            print(meal)
        }
    }
    

   

}
