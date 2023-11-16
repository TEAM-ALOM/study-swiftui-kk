//
//  PropertyView.swift
//  Clone-02
//
//  Created by 박근경 on 2023/10/13.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        NavigationView {
            VStack {
                HStack {
                    Image("tosstop")
                        .resizable() // 현재 이미지를 뷰에 딱 맞게 채워줌
                        .aspectRatio(contentMode: .fit) // 비율 유지
                        .frame(width: 100) // 크기 조정
                        .padding(.horizontal, 20)
                    Spacer()
                }
                .background(Color(red: 0.949, green: 0.949, blue: 0.971))
                
                
                List {
                    Section {
                        NavigationLink {
                            Text("토스뱅크 광고화면")
                        } label: {
                            Text("토스뱅크")
                                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                        }
                    }
                    .padding(12)
                    
                    Section {
                        propertyCell(imageName: "circle.fill", title: "토스뱅크 통장", money: "0원", buttontitle: "송금" ) {
                            Text("송금화면")
                        }
                        propertyCell(imageName: "circle.fill", title: "토스뱅크에 쌓인 이자", money: "0원", buttontitle: "지금 받기" ) {
                            Text("이자화면")
                        }
                        .listRowSeparator(.hidden)
                        
                        NavigationLink {
                            Text("보기 화면")
                        } label: {
                            Text("계좌, 대출, 증권, 포인트 보기")
                        }
                    }
                    .padding(.vertical, 5)
                    
                    Section {
                        propertyCell(imageName: "circle.fill", title: "이번 달 쓴 금액", money: "0원", buttontitle: "내역" ) {
                            Text("내역화면")
                        }
                        
                        commonCell(imageName: "circle.fill", title: "11월13일에 낼 카드값", money: "0원" ) {
                            Text("카드값내역화면")
                        }
                        .listRowSeparator(.visible)
                    }
                    .padding(.vertical, 5)
                    
                    Section {
                        HStack {
                            Button {
                                //다른 뷰로 이동 어떻게 하지.?
                            } label: {
                                 Text("계좌개설")
                            }
                            Spacer()
                            Button {
                                
                            } label: {
                                 Text("카드발급")
                            }
                            Spacer()
                            Button {
                                
                            } label: {
                                 Text("대출받기")
                            }
                        }
                        .padding(.horizontal, 25)
                        .padding(.vertical, 8)
                    }
                    
                    Section {
                        HScrollView()
                        // section 배경 색상 어떻게 바꾸지 .. ?
                    }
                }
                
            }
        }
        
    }
    @ViewBuilder
    private func propertyCell<V: View>(imageName: String, title: String, money: String, buttontitle: String, destination: @escaping() -> V) -> some View {
        HStack {
            ZStack {
                HStack {
//                    NavigationLink {
//                        destination()
//                    } label: {
//                        EmptyView()
//                    }
//                    .opacity(0)
//                    .frame(width: 0, height: 0)
                    
                    Image(systemName: imageName)
                        .resizable()
                        .frame(width: 45, height: 45)
                        .foregroundColor(.blue)
                    
                    VStack(alignment: .leading, spacing: 2) {
                        Text(title)
                            .font(.system(size: 15,weight: .regular))
                        Text(money)
                            .font(.system(size: 19,weight: .bold))
                    }
                    .frame(width: 170, height: 50, alignment: .leading)
                    .padding(.leading, 8)
                }
                
                Button {
                    print("확인")
                } label: {
                    Text(buttontitle)
                        .font(.system(size:15))
                        .frame(width: 70, height: 30) // 글씨 크기에 맞게 조절
                        .background(.gray)
                        .cornerRadius(5)
                        .opacity(0.5)
                        .padding(.top, 8)
                }
                .offset(x: 150)
            }
        }
    }
}
    
    private func commonCell<V: View>(imageName: String, title: String, money: String, destination: @escaping() -> V) -> some View {
        HStack {
            NavigationLink {
                destination()
            } label: {
                EmptyView()
            }
            .opacity(0)
            .frame(width: 0, height: 0)
            
            Image(systemName: imageName)
                .resizable()
                .frame(width: 45, height: 45)
                .foregroundColor(.blue)
            
            VStack(alignment: .leading, spacing: 2) {
                Text(title)
                    .font(.system(size: 15,weight: .regular))
                Text(money)
                    .font(.system(size: 19,weight: .bold))
            }
            .frame(width: 170, height: 50, alignment: .leading)
            .padding(.leading, 8)
                
        }
    }


#Preview {
    HomeView()
}
