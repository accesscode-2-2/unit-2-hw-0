//
//  SocialDelegate.swift
//  Social
//
//  Created by Jovanny Espinal on 9/14/15.
//  Copyright © 2015 Jovanny Espinal. All rights reserved.
//

import UIKit

protocol SocialDelegate {
    
    func socialMediaViewDidTapLikeButton(view: SocialMediaView)
    func socialMediaViewDidTapCommentButton(view: SocialMediaView)
    func socialMediaViewDidTapShareButton(view: SocialMediaView)

}
