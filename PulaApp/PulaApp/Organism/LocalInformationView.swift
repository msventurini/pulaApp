//
//  LocalInformationView.swift
//  PulaApp
//
//  Created by Matheus Silveira Venturini on 13/04/23.
//

import SwiftUI

struct LocalInformationView: View {
    
    var event: Event

    var body: some View {
        
        
        GeometryReader { geometryOut in
            ZStack {
                
                
                
                ZStack {
                                        
                    GeometryReader { geometry in
                        
                        RoundedRectangle(cornerRadius: 5)
                            .frame(width: geometry.size.width * 0.35,height: geometry.size.height * 0.1)
                            //.scaledToFit()
                            .colorInvert()
                        
                        RoundedRectangle(cornerRadius: 5)
                            .rotation(Angle(degrees: 45))
                            .frame(width: geometry.size.width * 0.1, height: geometry.size.width * 0.1)
                            .offset(x: geometry.size.width * 0.125, y: geometry.size.height * 0.1 - (geometry.size.width * 0.1)/1.75) //x = 0.35 / 2 - metade do quadrado
                            .colorInvert()
                      
                                                    
                            MapIcon(event: event, baloonWidth: geometry.size.width * 0.35, baloonHeight: geometry.size.height * 0.07)
                            .padding(.top, geometry.size.height * 0.015)
                            .padding(.bottom, geometry.size.height * 0.02)

                                //.offset(y: geometry.safeAreaInsets.trailing)
                            
                            //.frame(width: geometryOut.size.width * 0.35, height: geometry.size.height * 0.1)

                    }//.frame(width: geometryOut.size.width * 1.125, height: geometryOut.size.height * 1.125)
                    

                }

            }
            
        }
        
        
        
        
    }
}

struct LocalInformationView_Previews: PreviewProvider {
    static var previews: some View {
        LocalInformationView(event: EventList.events[0])
            .background(.blue)
    }
}
