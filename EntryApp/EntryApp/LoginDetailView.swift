//
//  EntryListView.swift
//  EntryApp
//
//  Created by 박지혜 on 7/18/24.
//

import SwiftUI

struct LoginDetailView: View {
    @Environment(\.dismiss) var dismiss
    @State private var username: String = ""
    @State private var password: String = ""
    @State private var loginButtonTapped: Bool = false
    
    var body: some View {
        ZStack {
            // MARK: - 배경색
            Color(hex: "#121A21")
                .ignoresSafeArea(.all)
            
            VStack {
                Text("Log in to your account")
                    .font(.system(size: 22, weight: .bold))
                    .foregroundStyle(Color(hex: "#FFFFFF"))
                    
                    .padding(EdgeInsets(top: 20, leading: 16, bottom: 12, trailing: 16))
                    .frame(width: 390, height: 60, alignment: .leading)
                // MARK: - 아이디, 비밀번호 입력
                TextField(text: $username) {
                    Text("Username")
                        .font(.system(size: 16))
                        .foregroundStyle(Color(hex: "#94ADC7"))
                }
                .frame(width: 328, height: 56)
                .padding(EdgeInsets(top: 0, leading: 16, bottom: 0, trailing: 16))
                .background(RoundedRectangle(cornerRadius: 8)
                    .fill(Color(hex: "#243647")))
                .padding(.bottom, 14)
                
                TextField(text: $password) {
                    Text("Password")
                        .font(.system(size: 16))
                        .foregroundStyle(Color(hex: "#94ADC7"))
                }
                .frame(width: 328, height: 56)
                .padding(EdgeInsets(top: 0, leading: 16, bottom: 0, trailing: 16))
                .background(RoundedRectangle(cornerRadius: 8)
                    .fill(Color(hex: "#243647")))
                // MARK: - 비밀번호 찾기
                Button {
                    
                } label: {
                    Text("Forgot password?")
                        .font(.system(size: 14))
                        .foregroundStyle(Color(hex: "#94ADC7"))
                        .padding(EdgeInsets(top: 4, leading: 16, bottom: 12, trailing: 16))
                        .frame(width: 390, height: 37, alignment: .leading)
                }
                
                VStack {
                    // MARK: - 로그인
                    Button {
                        loginButtonTapped = true
                    } label: {
                        Text("Log In")
                            .font(.system(size: 16, weight: .bold))
                            .foregroundStyle(Color(hex: "#FFFFFF"))
                            .frame(width: 328, height: 48)
                            .padding(EdgeInsets(top: 0, leading: 20, bottom: 0, trailing: 20))
                            .background(RoundedRectangle(cornerRadius: 8)
                                .fill(Color(hex: "#1A80E5")))
                    }
                    .navigationDestination(isPresented: $loginButtonTapped) {
                        EntryListView()
                    }
                    // MARK: - 회원가입
                    Button {
                        
                    } label: {
                        Text("New user? Sing Up")
                            .font(.system(size: 16, weight: .bold))
                            .foregroundStyle(Color(hex: "#FFFFFF"))
                            .frame(width: 390, height: 48)
                            .padding(EdgeInsets(top: 0, leading: 20, bottom: 0, trailing: 20))
                    }
                }
                Spacer()
            }
        }
        // MARK: - Back button
        .navigationBarBackButtonHidden(true)
        .toolbar {
            ToolbarItem(placement: .topBarLeading) {
                Button {
                    dismiss()
                } label: {
                    Image(systemName: "arrow.left")
                        .resizable()
                        .frame(width: 24, height: 24)
                        .foregroundStyle(Color(hex: "#FFFFFF"))
                }
            }
        }
    }
}

#Preview {
    LoginDetailView()
}
