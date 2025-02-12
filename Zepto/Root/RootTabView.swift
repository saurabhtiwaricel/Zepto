import SwiftUI

struct RootTabView: View {
    @EnvironmentObject var userViewModel: UserViewModel
    @State private var selectedTab = 0

    var body: some View {
        TabView(selection: $selectedTab) {
            Zepto()
                .tabItem {
                    Image(systemName: "house")
                    Text("Zepto")
                }
                .tag(0)

            Categories()
                .tabItem {
                    Image(systemName: "circle.grid.2x2")
                    Text("Categories")
                }
                .tag(1)

            CartView(userPhoneNumber: userViewModel.phoneNumber)
                .tabItem {
                    Image(systemName: "cart")
                    Text("Cart")
                }
                .tag(2)
        }
    }
}


#Preview {
    RootTabView().environmentObject(UserViewModel())
}
