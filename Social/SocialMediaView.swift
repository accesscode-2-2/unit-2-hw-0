//
//  SocialMediaView.swift
//  Social
//
//  Created by Jovanny Espinal on 9/14/15.
//  Copyright © 2015 Jovanny Espinal. All rights reserved.
//

import UIKit

class SocialMediaView: UIView {

    var delegate: SocialDelegate?
    
    @IBAction func commentButtonTapped() {
        delegate?.socialMediaViewDidTapCommentButton(self)
    }
    
    @IBAction func likeButtonTapped() {
        delegate?.socialMediaViewDidTapLikeButton(self)
    }

    @IBAction func shareButtonTapped() {
        delegate?.socialMediaViewDidTapShareButton(self)
    }
}
