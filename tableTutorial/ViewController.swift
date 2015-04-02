//
//  ViewController.swift
//  tableTutorial
//
//  Created by lostin1 on 2015. 4. 2..
//  Copyright (c) 2015년 lostin. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet var tableView:UITableView!
    let mainData = ["one","two","three","four","five"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return mainData.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        var cell:UITableViewCell = tableView.dequeueReusableCellWithIdentifier("thisCell") as UITableViewCell
        
        cell.textLabel?.text = mainData[indexPath.row]
        return cell
    }

}

