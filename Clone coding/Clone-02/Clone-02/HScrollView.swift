//
//  HScrollView.swift
//  Clone-02
//
//  Created by 박근경 on 2023/11/08.
//

import SwiftUI

struct HScrollView: View {
    var body: some View {
        ScrollView([.horizontal], showsIndicators: false) {
            HStack {
                Button {
                    print("멤버십 모아보기")
                } label: {
                    ZStack {
                        Rectangle()
                            .fill(.white)
                            .frame(width: 150, height: 150)
                        VStack(alignment: .leading) {
                            Text("신세계 포인트")
                                .foregroundColor(.gray)
                            Text("멤버십 모아보기")
                                .foregroundColor(.black)
                            
                        }
                    }
                }
                Button {
                    print("내 보험 전부 조회")
                } label: {
                    ZStack {
                        Rectangle()
                            .fill(.white)
                            .frame(width: 150, height: 150)
                        VStack(alignment: .leading) {
                            Text("최근")
                                .foregroundColor(.gray)
                            Text("내 보험 전부 조회")
                                .foregroundColor(.black)
                        }
                    }
                }
                Button {
                    print("신용점수 보기")
                } label: {
                    ZStack {
                        Rectangle()
                            .fill(.white)
                            .frame(width: 150, height: 150)
                        VStack(alignment: .leading) {
                            Text("자주")
                                .foregroundColor(.gray)
                            Text("신용점수 보기")
                                .foregroundColor(.black)
                        }
                    }
                }
                Button {
                    print("더보기")
                } label: {
                    ZStack {
                        Rectangle()
                            .fill(.white)
                            .frame(width: 150, height: 150)
                        
                        VStack(alignment: .leading) {
                            Text("인기")
                                .foregroundColor(.gray)
                            Text("더보기")
                                .foregroundColor(.black)
                        }
                    }
                }
            }
        }
    }
}
@ViewBuilder
private func plainButton(Name: String )-> some View {
    Button {
        print(Name)
    } label: {
        ZStack {
            Rectangle()
                .fill(.red)
                .frame(width: 150, height: 150)
                .cornerRadius(5)
            Text(Name)
        }
    }
}

#Preview {
    HScrollView()
}
