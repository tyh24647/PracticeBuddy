//
//  ViewController.swift
//  PracticeBuddy
//
//  Created by Tyler Hostager on 4/3/18.
//  Copyright © 2018 PB Studios. All rights reserved.
//

import UIKit

class FilesTableViewController: UITableViewController {
    let kTag = "[FilesTableViewController]"
    
    var _files: [PBFile]?
    var files: [PBFile]! {
        get { return _files }
        set { _files = newValue }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
       
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return files == nil ? 0 : files.count
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        super.tableView(tableView, didSelectRowAt: indexPath)
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //let cell = tableView.dequeueReusableCell(withIdentifier: "FileCell", for: indexPath)
        var cell = tableView.dequeueReusableCell(withIdentifier: "FileCell", for: indexPath) as UITableViewCell
        if self.files[indexPath.row].name != nil {
            cell.textLabel?.text = self.files[indexPath.row].name
        } else {
            cell = UITableViewCell(style: .default, reuseIdentifier: "FileCell")
        }
        
        return cell
    }
    
    /*
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let navVC = segue.destination as? UINavigationController {
            let cwvc = navVC.topViewController as! SafariViewController
            cwvc.urlString = ApplicationConstants.Defaults.Web.url
        }
    }
 */
    
}

