//
//  UsedCarsTableViewController.swift
//  nzhelper
//
//  Created by Q on 15/12/17.
//  Copyright © 2015年 com.flytokiwi. All rights reserved.
//

import UIKit


class UsedCarsTableViewController: UITableViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
//        tableView.registerClass(UITableViewCell.self, forCellReuseIdentifier: "cell")
        //tableView.contentInset = UIEdgeInsets(top: 20, left: 0, bottom: 0, right: 0)
    }
    
    override func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        return 88
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cellIdentifier = "cell"
        var cell = tableView.dequeueReusableCellWithIdentifier(cellIdentifier)
            
        if cell == nil {
            cell = UITableViewCell(style: UITableViewCellStyle.Subtitle, reuseIdentifier: cellIdentifier)
        }
        
        
        cell!.textLabel?.text = "UsedCars"
        cell?.detailTextLabel?.text = "Detal"
        cell?.imageView?.image = UIImage(named: "First")
        
        return cell!
    }
}