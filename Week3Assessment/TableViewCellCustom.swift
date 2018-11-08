//
//  TableViewCellCustom.swift
//  Week3Assessment
//
//  Created by Jacob Tassinari on 11/8/18.
//  Copyright © 2018 Ryan Brashear. All rights reserved.
//

import UIKit

class TableViewCellCustom: UITableViewCell {

    @IBOutlet var Name: UILabel!
    @IBOutlet var Thing: UILabel!
    func Setup(_ people:Person){
        Name.text = people.name
        Thing.text = people.favoriteThing
    }

}
