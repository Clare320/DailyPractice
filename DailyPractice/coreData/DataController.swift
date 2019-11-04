//
//  DataController.swift
//  DailyPractice
//
//  Created by Kede on 2019/11/4.
//  Copyright © 2019 Clare. All rights reserved.
//

import UIKit
import CoreData

class DataController: NSObject {
    var persistentContainer: NSPersistentContainer
    init(completionClosure: @escaping () -> ()) {
        persistentContainer = NSPersistentContainer(name: "Shopping")
        persistentContainer.loadPersistentStores { (description, error) in
            if let error = error {
                fatalError("Failed to load Core Data stack: \(error)")
            }
            completionClosure()
        }
    }
}

/**
 NSManagedObjectContext
 NSPersistentContainer
 NSManagedObjectModel
 NSPersistenStoreCoordinator
 
 */
