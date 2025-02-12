
import SwiftUI

struct Zepto: View {
    @State private var isExpanded = false
    @State private var location = false
    @State private var account = false
    @State private var personalDetails: PersonalDetails?

    @EnvironmentObject var userViewModel: UserViewModel
    

    
    var body: some View {
    NavigationStack{
        
        VStack {
            HStack {

                    Button(action: { account.toggle() }) {
                        NavigationLink(destination: Account(name: personalDetails?.name ?? "Guest", number: userViewModel.phoneNumber)) {
                            Image(systemName: "person.circle")
                                .font(.largeTitle)
                                .foregroundColor(.white)
                                .frame(width: 50, height: 40)
                        }
                    }

                VStack(alignment: .leading) {
                    Text("Delivery In 13 Mins")
                        .font(.title2)
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                    
                    Button(action: {location.toggle()}) {
                        NavigationLink(destination: LocationView()) {
                            HStack {
                                Text("Work - VDS Office")
                                    .font(.headline)
                                    .fontWeight(.bold)
                                    .foregroundColor(.white)
                                
                                Image(systemName: "chevron.down")
                                    .font(.headline)
                                    .bold()
                                    .foregroundColor(.white)
                            }
                        }
                    }
                }
                
                Spacer()
               
                NavigationLink(destination: ZeptoPassView()) {
                    Image("getPass")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 90, height: 80)
                        .foregroundColor(.blue)
                        .cornerRadius(100)
                        .padding(.horizontal , 10)
                 
                                  
                }
            }
            TextField("Search...", text: .constant(""))
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding(.horizontal)
                .padding(.bottom,20)

            
        }
        .background(Color(red:65/255,green: 44/255,blue: 129/255))
      
                ScrollView {
                    VStack(alignment: .leading,spacing: 0) {
                        
                    
                        
                        VStack(spacing: 0) {
                            Image("Image1")
                                .resizable()
                                .frame(height: 140)
                            
                            Image("Image2")
                                .resizable()
                                .frame(height: 30)
                        }
                        
                        
                        ScrollView(.horizontal, showsIndicators: false) {
                            HStack {
                                
                                ProductCard(phoneNumber: userViewModel.phoneNumber, image: "vegetables911", title: "Tomato Local", price: 10, originalPrice: "₹100", discount: "90% Off", rating: "4.7")
                                ProductCard(phoneNumber: userViewModel.phoneNumber, image: "vegetables4", title: "Oregganic White Eggs", price: 81, originalPrice: "₹115", discount: "29% Off", rating: "4.6")
                                ProductCard(phoneNumber: userViewModel.phoneNumber,image: "vegetables3", title: "Coriander with root", price: 7, originalPrice: "₹66", discount: "89% Off", rating: "4.7")
                                ProductCard(phoneNumber: userViewModel.phoneNumber,image: "vegetables", title: "Tomato Local", price: 10, originalPrice: "₹100", discount: "90% Off", rating: "4.7")
                                ProductCard(phoneNumber: userViewModel.phoneNumber,image: "vegetables3", title: "Coriander with root", price: 7, originalPrice: "₹66", discount: "89% Off", rating: "4.7")
                                ProductCard(phoneNumber: userViewModel.phoneNumber,image: "vegetables2", title: "Coriander with root", price: 70, originalPrice: "₹66", discount: "89% Off", rating: "4.7")
                                ProductCard(phoneNumber: userViewModel.phoneNumber, image: "vegetables911", title: "Tomato Local", price: 10, originalPrice: "₹100", discount: "90% Off", rating: "4.7")
                                ProductCard(phoneNumber: userViewModel.phoneNumber,image: "vegetables4", title: "Oregganic White Eggs", price: 81, originalPrice: "₹115", discount: "29% Off", rating: "4.6")
                                ProductCard(phoneNumber: userViewModel.phoneNumber,image: "vegetables3", title: "Coriander with root", price: 7, originalPrice: "₹66", discount: "89% Off", rating: "4.7")
                                ProductCard(phoneNumber: userViewModel.phoneNumber,image: "vegetables", title: "Tomato Local", price: 10, originalPrice: "₹100", discount: "90% Off", rating: "4.7")
                                ProductCard(phoneNumber: userViewModel.phoneNumber,image: "vegetables3", title: "Coriander with root", price: 7, originalPrice: "₹66", discount: "89% Off", rating: "4.7")
                                ProductCard(phoneNumber: userViewModel.phoneNumber,image: "vegetables2", title: "Coriander with root", price: 70, originalPrice: "₹66", discount: "89% Off", rating: "4.7")
                            }
                            .padding(.leading,20)
                        }
                        
                        .background(Color(red: 249/255,green: 245/255 ,blue: 231/255))
                        
                        Button(action: {isExpanded.toggle()}) {
                            NavigationLink(destination: ShowMore(index: 0)) {
                                Text("Show more")
                                    .frame(maxWidth: .infinity)
                                    .padding()
                                    .background(Color.green)
                                    .foregroundColor(.white)
                                    .cornerRadius(10)

                                
                            }
                            .padding()
                            
                            
                        }

                        
                        Text("Masala, Dry Fruits, and More")
                            .font(.title2)
                            .bold()
                            .padding(.leading)
                            .padding()
                        
                        ScrollView(.horizontal, showsIndicators: false) {
                            HStack {
                                ProductCard(phoneNumber: userViewModel.phoneNumber,image: "maggi", title: "Maggi Masala Ae Magic", price: 55, originalPrice: "₹60", discount: "8% Off", rating: "4.8")
                                ProductCard(phoneNumber: userViewModel.phoneNumber,image: "flyberry", title: "flyberry gourmet kalmi dates", price: 289, originalPrice: "₹399", discount: "27% Off", rating: "4.6")
                                ProductCard(phoneNumber: userViewModel.phoneNumber,image: "chilli", title: "Chilli Powder", price: 279, originalPrice: "₹66", discount: "89% Off", rating: "4.7")
                                ProductCard(phoneNumber: userViewModel.phoneNumber,image: "maggi", title: "Maggi Masala Ae Magic", price: 55, originalPrice: "₹60", discount: "8% Off", rating: "4.8")
                                ProductCard(phoneNumber: userViewModel.phoneNumber,image: "flyberry", title: "flyberry gourmet kalmi dates", price: 289, originalPrice: "₹399", discount: "27% Off", rating: "4.6")
                                ProductCard(phoneNumber: userViewModel.phoneNumber,image: "chilli", title: "Chilli Powder", price: 279, originalPrice: "₹66", discount: "89% Off", rating: "4.7")
                                ProductCard(phoneNumber: userViewModel.phoneNumber,image: "maggi", title: "Maggi Masala Ae Magic", price: 55, originalPrice: "₹60", discount: "8% Off", rating: "4.8")
                                ProductCard(phoneNumber: userViewModel.phoneNumber,image: "flyberry", title: "flyberry gourmet kalmi dates", price: 289, originalPrice: "₹399", discount: "27% Off", rating: "4.6")
                                ProductCard(phoneNumber: userViewModel.phoneNumber,image: "chilli", title: "Chilli Powder", price: 279, originalPrice: "₹66", discount: "89% Off", rating: "4.7")
                                ProductCard(phoneNumber: userViewModel.phoneNumber,image: "maggi", title: "Maggi Masala Ae Magic", price: 55, originalPrice: "₹60", discount: "8% Off", rating: "4.8")
                                ProductCard(phoneNumber: userViewModel.phoneNumber,image: "flyberry", title: "flyberry gourmet kalmi dates", price: 289, originalPrice: "₹399", discount: "27% Off", rating: "4.6")
                                ProductCard(phoneNumber: userViewModel.phoneNumber,image: "chilli", title: "Chilli Powder", price: 279, originalPrice: "₹66", discount: "89% Off", rating: "4.7")
                                ProductCard(phoneNumber: userViewModel.phoneNumber,image: "maggi", title: "Maggi Masala Ae Magic", price: 55, originalPrice: "₹60", discount: "8% Off", rating: "4.8")
                                ProductCard(phoneNumber: userViewModel.phoneNumber,image: "flyberry", title: "flyberry gourmet kalmi dates", price: 289, originalPrice: "₹399", discount: "27% Off", rating: "4.6")
                                ProductCard(phoneNumber: userViewModel.phoneNumber,image: "chilli", title: "Chilli Powder", price: 279, originalPrice: "₹66", discount: "89% Off", rating: "4.7")
                                ProductCard(phoneNumber: userViewModel.phoneNumber,image: "maggi", title: "Maggi Masala Ae Magic", price: 55, originalPrice: "₹60", discount: "8% Off", rating: "4.8")
                                ProductCard(phoneNumber: userViewModel.phoneNumber,image: "flyberry", title: "flyberry gourmet kalmi dates", price: 289, originalPrice: "₹399", discount: "27% Off", rating: "4.6")
                                ProductCard(phoneNumber: userViewModel.phoneNumber,image: "chilli", title: "Chilli Powder", price: 279, originalPrice: "₹66", discount: "89% Off", rating: "4.7")
                                
                                
                            }
                        }
                        .padding(.horizontal)
                        
                        
                        Spacer()
                    }
                    .background(Color.white)
                    categories()
                }
                .background(Color.white)
                .navigationTitle(Text(""))

                    .navigationBarBackButtonHidden(true)
                    .navigationBarHidden(true)
        
        }
    }
    private func fetchPersonalDetails() {
            if let user = CoreDataManager.shared.fetchUserDetails(phoneNumber: userViewModel.phoneNumber) {
                self.personalDetails = user
            }
        }
    
}

#Preview {
    Zepto().environmentObject(UserViewModel())
}

