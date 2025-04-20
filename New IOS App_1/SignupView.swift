import SwiftUI

struct SignUpView: View {
    @State private var fullName: String = ""
    @State private var index: String = ""
    @State private var batchName: String = ""
    @State private var email: String = ""
    @State private var password: String = ""
    @State private var agreedToTerms: Bool = false
    
    var body: some View {
        VStack(spacing: 20) {
            Spacer()
            
            // Title
            Text("Sign up")
                .font(.title)
                .bold()
            
            // Subtitle
            Text("Welcome !")
                .font(.title2)
                .bold()
                
            
            // Input Fields
            Group {
                customTextField("Full Name", text: $fullName)
                    .background(Color.cyan.opacity(0.6))
                    .foregroundColor(.black)
                customTextField("Index", text: $index)
                    .foregroundColor(.black)
                customTextField("Batch name", text: $batchName)
                    .foregroundColor(.black)
                customTextField("Email", text: $email)
                    .foregroundColor(.black)
                SecureField("Select a password", text: $password)
                    .padding()
                    .background(Color.white.opacity(0.6))
                    .foregroundColor(.black)
                    .cornerRadius(8)
                    .shadow(radius: 1)

                    
            }
            
            // Terms and Conditions
            HStack(alignment: .top) {
                Button(action: {
                    agreedToTerms.toggle()
                }) {
                    Image(systemName: agreedToTerms ? "checkmark.circle.fill" : "circle")
                        .foregroundColor(.black)
                }
                Text("By creating an account or signing you agree to our **Terms and Conditions**")
                    .font(.footnote)
                    .foregroundColor(.gray)
            }
            .padding(.top, 10)
            .frame(maxWidth: .infinity, alignment: .leading)
            
            // Submit Button
            Button(action: {
                // Handle submit logic
            }) {
                Text("Submit")
                    .frame(maxWidth: .infinity)
                    .padding()
                    .background(Color.cyan.opacity(0.6))
                    .foregroundColor(.black)
                    .cornerRadius(8)
            }
            
            Spacer()
        }
        .padding()
        .background(Color.blue)
    }
    
    // Custom TextField
    @ViewBuilder
    func customTextField(_ placeholder: String, text: Binding<String>) -> some View {
        TextField(placeholder, text: text)
            .padding()
            .background(Color.white)
            .cornerRadius(8)
            .shadow(radius: 1)
    }
}

#Preview {
    SignUpView()
}
