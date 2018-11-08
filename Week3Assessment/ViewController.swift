//
//  ViewController.swift
//  Week3Assessment
//
//  Created by Ryan Brashear on 1/3/18.
//  Copyright © 2018 Ryan Brashear. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var people =
        [Person(name: "Jake", favoriteThing: "My Keys", favoriteColor: UIColor.cyan),
         Person(name: "Logan", favoriteThing: "Drums", favoriteColor: UIColor.lightGray),
         Person(name: "Caleb", favoriteThing: "Town of Salem", favoriteColor: UIColor.red),
         Person(name: "Andrew", favoriteThing: "memes", favoriteColor: UIColor.green)]
    
    @IBOutlet var TableView: UITableView!
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return people.count
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 80
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "celReuseIdentifer") as! TableViewCellCustom
        cell.Setup(people[indexPath.row])
        cell.backgroundColor = people[indexPath.row].favoriteColor
        return cell
    }
}

