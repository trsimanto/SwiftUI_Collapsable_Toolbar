//
//  HomeView.swift
//  Collapsable Toolbar SwiftUI
//
//  Created by Towhid on 4/23/22.
//

import SwiftUI

struct HomeView: View {
    //Max Height
    let maxHeight = UIScreen.main.bounds.height / 2.3
    var topEdge :  CGFloat
    
    //Offset
    @State var offset : CGFloat = 0
    
    var body: some View {
        ScrollView(.vertical , showsIndicators: false){
            VStack( spacing: 15){
                GeometryReader{ proxy in
                    
                    TopBar(topEdge: topEdge , offset: $offset)
                        .foregroundColor(.white)
                        .frame(maxWidth: .infinity)
                    //Sticky Effect ...
                        .frame(height: maxHeight + offset , alignment: .bottom)
                        .background(
                            Color("TopBar"),
                            in: CustomCorner(corners: [.bottomRight], radius: 50)
                        ).overlay(
                            // top Nav view
                            HStack( spacing: 15){
                                Button(action: {}){
                                    Image(systemName: "xmark")
                                        .font(.body.bold())
                                    
                                }
                                Spacer()
                                Button(action: {}){
                                    Image(systemName: "line.3.horizontal.decrease")
                                        .font(.body.bold())
                                    
                                }
                            }.padding(.horizontal)
                            //maxheight
                                .frame( height: 80 + topEdge )
                                .foregroundColor(.white)
                            
                            
                            , alignment: .top
                        )
                    
                    
                }.frame(height : maxHeight)
                //fixing at top...
                    .offset(y: -offset )
                //Sample Message
                VStack(spacing: 15){
                    ForEach(allMessages){ message in
                      //card view added
                        MessageCardView(message: message)
                    }
                }.padding()
                
            }.modifier(OffsetModifier(offset: $offset))
        }
        //setting coordinate space ..
        .coordinateSpace(name: "SCROLL")
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct TopBar : View {
    var topEdge : CGFloat
    @Binding var offset : CGFloat
    
    var body : some View {
        VStack(alignment: .leading, spacing: 15){
            Image("pic")
                .resizable()
                .aspectRatio(contentMode : .fill)
                .frame(width: 80, height: 80)
                .cornerRadius(10)
            Text("Pet Cat")
                .font(.largeTitle)
                .bold()
            Text("hello hello vjv ghb jhjkh jkhjk  jkhj  jhjh  jh jhj ssss jklhlks  jkj lkk iiu iui")
                .fontWeight(.semibold)
                .foregroundColor(Color.white)
                .opacity(0.8)
        }.padding()
            .padding(.bottom)
    }
}

struct MessageCardView : View {
    
    var message : Message
    
    var body: some View {
        
        HStack{
            Circle()
                .fill(message.tintColor)
                .frame(width: 50, height: 50)
                .opacity(0.8)
            
            VStack(alignment: .leading, spacing: 8){
                Text(message.userName).bold()
                Text(message.message).foregroundColor(.secondary)
            }
            .foregroundColor(.primary)
            .frame(maxWidth: .infinity , alignment: .leading)
        }
    }
    
}
