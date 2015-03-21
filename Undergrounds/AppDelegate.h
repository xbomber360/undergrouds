//
//  AppDelegate.h
//  Undergrounds
//
//  Created by LORENZO SICILIANO on 12/03/15.
//  Copyright (c) 2015 LORENZO SICILIANO. All rights reserved.h
// 

#import <UIKit/UIKit.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (readonly, strong, nonatomic) NSManagedObjectContext *managedObjectContext; //si occupa di gestire come sono strutturate le entity
@property (readonly, strong, nonatomic) NSManagedObjectModel *managedObjectModel; //come l'oggetto facade in java serve per fare insert delete ecc
@property (readonly, strong, nonatomic) NSPersistentStoreCoordinator *persistentStoreCoordinator; /// gestisce la connessione con il database

- (void)saveContext;
- (NSURL *)applicationDocumentsDirectory;




@end

