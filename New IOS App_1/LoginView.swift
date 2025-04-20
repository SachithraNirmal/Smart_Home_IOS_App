import SwiftUI

struct LoginView: View {
    @State private var email: String = ""
    @State private var password: String = ""
    @State private var isPasswordVisible: Bool = false
    
    var body: some View {
        VStack(spacing: 20) {
            Spacer()
            
            // Title
            Text("Login")
                .font(.title)
                .bold()
            
            // Subtitle
            Text("Welcome !")
                .font(.title2)
                .bold()
            
            // Email Field
            TextField("Enter your email", text: $email)
                .padding()
                .background(Color.white)
                .cornerRadius(8)
                .shadow(radius: 1)
            
            // Password Field
            HStack {
                Group {
                    if isPasswordVisible {
                        TextField("Password", text: $password)
                    } else {
                        SecureField("Password", text: $password)
                    }
                }
                .padding(.leading)
                
                Button(action: {
                    isPasswordVisible.toggle()
                }) {
                    Image(systemName: isPasswordVisible ? "eye.slash" : "eye")
                        .padding()
                }
            }
            .background(Color.white)
            .cornerRadius(8)
            .shadow(radius: 1)
            
            // Forgot Password
            HStack {
                Spacer()
                Button("Forgot Password ?") {
                    // Navigate to Forgot Password
                }
                .font(.footnote)
                .foregroundColor(.gray)
            }
            
            // Log In Button
            Button(action: {
                // Handle login logic
            }) {
                Text("Log In")
                    .frame(maxWidth: .infinity)
                    .padding()
                    .background(Color.cyan)
                    .foregroundColor(.black)
                    .cornerRadius(8)
            }

            // OR Divider
            HStack {
                Rectangle().frame(height: 1).foregroundColor(.gray)
                Text("Or").foregroundColor(.gray)
                Rectangle().frame(height: 1).foregroundColor(.gray)
            }.padding(.horizontal)

            // Social Login Buttons
            VStack(spacing: 10) {
                socialButton(label: "Continue with Apple", image: "apple.logo")
                socialButton(label: "Continue with Google", image: "globe")
                socialButton(label: "Continue with Facebook", image: "facebook")
            }

            // Biometric Icon
            Image(systemName: "touchid")
                .resizable()
                .frame(width: 50, height: 50)
                .padding()

            // Sign Up Link
            HStack {
                Text("Don't have an account?")
                Button("Sign up") {
                    // Navigate to Sign Up
                }
                .foregroundColor(.blue)
                .bold()
            }
            
            Spacer()
        }
        .padding()
        .background(Color.blue)
    }
    
    @ViewBuilder
    func socialButton(label: String, image: String) -> some View {
        Button(action: {
            // Handle social login
        }) {
            HStack {
                Image(systemName: image)
                Text(label)
                    .font(.system(size: 16, weight: .medium))
            }
            .frame(maxWidth: .infinity)
            .padding()
            .background(Color.white)
            .cornerRadius(8)
            .shadow(radius: 1)
        }
    }
}

#Preview {
    LoginView()
}
