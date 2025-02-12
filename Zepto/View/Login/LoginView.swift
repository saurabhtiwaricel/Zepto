import SwiftUI

struct LoginView: View {
    @EnvironmentObject var userViewModel: UserViewModel
    @State private var navigateToVerification = false

    var body: some View {
        NavigationStack {
            ZStack {
                Image("Login_Background")
                    .resizable()
                    .scaledToFill()
                    .edgesIgnoringSafeArea(.all)

                VStack {
                    HStack {
                        Text("+91")
                            .bold()
                            .foregroundColor(.black)

                        TextField("Enter Phone Number", text: $userViewModel.phoneNumber)
                            .keyboardType(.numberPad)
                            .onChange(of: userViewModel.phoneNumber) { newValue in
                                userViewModel.phoneNumber = String(newValue.prefix(10))
                            }
                    }
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(Color.white)
                    .cornerRadius(15)
                    .padding(.horizontal, 20)

                    Button {
                        if userViewModel.phoneNumber.count == 10 {
                            saveUser()
                            userViewModel.isLoggedIn = true
                            navigateToVerification = true
                        }
                    } label: {
                        Text("Continue")
                            .frame(maxWidth: .infinity)
                            .padding()
                            .background(Color(red: 208/255, green: 32/255, blue: 144/255))
                            .foregroundColor(.white)
                            .cornerRadius(15)
                            .padding(.horizontal, 20)
                            .padding(.top)
                    }
                    .disabled(userViewModel.phoneNumber.count != 10)
                    .opacity(userViewModel.phoneNumber.count == 10 ? 1 : 0.5)
                }
            }
            .navigationBarHidden(true)
            .navigationDestination(isPresented: $navigateToVerification) {
                Verification(number: "+91 \(userViewModel.phoneNumber)")
            }
        }
    }
    
    
    func saveUser() {
        if let existingUser = CoreDataManager.shared.fetchUserDetails(phoneNumber: userViewModel.phoneNumber) {
            print("User already exists: \(existingUser.phoneNumber ?? "")")
        } else {
            CoreDataManager.shared.saveUserDetails(
                id: UUID(),
                name: nil,
                email: nil,
                phoneNumber: userViewModel.phoneNumber,
                address: nil
            )
            print("New user saved: \(userViewModel.phoneNumber)")
        }
    }
}

#Preview {
    LoginView().environmentObject(UserViewModel())
}
