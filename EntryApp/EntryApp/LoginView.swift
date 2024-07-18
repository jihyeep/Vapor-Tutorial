//
//  LoginView.swift
//  EntryApp
//
//  Created by 박지혜 on 7/18/24.
//

import SwiftUI

struct LoginView: View {
    @State private var accountLoginButtonTapped: Bool = false
    
    var body: some View {
        NavigationStack {
            ZStack {
                // MARK: - 배경색
                Color(hex: "#121A21")
                    .ignoresSafeArea(.all)
                
                VStack {
                    Image("image")
                        .resizable()
                        .frame(width: 390, height: 218)
                        // TODO: 이미지 비율 수정
                        .aspectRatio(contentMode: .fill)
                        
                    Text("Create stunning social graphics in seconds")
                        .font(.system(size: 28, weight: .bold))
                        .foregroundStyle(Color(hex: "#FFFFFF"))
                        .padding(EdgeInsets(top: 20, leading: 16, bottom: 12, trailing: 16))
                        .frame(width: 390, height: 102)
                        .multilineTextAlignment(.center)
                    
                    // MARK: - 소셜 로그인
                    Button {
                        
                    } label: {
                        Text("Continue with Google")
                            .font(.system(size: 14, weight: .bold))
                            .foregroundStyle(Color(hex: "#FFFFFF"))
                            .frame(width: 328, height: 40)
                            .padding(EdgeInsets(top: 0, leading: 16, bottom: 0, trailing: 16))
                            .background(RoundedRectangle(cornerRadius: 8)
                                .fill(Color(hex: "#243647")))
                        
                    }
                    Button {
                        
                    } label: {
                        Text("Continue with Facebook")
                            .font(.system(size: 14, weight: .bold))
                            .foregroundStyle(Color(hex: "#FFFFFF"))
                            .frame(width: 328, height: 40)
                            .padding(EdgeInsets(top: 0, leading: 16, bottom: 0, trailing: 16))
                            .background(RoundedRectangle(cornerRadius: 8)
                                .fill(Color(hex: "#243647")))
                    }
                    Button {
                        
                    } label: {
                        Text("Continue with Apple")
                            .font(.system(size: 14, weight: .bold))
                            .foregroundStyle(Color(hex: "#FFFFFF"))
                            .frame(width: 328, height: 40)
                            .padding(EdgeInsets(top: 0, leading: 16, bottom: 0, trailing: 16))
                            .background(RoundedRectangle(cornerRadius: 8)
                                .fill(Color(hex: "#243647")))
                    }
                    // MARK: - 회원가입
                    Button {
                        
                    } label: {
                        Text("Sign up for free")
                            .font(.system(size: 14, weight: .bold))
                            .foregroundStyle(Color(hex: "#FFFFFF"))
                            .frame(width: 390, height: 37)
                            .padding(EdgeInsets(top: 0, leading: 16, bottom: 0, trailing: 16))
                    }
                    // MARK: - 계정 로그인
                    Button {
                        accountLoginButtonTapped = true
                    } label: {
                        Text("Have an account already? Log in.")
                            .font(.system(size: 14))
                            .foregroundStyle(Color(hex: "#94ADC7"))
                            .frame(width: 390, height: 37)
                            .padding(EdgeInsets(top: 4, leading: 16, bottom: 12, trailing: 16))
                    }
                    .navigationDestination(isPresented: $accountLoginButtonTapped) {
                        LoginDetailView()
                    }
                    Spacer()
                }
            }
            // MARK: - Navigation title
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .principal) {
                    Text("Entry")
                        .foregroundStyle(Color(hex: "#FFFFFF"))
                        .font(.system(size: 18, weight: .bold))
                }
            }
        }
    }
}

#Preview {
    LoginView()
}
