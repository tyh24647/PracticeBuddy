//
//  PlayMediaTableTableViewController.swift
//  PracticeBuddy
//
//  Created by Tyler Hostager on 4/3/18.
//  Copyright © 2018 PB Studios. All rights reserved.
//

import UIKit
import AVKit

class PlayMediaTableTableViewController: UITableViewController, AVPlayerViewControllerDelegate {

    let urls: [String]! = [
        "http://clips.vorwaerts-gmbh.de/VfE_html5.mp4"
    ]
    
    var videoView: AudioPlayerViewController!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
        
        tableView.delegate = self
        tableView.dataSource = self
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return urls.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: UITableViewCell! = tableView.dequeueReusableCell(withIdentifier: "MediaCell", for: indexPath)
        
        if let cell = cell as! CustomMediaTableViewCell? {
            cell.textLabel?.text = self.urls[indexPath.row]
            
            return cell as UITableViewCell
        }
        
        cell.textLabel?.text = self.urls[indexPath.row]
        
        // Configure the cell...

        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let url = self.urls[indexPath.row]
        
        //var avPlayer: AVPlayer?
        //var ctrl: AVPlayerViewController?
        self.playerViewControllerWillStartPictureInPicture(
            //AVPlayerViewController(nibName: "AudioPlayerViewController", bundle: self.nibBundle)
            
            ({ () -> (AVPlayerViewController) in
                let avPlayerController: AudioPlayerViewController? = { () -> AudioPlayerViewController in
                {(urlStr) -> (AudioPlayerViewController) in
                    return AudioPlayerViewController(withWebURL: url, delegate: self)
                    }(url) as AudioPlayerViewController
                }()
                
                self.videoView = avPlayerController
                self.videoView.delegate = self
                
                /*
                if self.videoView.player == nil {
                    self.videoView.player = AVPlayer(url: URL(string: url)!)
                }
 */
                
                self.videoView!.shouldDisplayPlayer = false
                
                if self.videoView != nil {
                    
                    self.videoView.shouldDisplayPlayer = true
                    self.videoView.showsPlaybackControls = true
                    self.prepare(for: UIStoryboardSegue(identifier: "PlayMedia", source: self, destination: self.videoView!), sender: self)
                    
                    /*
                    self.performSegue(withIdentifier: "PlayMedia", sender: self)
                    */
                    //show(self.videoView!.view, sender: self)
                    //self.videoView.viewWillAppear(true)
 
                    //self.videoView!.player?.play()
                    //avPlayerController!.player!.play()
                }
                
                return (self.videoView! as AVPlayerViewController)
            })()
        )
        
        
        //self.performSegue(withIdentifier: "PlayMedia", sender: self.tableView(self.tableView, cellForRowAt: indexPath))
    }
    

    func playerViewControllerWillStartPictureInPicture(_ playerViewController: AVPlayerViewController) {
        
        playerViewController.player = AVPlayer(url: URL(string: urls[(self.tableView.indexPathForSelectedRow!.row)])!)
        //playerViewController.presentationController?.shouldPresentInFullscreen = true
        
        let vc = playerViewController as! AudioPlayerViewController
        vc.allowsPictureInPicturePlayback = true
        vc.showsPlaybackControls = true
        
        
        //playerViewController.player!.play()
        vc.viewWillAppear(true)
        //show(playerViewController, sender: vc.delegate)
        
        
        vc.player?.play()
        //playerViewController.player = AVPlayer(url: URL(string: "")!)
        //playerViewController.player?.play()
    }
    
    /*
    func playerViewControllerShouldAutomaticallyDismissAtPictureInPictureStart(_ playerViewController: AVPlayerViewController) -> Bool {
        return true
    }
 */
    
    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool { 
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */
    
    
    // MARK: - Navigation
    
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        
        switch segue.identifier {
        case "PlayMedia":
            
            
            
            //let destination = segue.destination as! AVPlayerViewController
            let strVal = "http://clips.vorwaerts-gmbh.de/VfE_html5.mp4" // self.urls[self.tableView.indexPathForSelectedRow]
            
            let urlStr: String! = { (value) -> String in
                return value // URL(string: "http://clips.vorwaerts-gmbh.de/VfE_html5.mp4")
            }(strVal)
            
            let destination: AVPlayerViewController! = self.videoView//AudioPlayerViewController(withWebURL: urlStr, delegate: self) as AVPlayerViewController
            
            
            if destination != nil {
                if let mediaURL = URL(string: strVal) {
                    //destination.delegate = self
                    //destination.player = AVPlayer(url: mediaURL)
                    destination.entersFullScreenWhenPlaybackBegins = true
                    destination.exitsFullScreenWhenPlaybackEnds = true
                    //destination.contentOverlayView?.addConstraints(self.view.constraints)
                    
                
                    destination.showsPlaybackControls = true
                    //destination.contentOverlayView?.bringSubview(toFront: destination.view)
                    //destination.view.fram = self.view.bounds
                    //destination.viewWillAppear(true)
                    
                    
                    destination.loadView()
                }
                
            }
            
            super.prepare(for: segue, sender: sender)
        case "HideMedia":
            let destination = segue.destination as! AVPlayerViewController
            destination.unwind(for: segue, towardsViewController: self)
        case "", nil:
            super.prepare(for: segue, sender: sender)
        default:
            break
        }
    }
    

}
