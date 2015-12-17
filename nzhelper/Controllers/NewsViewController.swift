//
//  NewsViewController.swift
//  nzhelper
//
//  Created by Q on 15/12/17.
//  Copyright © 2015年 com.flytokiwi. All rights reserved.
//

import UIKit

class NewsViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.rowHeight = 91
        tableView.contentInset = UIEdgeInsets(top: -64, left: 0, bottom: 0, right: 0)
    }
    
}

extension NewsViewController: UITableViewDataSource {
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        print("num")
        return 20
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cellIdentifier = "infoCell"
        let cell = tableView.dequeueReusableCellWithIdentifier(cellIdentifier) as! InfoTableViewCell
//        if cell == nil {
//            cell = UITableViewCell.init(style: UITableViewCellStyle.Subtitle, reuseIdentifier: cellIdentifier)
//            print("aaa")
//        }
        
//        cell.imageView?.image = UIImage(named: "First")
        cell.titleLabel.text = "奥克兰市民小心：8天内至少4起入室盗窃圣诞礼物案"
        cell.timeLabel.text = "2015年12月17日"
        cell.detailLabel.text = "天维网12月17日报道 援引Stuff消息 圣诞节将至，好多家庭已经提前准备好圣诞礼物放在家里的圣诞树下。然而迫不及待想要拆礼物的除了小朋友之外，还有好多无耻的盗贼。过去8天，仅奥克兰Manurewa地区附近就发生了4起圣诞礼物盗窃案。据警方介绍，作案盗贼锁定已经准备了礼物的家庭为目标，把值钱的礼物偷出来销赃换钱."
        
//        cell?.imageView?.image = UIImage(named: "First")
//        cell?.textLabel?.text = "奥克兰市民小心：8天内至少4起入室盗窃圣诞礼物案"
//        cell?.detailTextLabel?.text = "天维网12月17日报道 援引Stuff消息 圣诞节将至，好多家庭已经提前准备好圣诞礼物放在家里的圣诞树下。然而迫不及待想要拆礼物的除了小朋友之外，还有好多无耻的盗贼。过去8天，仅奥克兰Manurewa地区附近就发生了4起圣诞礼物盗窃案。据警方介绍，作案盗贼锁定已经准备了礼物的家庭为目标，把值钱的礼物偷出来销赃换钱."
        
        return cell
    }
}

extension NewsViewController: UITableViewDelegate {
    
}
