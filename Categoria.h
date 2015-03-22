//
//  Categoria.h
//  Undergrounds
//
//  Created by LORENZO SICILIANO on 22/03/15.
//  Copyright (c) 2015 LORENZO SICILIANO. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>


@interface Categoria : NSManagedObject

@property (nonatomic, retain) NSString * nome;
@property (nonatomic, retain) NSSet *listaMappe;
@end

@interface Categoria (CoreDataGeneratedAccessors)

- (void)addListaMappeObject:(NSManagedObject *)value;
- (void)removeListaMappeObject:(NSManagedObject *)value;
- (void)addListaMappe:(NSSet *)values;
- (void)removeListaMappe:(NSSet *)values;

@end
