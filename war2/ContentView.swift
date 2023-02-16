//
//  ContentView.swift
//  war2
//
//  Created by azin on 12/22/21.
//

import SwiftUI

struct ContentView: View {
    
    
   @State var credits = 1000
    @State var slots1 = 1
    @State var slots2 = 1
    @State var slots3 = 1
    

    var body: some View {
        
        VStack {
            
            Spacer()
            
            Text ("SwiftUI Slots!").font(.largeTitle)
            
            Spacer()
            
            Text("Credits \(credits)")
            
            HStack{
            
          Image("fruit\(slots1)")
                    .resizable()
                    .aspectRatio( contentMode: .fit)
                
         Image("fruit\(slots2)")
                    .resizable()
                    .aspectRatio( contentMode: .fit)
                
        Image("fruit\(slots3)")
                    .resizable()
                    .aspectRatio( contentMode: .fit)
            
            }
            Spacer()
            
            Button("Spin", action: {
                
                
                slots1 = Int.random(in: 1...3)
                slots2 = Int.random(in: 1...3)
                slots3 = Int.random(in: 1...3)
                
                if slots1 == slots2 && slots2 == slots3
                    
                {
                    
                    credits = credits + 15
                    
                }
                
                else {
                    
                    credits = credits - 5
                }
            })
                .padding().padding([.leading, .trailing], 40)
                .background(Color(.systemPink))
                .cornerRadius(25)
                .foregroundColor(.white)
                .font(.system(size: 18, weight: .bold))
                
                Spacer()
            
        }
        
    
    }
   
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
