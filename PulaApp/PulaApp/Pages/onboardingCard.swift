//
//  onboardingCard.swift
//  PulaApp
//
//  Created by Julia Sakakibara on 11/04/23.
//

import SwiftUI

struct onboardingCard: View {
    var body: some View {
        VStack {
            Spacer()
            
            
            VStack {
                                
                TabView{
                    onboardingContent1()
                    onboardingContent2()
                    onboardingContent3()
                }
                .tabViewStyle(.page) //paginação
                .indexViewStyle(.page(backgroundDisplayMode: .always)) // cor da paginação

                
                //btn next
                Button(action: {
                    
                }, label: {
                    Text("Próximo")
                        .font(.body)
                        .fontWeight(.semibold)
                        .padding(.all, 16.0)
                        .background(Color(uiColor: UIColor.systemGray5))
                        .cornerRadius(10)
                        .foregroundColor(.black)
                })
                
                
                //btn skip
                Button(action: {
                    
                }, label: {
                    Text("Pular")
                        .font(.body)
                        .padding(.vertical)
                        .foregroundColor(.blue)
                })
            }
            //.background(.red)
        }
    }
}

struct onboardingCard_Previews: PreviewProvider {
    static var previews: some View {
        onboardingCard()
    }
}
