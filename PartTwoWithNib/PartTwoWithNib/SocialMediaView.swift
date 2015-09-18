//
//  SocialMediaView.swift
//  PartTwoWithNib
//
//  Created by Elber Carneiro on 9/18/15.
//  Copyright © 2015 Elber Carneiro. All rights reserved.
//

import UIKit

class SocialMediaView: UIView {
    // (?) declared as optional. An instance of SocialMediaView does not have to define
    // this property at initialization. In fact if it's never used the compiler will never
    // complain
    var delegate : SocialMediaViewDelegate?

    // (!) explicitly declared that these guys will be initially nil at runtime. They will be
    // set later in the lifecycle of the view
    @IBOutlet weak var commentButton: UIButton!
    @IBOutlet weak var likeButton: UIButton!
    @IBOutlet weak var shareButton: UIButton!
    
    // MARK: Initialization
    // This is the init method you must override to instantiate a view through a storyboard
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        self.backgroundColor = UIColor.whiteColor()
    }
    
    // If you try to call the addTarget method inside the init method it will be invalid because the 
    // subviews (buttons) will still be nil at that moment. Calling them in this method is correct
    // because at this point in the lifecycle all the subviews have been initialized from the 
    // nib/storyboard. If you were creating the buttons programmatically in the init method THEN you could
    // do all this there, but since you set up the buttons through storyboard, you gotta override
    // this particular lifecycle method
    override func layoutSubviews() {
        self.commentButton.addTarget(self, action: "commentButtonTapped", forControlEvents: UIControlEvents.TouchUpInside)
        self.likeButton.addTarget(self, action: "likeButtonTapped", forControlEvents: UIControlEvents.TouchUpInside)
        self.shareButton.addTarget(self, action: "shareButtonTapped", forControlEvents: UIControlEvents.TouchUpInside)
    }
    
    // MARK: UIButton action methos
    func commentButtonTapped() {
        print("Comment button pressed.")
        self.delegate?.socialMediaViewDidTapCommentButton(self)
    }
    
    func likeButtonTapped() {
        print("Like button pressed.")
        self.delegate?.socialMediaViewDidTapLikeButton(self)
    }
    
    func shareButtonTapped() {
        print("Share button pressed.")
        self.delegate?.socialMediaViewDidTapShareButton(self)
    }

}
