//
//  ViewController.swift
//  Multiplication Table
//
//  Created by VLT Labs on 5/26/15.
//  Copyright (c) 2015 Jay Ang. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var multiplicationTable: UITableView!
    @IBOutlet weak var valueSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.title = "Multiplication table"
        
    }

    @IBAction func onSliderDrag(sender: AnyObject) {
        self.multiplicationTable.reloadData()
    }

    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 12
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = UITableViewCell(style: UITableViewCellStyle.Default, reuseIdentifier: "Cell")
        
        let value = Int(self.valueSlider.value * 20)
        
        cell.textLabel?.text = "\(value) * \(indexPath.row + 1) = \(value * (indexPath.row + 1))"
        cell.textLabel?.textAlignment = NSTextAlignment.Center
        
        return cell
        
    }

}

