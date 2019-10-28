//
//  ZQMeViewController.swift
//  WeChat
//
//  Created by zhangqiaoqiao on 2019/10/28.
//  Copyright © 2019 张乔. All rights reserved.
//

import UIKit

class ZQMeViewController: UIViewController {
    
    let tableView = UITableView.init(frame: UIScreen.main.bounds, style: .plain)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.configSubViews()
        
    }

    func configSubViews() {
        self.view.backgroundColor = UIColor.init(named: "ViewBackgroundColor")
        self.navigationController?.navigationBar.isHidden = true
        self.tableView.backgroundColor = .orange
        self.tableView.delegate = self as? UITableViewDelegate
        self.tableView.dataSource = self as? UITableViewDataSource
        self.view.addSubview(tableView)
    }
    
    
     
}



