//
//  CustomMediaTableViewCell.swift
//  PracticeBuddy
//
//  Created by Tyler Hostager on 4/3/18.
//  Copyright © 2018 PB Studios. All rights reserved.
//

import UIKit

class CustomMediaTableViewCell: UITableViewCell {
    @IBOutlet var textView: UITextView!
    
    override var reuseIdentifier: String? {
        get {
            return "MediaCell"
        }
    }
    
    
    
    //var _urlString: String? = "http://clips.vorwaerts-gmbh.de/VfE_html5.mp4"
    /*
    public var urlString: String? {
        get { return _urlString }
        set {
            _urlString = newValue ?? _urlString ?? String()
            self.textView.text = _urlString
            self.contentView.layoutIfNeeded()
            prepareForReuse()
        }
    }
 */
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
    }
    
    @objc func dismissViewOnSwipe() -> Void {
        
    }
    
    override func pressesBegan(_ presses: Set<UIPress>, with event: UIPressesEvent?) {
        
        super.pressesBegan(presses, with: event)
    }

    override func prepareForReuse() {
        super.prepareForReuse()
    }

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    
    
    override func value(forKey key: String) -> Any? {
        return super.value(forKey: key)
    }
    
    
}
