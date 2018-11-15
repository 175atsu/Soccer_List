//
//  ViewController.swift
//  soccer_list
//
//  Created by 飯野敦博 on 2018/11/06.
//  Copyright © 2018年 mycompany. All rights reserved.
//

import UIKit

class TableViewController : UITableViewController  {
    
    /// 画像のファイル名
    let imageNames = ["バルセロナ.jpg", "ナポリ.jpg", "リアルマドリード.jpg", "ガンバ大阪.jpg"]
    
    /// 画像のタイトル
    let imageTitles = ["バルセロナ", "ナポリ", "リアルマドリード", "ガンバ大阪"]
    
    /// 画像の説明
    let imageDescriptions = [
        "ああああああああああああ",
        "ああああああああああああ",
        "ああああああああああああ",
        "ああああああああああああ"
    ]

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
//        //これ何？
//        tableView.delegate = self
//        tableView.dataSource = self
//
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    /// セルの個数を指定するデリゲートメソッド（必須）
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return imageNames.count
    }
    
    /// セルに値を設定するデータソースメソッド（必須）
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        //？
        let cell = tableView.dequeueReusableCell(withIdentifier: "MyCell")  as! CustomCell
        
        // セルに値を設定
        cell.soccer_image.image = UIImage(named: imageNames[indexPath.row])
        cell.teame_name.text = imageTitles[indexPath.row]
        cell.reaage.text = imageDescriptions[indexPath.row]
        
        return UITableViewCell()
        
    }
    

    
}
