//
//  WeekTableViewController.swift
//  Tableviews
//
//  Created by Ross McIlwaine on 5/10/16.
//  Copyright © 2016 Ross McIlwaine. All rights reserved.
//

import UIKit

class WeekTableViewController: UITableViewController {
    
    @IBOutlet var tableview: UITableView!
    
    let daysOfTheWeek: [String] = ["Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday", "Sunday"]

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return daysOfTheWeek.count
    }

 
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("dayCell", forIndexPath: indexPath)

        // Configure the cell...
        
        let day = daysOfTheWeek[indexPath.row]
        cell.textLabel?.text = day

        return cell
    }
    
    override func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        return 70
    }
    
     // MARK: - Navigation

    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {

        if segue.identifier == "toDetailSegue" {
            let dayViewController = segue.destinationViewController as? DayViewController
            
            if let indexPath = tableView.indexPathForSelectedRow {
                let day = daysOfTheWeek[indexPath.row]
                dayViewController?.dayTitle = day
            }
        }
    }
}
