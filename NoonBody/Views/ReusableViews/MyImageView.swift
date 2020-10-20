//
//  MyImageView.swift
//  NoonBody
//
//  Created by 윤진영 on 2020/10/20.
//

import SwiftUI

struct MyImageView: View {
    
    @State var isChoosed: Bool = false
    
    var body: some View {
        
        VStack{
            Image("body2")
                .resizable()
                .frame(width: 120, height: 120, alignment: .trailing)
                .overlay(Rectangle().stroke(Color.black, lineWidth:5))
            
            ZStack{
                Rectangle()
                    .frame(width: 120, height: 50)
                    .overlay(Rectangle().stroke(Color.black, lineWidth:3))
                
                Text("60kg")
                    .foregroundColor(.white)
            }
            
        }
        
        
    }
}

struct MyImageView_Previews: PreviewProvider {
    static var previews: some View {
        MyImageView()
    }
}
