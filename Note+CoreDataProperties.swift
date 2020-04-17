//
//  Note+CoreDataProperties.swift
//  StikyNotez
//
//  Created by Hyeong Kyun Park on 4/16/20.
//  Copyright © 2020 fifadaniel. All rights reserved.
//
//

import Foundation
import CoreData


extension Note {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Note> {
        return NSFetchRequest<Note>(entityName: "Note")
    }

    @NSManaged public var theNote: String
    @NSManaged public var isStickyNote: Bool

}
