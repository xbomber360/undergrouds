//
//  TableViewControllerMore.m
//  Undergrounds
//
//  Created by LORENZO SICILIANO on 24/03/15.
//  Copyright (c) 2015 LORENZO SICILIANO. All rights reserved.
//

#import "TableViewControllerMore.h"

#import <Social/Social.h>



@interface TableViewControllerMore ()

@end

@implementation TableViewControllerMore

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



//- (NSIndexPath*)tableView:(UITableView *)tableView willSelectRowAtIndexPath:(NSIndexPath *)indexPath{
//    
//    return nil;
//}

- (void)mailComposeController:(MFMailComposeViewController*)controller didFinishWithResult:(MFMailComposeResult)result error:(NSError*)error {
    [controller dismissViewControllerAnimated:YES completion:nil];
}

-(void) inviaEmail:(NSString *)tipo{
    
    MFMailComposeViewController *mailCont = [[MFMailComposeViewController alloc] init];
    mailCont.mailComposeDelegate = self;
    
    NSString *destinatario = @"lorenzosiciliano@icloud.com";
    
    NSString *oggetto = [[NSString alloc] init];
    NSString *testo = [[NSString alloc] init];
    
    if([tipo isEqualToString:@"feedback"]){
        oggetto = @"[Undergrounds Feedback]";
        testo = @"Hello, \n I used your app...";
        
    }else{
        oggetto = @"[Undergrounds Map Request]";
        testo = @"Hello, \n I would like my city map...";
    }
    
    if ( [MFMailComposeViewController canSendMail] ){
        [mailCont setSubject:oggetto];
        [mailCont setToRecipients:[NSArray arrayWithObject:destinatario]];
        [mailCont setMessageBody:testo isHTML:NO];
        [self presentViewController:mailCont animated:YES completion:nil];
    }//if
    else{
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"An error occurred"
                                                        message:@"Impossible to send the email."
                                                       delegate:self
                                              cancelButtonTitle:@"OK"
                                              otherButtonTitles:nil];
        [alert show];    }
    
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSIndexPath* indice = [self.tableView indexPathForSelectedRow];
    NSLog(@"la sezione è %zd , la riga è %zd", [indice section], [indice row] );
    if([indice section]==0){
    switch ([indice row]) {
        case 0: [self condividiSuFacebook];
            break;
        case 1: [self recensisciApp];
            break;
        case 2: [self inviaEmail:@"feedback"];
            //break;
        case 3: [self inviaEmail:@"maprequest"];
            break;
  default:
    break;
}
    }//if
}

-(void) recensisciApp{
    NSString *str = @"itms-apps://ax.itunes.apple.com/WebObjects/MZStore.woa";
   
    [str stringByAppendingString:@"/wa/viewContentsUserReviews?"];
    [str stringByAppendingString:@"type=Purple+Software&id="];
     // Here is the app id from itunesconnect
    [str stringByAppendingString:@"yourAppIDHere"];
    
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:str]];
}

-(void) condividiSuFacebook{
    if([SLComposeViewController isAvailableForServiceType:SLServiceTypeFacebook]) {
        SLComposeViewController *controller = [SLComposeViewController composeViewControllerForServiceType:SLServiceTypeFacebook];
        
        [controller setInitialText:@"I'am trying this beautiful app !!!"];
        //[controller addURL:[NSURL URLWithString:@"http://www.appcoda.com"]];
        //[controller addImage:[UIImage imageNamed:@"socialsharing-facebook"]];
        [self presentViewController:controller animated:YES completion:Nil];
        
    }
}

-(void) condividiSuTwitter{
    if ([SLComposeViewController isAvailableForServiceType:SLServiceTypeTwitter])
    {
        SLComposeViewController *tweetSheet = [SLComposeViewController
                                               composeViewControllerForServiceType:SLServiceTypeTwitter];
        [tweetSheet setInitialText:@"I'am trying this beautiful app !!!"];
        [self presentViewController:tweetSheet animated:YES completion:nil];
    }
}

#pragma mark - Table view data source

//- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
//#warning Potentially incomplete method implementation.
//    // Return the number of sections.
//    return ;
//}
//
//- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
//#warning Incomplete method implementation.
//    // Return the number of rows in the section.
//    return 0;
//}

/*
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:<#@"reuseIdentifier"#> forIndexPath:indexPath];
    
    // Configure the cell...
    
    return cell;
}
*/

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
