import SwiftUI
import AVKit

struct CartView: View {
    @State private var cartOrders: [Order] = []
    @State private var showCheckoutGif = false
    @Environment(\.presentationMode) var presentationMode
    @State var totalAmoutn:Double = 0.0

    let userPhoneNumber: String
    var body: some View {
        VStack {

            if showCheckoutGif {
                GifImage(name: "order_placed_successfull")
                    .frame(width: 50, height: 50)
                    .scaledToFit()
           
            } else {
                if
                    cartOrders.isEmpty {
                    CartEmpty()
                } else {
                    List(cartOrders, id: \.id) { order in
                        HStack {
                            Image(order.image ?? "placeholder")
                                .resizable()
                                .frame(width: 60, height: 60)
                                .cornerRadius(8)

                            VStack(alignment: .leading) {
                                Text(order.title ?? "Unknown")
                                    .font(.headline)
                               // Text(String(format: "₹%.2f x %d", order.price, order.quantity))//String(format: "%.2f X %", price)
                                HStack{
                                    var x554 = order.price
                                    Text("\(x554.withoutTrailingZeros())")
                                        .font(.subheadline)
                                        .foregroundColor(.gray)
                                    Text("x")
                                        .font(.subheadline)
                                        .foregroundColor(.gray)
                                    Text("\(order.quantity)")
                                        .font(.subheadline)
                                        .foregroundColor(.gray)
                                }
                               
                                
                            }

                            Spacer()

                            Button(action: { removeFromCart(order) }) {
                                Image(systemName: "trash")
                                    .foregroundColor(.red)
                            }
                        }
                    }
                   
                    Button(action: checkout) {
                        HStack(alignment: .center){
                            Text("Click to Pay")
                            Text("₹\(totalAmoutn.withoutTrailingZeros())")
                        }
                            .bold()
                            .frame(maxWidth: .infinity)
                            .padding()
                            .background(Color.green)
                            .foregroundColor(.white)
                            .cornerRadius(10)
                        
                    }
                    .padding()
                }
            }
        }
        .onAppear {
            cartOrders = CoreDataManager.shared.fetchOrders(for: userPhoneNumber)
           // totalAmoutn = cartOrders.reduce(0) { $0 + ($1.price * Double($1.quantity)) }
            for order in cartOrders {
                totalAmoutn += order.price * Double(order.quantity)
                print("Total \(totalAmoutn)")
            }
            
        }
    }

    private func removeFromCart(_ order: Order) {
        CoreDataManager.shared.deleteOrder(title: order.title ?? "", phoneNumber: userPhoneNumber)
        cartOrders = CoreDataManager.shared.fetchOrders(for: userPhoneNumber)
    }

    private func checkout() {
        showCheckoutGif = true

        DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
            CoreDataManager.shared.deleteAllOrders(for: userPhoneNumber)
            cartOrders = []
            totalAmoutn = 0.0
            showCheckoutGif = false
        }
    }


}
#Preview{
   // CartView(userPhoneNumber: "order_placed_successfull")
}


extension Double {
    
    func withoutTrailingZeros() -> String {
        let formatter = NumberFormatter()
        formatter.minimumFractionDigits = 0
        formatter.maximumFractionDigits = 2
        return formatter.string(from: NSNumber(value: self)) ?? "\(self)"
    }
}
