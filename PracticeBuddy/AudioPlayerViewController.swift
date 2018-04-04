//
//  AudioPlayerViewController.swift
//  PracticeBuddy
//
//  Created by Tyler Hostager on 4/3/18.
//  Copyright © 2018 PB Studios. All rights reserved.
//

import UIKit
import AVKit

class AudioPlayerViewController: AVPlayerViewController {
    
    var shouldDisplayPlayer = false
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    init() {
        super.init(nibName: "AudioPlayerViewController", bundle: nil)
        
        
    }
    
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
    }
    
    init(withWebURL urlStr: String?, delegate: AVPlayerViewControllerDelegate?) {
        
        if shouldDisplayPlayer {
            super.init(nibName: "AudioPlayerViewController", bundle: Bundle.main)
        } else {
            super.init()
        }
        
        self.player = AVPlayer(url: URL(string: urlStr!)!)
        if delegate != nil {
            self.delegate = delegate
            
        }
        
        
        //self.viewWillAppear(true)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        if shouldDisplayPlayer {
            
            self.view.frame = UIScreen.main.bounds
            showsPlaybackControls = true
            show(self, sender: self.delegate)
        }
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if shouldDisplayPlayer {
            
        //self.player = AVPlayer(url: URL(string: ""))
        
        //self.delegate = 
        
        
            if self.player != nil {
                self.player?.play()
            }
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
