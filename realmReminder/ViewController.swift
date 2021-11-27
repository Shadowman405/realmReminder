//
//  ViewController.swift
//  realmReminder
//
//  Created by Maxim Mitin on 27.11.21.
//

import UIKit
import RealmSwift

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        guard let realm = try? Realm() else {return}
        //print(Realm.Configuration.defaultConfiguration.fileURL)
        
//        let myCat = Cat()
//        myCat.name = "Jessica"
//        myCat.gender = "Female"
//        myCat.color = "Orange"
//
//        do {
//            try realm.write {
//                realm.add(myCat)
//            }
//        } catch {
//            print(error.localizedDescription)
//        }
        
        let reuslts = realm.objects(Cat.self)
        
        for cat in 0...2 {
            print(reuslts[cat].name ?? "", reuslts[cat].color ?? "", reuslts[cat].gender ?? "")
        }
    }


}

