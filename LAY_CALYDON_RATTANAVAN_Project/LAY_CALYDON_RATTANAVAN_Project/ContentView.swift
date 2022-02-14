//
//  ContentView.swift
//  LAY_CALYDON_RATTANAVAN_Project
//
//  Created by goldorak on 14/02/2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        ZStack (alignment: .bottom) {
            
            Image("fetenationale")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
            
            HStack {
                
                VStack(alignment: .leading) {
                    
                    Text("Today Event")
                        .font(.custom("Roboto Regular", size: 30))
                        .background(Rectangle().fill(Color.white)).frame(width: 250, height: 52)
                        .border(.black, width: 5)
                }

            }
                .padding()
                .foregroundColor(.primary)
                .background(Color.primary.colorInvert().opacity(0.50))
    }
}
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
