//
//  Order+CoreDataProperties.swift
//  Zepto
//
//  Created by Celestial on 11/02/25.
//
//

import Foundation
import CoreData


extension Order {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Order> {
        return NSFetchRequest<Order>(entityName: "Order")
    }

    @NSManaged public var discount: String?
    @NSManaged public var id: UUID?
    @NSManaged public var image: String?
    @NSManaged public var originalPrice: String?
    @NSManaged public var price: Double
    @NSManaged public var quantity: Int64
    @NSManaged public var rating: String?
    @NSManaged public var title: String?
    @NSManaged public var user: PersonalDetails?

}

extension Order : Identifiable {

}
