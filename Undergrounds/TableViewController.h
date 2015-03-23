//
//  TableViewController.h
//  Undergrounds
//
//  Created by LORENZO SICILIANO on 22/03/15.
//  Copyright (c) 2015 LORENZO SICILIANO. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TableViewController : UITableViewController

@property(nonatomic,strong) NSArray *listaElementi;

@property (readwrite, strong, nonatomic) NSManagedObjectContext *managedObjectContext; //si occupa di gestire come sono strutturate le entity


@end
