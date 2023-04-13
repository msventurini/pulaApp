//
//  onboardingCard.swift
//  PulaApp
//
//  Created by Julia Sakakibara on 11/04/23.
//

import SwiftUI

struct onboardingCard: View {
    @State var page = 0
    var body: some View {
        NavigationStack {
            VStack {
                Spacer()
                
                VStack {
                    TabView(selection: $page){
                        onboardingContent1()
                            .tag(0)
                        onboardingContent2()
                            .tag(1)
                        onboardingContent3()
                            .tag(2)
                    }
                    .tabViewStyle(.page) //paginação
                    .indexViewStyle(.page(backgroundDisplayMode: .always)) // cor da paginação

                    //btn next
                    if page < 2 {
                        Button(action: {
                            page += 1
                        }, label: {
                            Text("Próximo")
                                .font(.body)
                                .fontWeight(.semibold)
                                .padding(.all, 16.0)
                                .background(Color(uiColor: UIColor.systemGray5))
                                .cornerRadius(10)
                                .foregroundColor(.black)
                        })
                    } else {
                        NavigationLink(destination: ContentView()) {
                            Text("Próximo")
                                .font(.body)
                                .fontWeight(.semibold)
                                .padding(.all, 16.0)
                                .background(Color(uiColor: UIColor.systemGray5))
                                .cornerRadius(10)
                                .foregroundColor(.black)
                        }
                    }
                    
                    //btn skip
                    NavigationLink(destination: ContentView()) {
                        Text("Pular")
                            .font(.body)
                            .padding(.vertical)
                            .foregroundColor(.blue)
                    }
                }
                //.background(.red)
            }
        }
    }
}

struct onboardingCard_Previews: PreviewProvider {
    static var previews: some View {
        onboardingCard()
    }
}
