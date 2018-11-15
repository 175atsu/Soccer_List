//
//  ViewController.swift
//  soccer_list
//
//  Created by 飯野敦博 on 2018/11/06.
//  Copyright © 2018年 mycompany. All rights reserved.
//

import UIKit

class TableViewController : UITableViewController  {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    /// セルの個数を指定するデリゲートメソッド（必須）
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 0
    }
    
    /// セルに値を設定するデータソースメソッド（必須）
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView as! CustomCell
        
        // セルに値を設定
        cell.soccer_image.image = UIImage(named: imageNames[indexPath.row])
        cell.teame_name.text = imageTitles[indexPath.row]
        cell.reaage.text = imageDescriptions[indexPath.row]
        
        return UITableViewCell()
        
    }
    

    
}
