import CoreData
import SwiftUI

class CoreDataManager {
    static let shared = CoreDataManager()
    
    let container: NSPersistentContainer

    private init() {
        container = NSPersistentContainer(name: "ZeptoData")
        container.loadPersistentStores { _, error in
            if let error = error {
                fatalError("Failed to load Core Data: \(error)")
            }
        }
        container.viewContext.mergePolicy = NSMergeByPropertyObjectTrumpMergePolicy
    }

    var context: NSManagedObjectContext {
        return container.viewContext
    }
    
    
    func saveUserDetails(id: UUID, name: String?, email: String?, phoneNumber: String, address: String?) {
        let request: NSFetchRequest<PersonalDetails> = PersonalDetails.fetchRequest()
        request.predicate = NSPredicate(format: "phoneNumber == %@", phoneNumber)

        do {
            let results = try context.fetch(request)
            let user: PersonalDetails

            if let existingUser = results.first {
                user = existingUser
            } else {
                user = PersonalDetails(context: context)
                user.id = id
                user.phoneNumber = phoneNumber
            }

            user.name = name
            user.email = email
            user.address = address
            
            try context.save()
            print("User details saved successfully!")
        } catch {
            print("Failed to save user details: \(error)")
        }
    }
    
    func fetchUserDetails(phoneNumber: String) -> PersonalDetails? {
        let request: NSFetchRequest<PersonalDetails> = PersonalDetails.fetchRequest()
        request.predicate = NSPredicate(format: "phoneNumber == %@", phoneNumber)
        
        do {
            return try context.fetch(request).first
        } catch {
            print("Failed to fetch user details: \(error)")
            return nil
        }
    }

    
    func saveOrder(for phoneNumber: String, title: String, price: Double, image: String?) {
        
        print(price)
        guard let user = fetchUserDetails(phoneNumber: phoneNumber) else {
            print("User not found for phoneNumber: \(phoneNumber)")
            return
        }

        let request: NSFetchRequest<Order> = Order.fetchRequest()
        request.predicate = NSPredicate(format: "title == %@ AND user.phoneNumber == %@", title, phoneNumber)

        do {
            let results = try context.fetch(request)
            let order: Order

            if let existingOrder = results.first {
               
                order = existingOrder
                order.quantity += 1
            } else {
                
                order = Order(context: context)
                order.id = UUID()
                order.title = title
                order.price = price
                order.quantity = 1
                order.image = image
                order.user = user
                user.addToPreviousOrders(order)
            }

            try context.save()
            print("Order saved: \(title), Quantity: \(order.quantity)")
        } catch {
            print("Failed to save order: \(error)")
        }
    }

    func fetchOrders(for phoneNumber: String) -> [Order] {
        guard let user = fetchUserDetails(phoneNumber: phoneNumber) else {
            print("User not found for phoneNumber: \(phoneNumber)")
            return []
        }

        let request: NSFetchRequest<Order> = Order.fetchRequest()
        request.predicate = NSPredicate(format: "user == %@", user)

        do {
            let orders = try context.fetch(request)
            print("Found \(orders.count) orders for \(phoneNumber)")
            return orders
        } catch {
            print("Error fetching orders: \(error)")
            return []
        }
    }

    func deleteOrder(title: String, phoneNumber: String) {
        let request: NSFetchRequest<Order> = Order.fetchRequest()
        request.predicate = NSPredicate(format: "title == %@ AND user.phoneNumber == %@", title, phoneNumber)

        do {
            let results = try context.fetch(request)

            if let order = results.first {
                if order.quantity > 1 {
        
                    order.quantity -= 1
                } else {
                   
                    context.delete(order)
                }
                try context.save()
                print("Order updated: \(title), Quantity: \(order.quantity)")
            }
        } catch {
            print("Failed to delete order: \(error)")
        }
    }


    func deleteAllOrders(for phoneNumber: String) {
        guard let user = fetchUserDetails(phoneNumber: phoneNumber) else {
            print("User not found for phoneNumber: \(phoneNumber)")
            return
        }

        let fetchRequest: NSFetchRequest<NSFetchRequestResult> = Order.fetchRequest()
        fetchRequest.predicate = NSPredicate(format: "user == %@", user)

        let batchDeleteRequest = NSBatchDeleteRequest(fetchRequest: fetchRequest)

        do {
            try container.viewContext.execute(batchDeleteRequest)
            try container.viewContext.save()
            print("All orders deleted successfully for \(phoneNumber)!")
        } catch {
            print("Failed to delete all orders: \(error)")
        }
    }
}
