import SwiftUI
struct Verification: View {
    let otpLength = 6
    @State private var otpValues: [String] = Array(repeating: "", count: 6)
    @FocusState private var focusedIndex: Int?
    let number: String
    private let coreDataManager = CoreDataManager.shared
    @State private var timeRemaining = 30
    @State private var timerRunning = false
    @State private var timer: Timer? = nil
    @State private var isVerified = false
    @Environment(\.presentationMode) var presentationMode
    @EnvironmentObject var userViewModel: UserViewModel
    
    var body: some View {
        NavigationStack {
            ZStack {
                Image("Verification_background")
                    .resizable()
                    .scaledToFill()
                    .edgesIgnoringSafeArea(.all)
                
                VStack(spacing: 20) {
                    Text("OTP has been sent to \(number)")
                        .bold()
                    
                    HStack {
                        ForEach(0..<otpLength, id: \.self) { index in
                            TextField("", text: $otpValues[index])
                                .frame(width: 50, height: 50)
                                .multilineTextAlignment(.center)
                                .keyboardType(.numberPad)
                                .textContentType(.oneTimeCode)
                                .focused($focusedIndex, equals: index)
                                .background(Color.white)
                                .cornerRadius(20)
                                .foregroundColor(.black)
                                .onChange(of: otpValues[index]) { newValue in
                                    if newValue.count > 1 {
                                        otpValues[index] = String(newValue.prefix(1))
                                    }
                                    if !newValue.isEmpty {
                                        if index < otpLength - 1 {
                                            focusedIndex = index + 1
                                        }
                                    }
                                    checkOTP()
                                }
                                .onAppear {
                                    if index == 0 {
                                        focusedIndex = 0
                                    }
                                }
                        }
                    }
                    
                    Text("\(formattedTime)")
                        .font(.largeTitle)
                        .foregroundColor(timeRemaining > 5 ? .white : .red)
                    
                    Text("Didn't get it?")
                    
                    Button(action: startTimer) {
                        Text(timerRunning ? "Counting..." : "Send OTP (SMS)")
                            .padding()
                            .frame(width: 200)
                            .foregroundColor(.white)
                            .cornerRadius(10)
                            .underline()
                    }
                    .disabled(timerRunning)

                    
                    NavigationLink(destination: RootTabView(), isActive: $isVerified) {
                        EmptyView()
                    }
                }
                .foregroundColor(.white)
            }
            .navigationBarBackButtonHidden(true) 
                    .toolbar {
                        ToolbarItem(placement: .navigationBarLeading) {
                            Button(action: {
                                presentationMode.wrappedValue.dismiss() // Go back
                            }) {
                                HStack {
                                    Image(systemName: "chevron.left")
                                        .foregroundStyle(Color.black)
                                   
                                }
                            }
                        }
                    }

        }

        
    }
    
    private var formattedTime: String {
        let minutes = timeRemaining / 60
        let seconds = timeRemaining % 60
        return String(format: "%02d:%02d", minutes, seconds)
    }

    private func startTimer() {
        timeRemaining = 30
        timerRunning = true

        timer = Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true) { _ in
            if timeRemaining > 0 {
                timeRemaining -= 1
            } else {
                timer?.invalidate()
                timerRunning = false
            }
        }
    }

    private func checkOTP() {
        let enteredOTP = otpValues.joined()
        if enteredOTP == "123456" {
            userViewModel.saveUser()
            isVerified = true
            
        }
    }
}

#Preview {
    Verification(number: "*********")
}
