//
//  AudioPlayerViewController.swift
//  PracticeBuddy
//
//  Created by Tyler Hostager on 4/3/18.
//  Copyright © 2018 PB Studios. All rights reserved.
//

import UIKit
import AVKit

class AudioPlayerViewController: AVPlayerViewController, AVPlayerViewControllerDelegate {
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        //self.player
        
        self.delegate = self
        
        if self.player != nil {
            self.player?.play()
        }
        
        // Do any additional setup after loading the view.
        //self.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    /*
    func observe<Value>(_ keyPath: KeyPath<AudioPlayerViewController, Value>, options: NSKeyValueObservingOptions, changeHandler: @escaping (AudioPlayerViewController, NSKeyValueObservedChange<Value>) -> Void) -> NSKeyValueObservation {
        
    }
 */


    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        
        super.prepare(for: segue, sender: sender)
    }

}
