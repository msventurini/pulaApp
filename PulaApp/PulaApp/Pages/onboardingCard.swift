//
//  onboardingCard.swift
//  PulaApp
//
//  Created by Julia Sakakibara on 11/04/23.
//

import SwiftUI

struct onboardingCard: View {
    @State var page = 0
    @State private var isPresenting: Bool = false
    
    var body: some View {
        
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
                    Button {
                        self.isPresenting = true
                    } label: {
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
                Button {
                    self.isPresenting = true
                } label: {
                    Text("Pular")
                        .font(.body)
                        .padding(.vertical)
                        .foregroundColor(.blue)
                }

            }
            //.background(.red)
            
        }
        .fullScreenCover(isPresented: $isPresenting) {
            ContentView()
        }
    }
}

struct onboardingCard_Previews: PreviewProvider {
    static var previews: some View {
        onboardingCard()
    }
}
