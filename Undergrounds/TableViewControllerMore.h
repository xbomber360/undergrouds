//
//  TableViewControllerMore.h
//  Undergrounds
//
//  Created by LORENZO SICILIANO on 24/03/15.
//  Copyright (c) 2015 LORENZO SICILIANO. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MessageUI/MessageUI.h>
#import <MessageUI/MFMailComposeViewController.h>


@interface TableViewControllerMore : UITableViewController<MFMailComposeViewControllerDelegate>


-(void) inviaEmail:(NSString *) tipo;
-(void) recensisciApp;
-(void) condividiSuFacebook;
-(void) condividiSuTwitter;

@end
