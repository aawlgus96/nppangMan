//
//  Banknumber+CoreDataProperties.swift
//  Payment
//
//  Created by CAUAD15 on 2018. 8. 12..
//  Copyright © 2018년 CAUAD15. All rights reserved.
//
//

import Foundation
import CoreData


extension Banknumber {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Banknumber> {
        return NSFetchRequest<Banknumber>(entityName: "Banknumber")
    }

    @NSManaged public var bank: String?
    @NSManaged public var number: String?

}
