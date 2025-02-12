//
//  PersonalDetails+CoreDataProperties.swift
//  Zepto
//
//  Created by Celestial on 09/02/25.
//
//

import Foundation
import CoreData


extension PersonalDetails {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<PersonalDetails> {
        return NSFetchRequest<PersonalDetails>(entityName: "PersonalDetails")
    }

    @NSManaged public var address: String?
    @NSManaged public var email: String?
    @NSManaged public var id: UUID?
    @NSManaged public var name: String?
    @NSManaged public var phoneNumber: String?
    @NSManaged public var previousOrders: NSSet?

}

// MARK: Generated accessors for previousOrders
extension PersonalDetails {

    @objc(addPreviousOrdersObject:)
    @NSManaged public func addToPreviousOrders(_ value: Order)

    @objc(removePreviousOrdersObject:)
    @NSManaged public func removeFromPreviousOrders(_ value: Order)

    @objc(addPreviousOrders:)
    @NSManaged public func addToPreviousOrders(_ values: NSSet)

    @objc(removePreviousOrders:)
    @NSManaged public func removeFromPreviousOrders(_ values: NSSet)

}

extension PersonalDetails : Identifiable {

}
