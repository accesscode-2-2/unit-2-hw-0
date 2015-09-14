# Pick-a-pic - a simple camera roll selector. 
Using the `UIImagePickerController` class along with `UINavigationControllerDelegate` and `UIImagePickerControllerDelegate`, make a simple screen that allows you to select a photo from you camera roll and display it in an image view. Use the following gif as a reference.

This part of the homework is only one screen. Create and configure an instance of UIImagePicker. Conform to the `UIImagePickerControllerDelegate` protocol. Implementing the protocol methods will provide you with the information that you need, including the selected image.

![image](https://github.com/accesscode-2-2/unit-2-hw-0/blob/master/images/pickerController.gif?raw=true)

# Social 
This assignment involves creating a custom protocol and a custom view. Exciting! This is a simulation of how you would create interactive elements in a social media app (interactive meaning liking and commenting). 

Your job is to create a custom view that contains 3 different buttons. A button to "like", a button to "comment", and a button to "share". When the user taps on one of the buttons, the view will send a corresponding message to its delegate. Depending on the button tapped, the main view should change its background color. 

* like button = blue
* comment button = green
* share button = red

![reference](https://github.com/accesscode-2-2/unit-2-hw-0/blob/master/images/social.gif?raw=true)

### Considerations

1) Your button actions are inside of the custom view .m file, not the view controller  
2) The custom view should communicate to the view controller through protocol methods. The mothods are as follows:
```objective-c
- (void)socialMediaViewDidTapLikeButton:(SocialMediaView *)view;
- (void)socialMediaViewDidTapCommentButton:(SocialMediaView *)view;
- (void)socialMediaViewDidTapShareButton:(SocialMediaView *)view;
```
3) The views only responsiblity is receiving the button actions and sending a message to the delegate. Not other logic should go in your custom view .m file.

### How to create a custom view
Creating a custom view is really no different than creating a custom view controller. 

Create a new file that is a subclass of `UIView`  
<img src="https://github.com/accesscode-2-2/unit-2-hw-0/blob/master/images/custom_view.png?raw=true" />  

Make sure you set the class in storyboard.  
<img src="https://github.com/accesscode-2-2/unit-2-hw-0/blob/master/images/view_class.png?raw=true"  />  

