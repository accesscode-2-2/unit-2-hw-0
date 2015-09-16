//
//  ViewController.swift
//  Social
//
//  Created by Jovanny Espinal on 9/14/15.
//  Copyright © 2015 Jovanny Espinal. All rights reserved.
//

import UIKit

class ViewController: UIViewController, SocialDelegate {

    @IBOutlet weak var socialMediaView: SocialMediaView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        socialMediaView.delegate = self
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func socialMediaViewDidTapCommentButton(view: SocialMediaView) {
        self.view.backgroundColor = UIColor.greenColor()
    }
    
    func socialMediaViewDidTapLikeButton(view: SocialMediaView) {
        self.view.backgroundColor = UIColor.blueColor()
    }
    
    func socialMediaViewDidTapShareButton(view: SocialMediaView) {
        self.view.backgroundColor = UIColor.redColor()
    }
    

}

