//
//  ViewController.swift
//  PartTwoWithNib
//
//  Created by Elber Carneiro on 9/18/15.
//  Copyright © 2015 Elber Carneiro. All rights reserved.
//

import UIKit

class ViewController: UIViewController, SocialMediaViewDelegate {

    @IBOutlet weak var buttonViewContainer: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let nibViews : NSArray = NSBundle.mainBundle().loadNibNamed("ButtonView", owner: self, options: nil)
        let buttonView : SocialMediaView = nibViews[0] as! SocialMediaView
        buttonView.delegate = self
        buttonView.frame = self.buttonViewContainer.bounds
        self.buttonViewContainer.addSubview(buttonView)
        
    }
    
    // MARK: SocialMediaViewDelegate methods
    func socialMediaViewDidTapCommentButton(view: SocialMediaView) {
        self.view.backgroundColor = UIColor.greenColor()
        self.view.setNeedsDisplay()
    }
    func socialMediaViewDidTapLikeButton(view: SocialMediaView) {
        self.view.backgroundColor = UIColor.redColor()
        self.view.setNeedsDisplay()
    }
    func socialMediaViewDidTapShareButton(view: SocialMediaView) {
        self.view.backgroundColor = UIColor.purpleColor()
        self.view.setNeedsDisplay()
    }

}

