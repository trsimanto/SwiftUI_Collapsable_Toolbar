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
                    
                    TopBar(topEdge: topEdge , offset: $offset , maxHeight : maxHeight )
                        .foregroundColor(.white)
                        .frame(maxWidth: .infinity)
                    //Sticky Effect ...
                        .frame(height: getHeaderHeight() , alignment: .bottom)
                        .background(
                            Color("TopBar"),
                            in: CustomCorner(corners: [.bottomRight], radius: getCornerRadious())
                        ).overlay(
                            // top Nav view
                            HStack( spacing: 15){
                                Button(action: {}){
                                    Image(systemName: "xmark")
                                        .font(.body.bold())
                                    
                                }
                                
                                Image("pic")
                                    .resizable()
                                    .aspectRatio(contentMode: .fill)
                                    .frame(width: 35, height: 35)
                                    .clipShape(Circle())
                                    .opacity(topBartitleOpacity())
                                
                                Text("Pet Cat")
                                    .bold()
                                    .foregroundColor(.white)
                                    .opacity(topBartitleOpacity())
                                
                                Spacer()
                                Button(action: {}){
                                    Image(systemName: "line.3.horizontal.decrease")
                                        .font(.body.bold())
                                    
                                }
                            }.padding(.horizontal)
                            //maxheight
                                .frame( height: 80 )
                                .foregroundColor(.white)
                                .padding(.top , topEdge)
                            
                            
                            , alignment: .top
                        )
                    
                    
                }.frame(height : maxHeight)
                //fixing at top...
                    .offset(y: -offset )
                    .zIndex(1)
                //Sample Message
                VStack(spacing: 15){
                    ForEach(allMessages){ message in
                      //card view added
                        MessageCardView(message: message)
                    }
                }.padding()
                    .zIndex(0)
                
            }.modifier(OffsetModifier(offset: $offset))
        }
        //setting coordinate space ..
        .coordinateSpace(name: "SCROLL")
    }
    
    func getHeaderHeight() -> CGFloat{
        let topHeight =  maxHeight + offset
        
    // 80 is the constant top Nav bar height..
        // sence we included top safe area so we also need to include that too ...
        return topHeight > (80 + topEdge) ? topHeight : (80 + topEdge )
        
    }
    
    func getCornerRadious() -> CGFloat {
        let progress = -offset / ( maxHeight - (80 + topEdge))
        let value = 1 - progress
        let radius = value * 50
        return offset < 0 ? radius : 50
    }
    
    func topBartitleOpacity() -> CGFloat {
        //to start after the main content valished
        // we need to eliminate 70 from offset ...
        //to get starter
        let progress = -(offset + 60) / (maxHeight - (80 + topEdge))
      
        
        return progress
        
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
    var maxHeight : CGFloat
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
            .opacity(getOpacity())
    }
    
    //Calculateion Opecity..
    func getOpacity() -> CGFloat {
        //70 = some random amount of time to visible on scroll
        let progress = -offset / 70
        let opacity = 1 - progress
        
        return offset < 0 ? opacity : 1
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
