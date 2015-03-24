//
//  TableViewControllerCitta.h
//  Undergrounds
//
//  Created by LORENZO SICILIANO on 23/03/15.
//  Copyright (c) 2015 LORENZO SICILIANO. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TableViewControllerCitta : UITableViewController

@property (nonatomic,readwrite) NSString *statoSelezionato;
@property(nonatomic,strong) NSArray *listaElementi;

@property (readwrite, strong, nonatomic) NSManagedObjectContext *managedObjectContext; //si occupa di gestire come sono strutturate le entity

@end
