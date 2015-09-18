//
//  SocialMediaViewDelegate.swift
//  PartTwoWithNib
//
//  Created by Elber Carneiro on 9/18/15.
//  Copyright © 2015 Elber Carneiro. All rights reserved.
//

import Foundation

protocol SocialMediaViewDelegate {
    func socialMediaViewDidTapLikeButton(view: SocialMediaView)
    func socialMediaViewDidTapCommentButton(view: SocialMediaView)
    func socialMediaViewDidTapShareButton(view: SocialMediaView)
}
