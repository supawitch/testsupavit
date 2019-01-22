//
//  ViewController.swift
//  search
//
//  Created by Admin on 22/1/2562 BE.
//  Copyright © 2562 supawitch. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var search: UISearchBar!
    @IBOutlet weak var table: UITableView!
    
    let color = ["red","yellow","green","black","white","blue"]
    
    var color1 = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}
    extension ViewController:UITableViewDataSource,UITableViewDelegate{
        func tableView(_ tableView: UITableView,numberOfRowsInSection section:Int)->Int{
            return color.count
        }
        func tableView(_ tableView: UITableView,cellForRowAt indexPath: IndexPath)-> UITableViewCell{
            let cell = tableView.dequeueReusableCell(withIdentifier: "cell")
            cell?.textLabel?.text = color[indexPath.row]
            return cell!
        }
    }






