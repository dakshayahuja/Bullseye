//
//  RoundViews.swift
//  Bullseye
//
//  Created by Dakshay Ahuja on 20/06/22.
//

import SwiftUI

struct RoundedViewImageStroked: View {
    var systemName:String
    
    var body: some View {
        Image(systemName: systemName)
            .font(.title)
            .foregroundColor(Color("TextColor"))
            .frame(width: Constants.General.roundedViewLength, height: Constants.General.roundedViewLength)
            .overlay(
                Circle()
                    .strokeBorder(Color("ButtonStrokeColor"),lineWidth: Constants.General.strokeWidth)
            )
    }
}

struct RoundedViewImageFilled: View {
    var systemName:String
    
    var body: some View {
        Image(systemName: systemName)
            .font(.title)
            .frame(width: Constants.General.roundedViewLength, height: Constants.General.roundedViewLength)
            .foregroundColor(Color("ButtonFilledTextColor"))
            .background(
                Circle()
                    .fill(Color("ButtonFilledBackgroundColor"))
            )
    }
}

struct RoundedRectTextView: View {
    var text:String
    var body: some View {
        Text(text)
            .kerning(-0.2)
            .bold()
            .font(.title3)
            .frame(width: Constants.General.roundRectViewLength, height: Constants.General.roundRectViewHeight)
            .foregroundColor(Color("TextColor"))
            .overlay(
                RoundedRectangle(cornerRadius: Constants.General.roundRectCornerRadius)
                    .stroke(lineWidth: Constants.General.strokeWidth)
                    .foregroundColor(Color("ButtonStrokeColor"))
            )
    }
}

struct RoundedTextView:View{
    let text:String
    var body: some View{
        Text(text)
            .font(.title)
            .foregroundColor(Color("TextColor"))
            .frame(width: Constants.General.roundedViewLength, height: Constants.General.roundedViewLength)
            .overlay(
                Circle()
                    .strokeBorder(Color("LeaderboardRowColor"),lineWidth: Constants.General.strokeWidth)
            )
    }
}

struct PreviewView:View{
    var body: some View{
        VStack(spacing:10){
            RoundedViewImageStroked(systemName: "arrow.counterclockwise")
            RoundedViewImageFilled(systemName: "list.dash")
            RoundedRectTextView(text: "3")
            
        }
    }
}

struct RoundViews_Previews: PreviewProvider {
    static var previews: some View {
//        PreviewView()
//        PreviewView()
//            .preferredColorScheme(.dark)
        RoundedTextView(text: "1")
    }
}
