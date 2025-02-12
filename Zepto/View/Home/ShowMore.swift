import SwiftUI

struct ShowMore: View {
    @State var index: Int
    @Environment(\.presentationMode) var presentationMode

    var body: some View {
        NavigationStack {
            HStack {
                
                VStack {
                    ScrollView {
                        ForEach(0..<5, id: \.self) { i in
                            Button {
                                self.index = i
                            } label: {
                                sideButton(image: "\(12 + i)")
                                
                            }
                        }
                        ForEach(0..<5, id: \.self) { i in
                            Button {
                                self.index = i
                            } label: {
                                sideButton(image: "\(12 + i)")
                            }
                        }
                    }
                }

                // Content View
                VStack {
                    ScrollView {
                        switch index {
                        case 0: All()
                        case 1: FreshFruits()
                        case 2: FreshVegetables()
                        case 3: NewArrivals()
                        case 4: Leafy()
                        default: EmptyView()
                        }
                    }
                }
            }
        }
        .navigationBarBackButtonHidden(true)
        .toolbar {
            ToolbarItem(placement: .navigationBarLeading) {
                Button(action: {
                    presentationMode.wrappedValue.dismiss()
                }) {
                    HStack {
                        Image(systemName: "chevron.left")
                            .foregroundColor(.black)
                            .font(.title2)
                        Text("Fruits & Vegetables")
                            .foregroundColor(.black)
                            .bold()
                    }
                }
            }
        }
    }
}




#Preview {
    ShowMore(index: 0)
}
