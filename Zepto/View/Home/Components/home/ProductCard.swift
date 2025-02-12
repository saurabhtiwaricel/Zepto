import SwiftUI

struct ProductCard: View {
    var phoneNumber: String  // User's phone number
    var image: String
    var title: String
    var price: Double
    var originalPrice: String
    var discount: String
    var rating: String
    
    @State private var quantity: Int = 0
    private let coreDataManager = CoreDataManager.shared

    var body: some View {
        VStack(alignment: .leading) {
            Image(image)
                .resizable()
                .scaledToFit()
                .frame(width: 100, height: 100)
                .cornerRadius(10)
            
            Text(discount)
                .font(.caption)
                .bold()
                .foregroundColor(.purple)
            
            Text(title)
                .font(.headline)
                .lineLimit(1)
            
            HStack {
                Text(String(format: "%.2f", price)) //String(format: "Readjustment: %.2f", readjustment))
                    .font(.title3)
                    .bold()
                Text("\(originalPrice)")
                    .strikethrough()
                    .foregroundColor(.gray)
            }
            
            HStack {
                Image(systemName: "star.fill")
                    .foregroundColor(.green)
                Text(rating)
            }
            .font(.caption)
            
            if quantity == 0 {
                Button(action: {
                    quantity += 1
                    saveToCoreData()
                }) {
                    Text("ADD")
                        .padding(8)
                        .frame(maxWidth: .infinity)
                        .background(Color.red)
                        .foregroundColor(.white)
                        .cornerRadius(5)
                }
            } else {
                HStack {
                    Button(action: {
                        if quantity > 0 {
                            quantity -= 1
                            deleteToCoreData()
                        }
                    }) {
                        Image(systemName: "minus")
                            .padding(8)
                            .background(Color.gray.opacity(0.2))
                            .clipShape(Circle())
                    }

                    Text("\(quantity)")
                        .font(.headline)
                        .frame(width: 30)

                    Button(action: {
                        quantity += 1
                        saveToCoreData()
                    }) {
                        Image(systemName: "plus")
                            .padding(8)
                            .background(Color.red)
                            .foregroundColor(.white)
                            .clipShape(Circle())
                    }
                }
            }
        }
        .padding()
        .frame(width: 150)
        .background(Color.white)
        .cornerRadius(15)
        .shadow(radius: 5)
        .onAppear {
            fetchQuantity()
            
            NotificationCenter.default.addObserver(forName: NSNotification.Name("CartUpdated"), object: nil, queue: .main) { _ in
                fetchQuantity()
            }
        }
    }
    
    
    private func saveToCoreData() {
        print(price)
        coreDataManager.saveOrder(
            for: phoneNumber, 
            title: title,
            price: price,
            image: image
            
        )
    }
    private func deleteToCoreData(){
        coreDataManager.deleteOrder(title: title, phoneNumber: phoneNumber)
    }
    
    private func fetchQuantity() {
            let savedOrders = coreDataManager.fetchOrders(for: phoneNumber)
            if let savedOrder = savedOrders.first(where: { $0.title == title }) {
                self.quantity = Int(savedOrder.quantity)
            } else {
                self.quantity = 0  
            }
        }
    
    
}


#Preview {
    ProductCard(
        phoneNumber: "1234567890",
        image: "vegetables911",
        title: "Tomato",
        price: 20,
        originalPrice: "120",
        discount: "20% OFF",
        rating: "4.8"
    )
}
