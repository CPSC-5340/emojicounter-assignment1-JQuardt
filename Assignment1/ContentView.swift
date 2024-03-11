//
// ContentView.swift : Assignment1
//
// Copyright © 2023 Auburn University.
// All Rights Reserved.


import SwiftUI

struct ContentView: View {
    let emojiArray : Array<String> = ["🤣", "😜", "😀", "🤩", "🥳"]
    //🤣, 😜, 😀, 🤩, 🥳
    
    var body: some View {
        VStack {
            Text("Emoji Counter")
                .bold()
            List {
                ForEach(emojiArray, id: \.self) { ele in
                    EmojiItem(emoji: ele)
                }
            }
        }
    }
}

struct EmojiItem: View {
    @State var emoji : String
    @State var count : Int = 0
    
    var body: some View {
        HStack {
            Text("\(emoji)   counter: \(count)")
            Spacer()
            Text("+").onTapGesture {
                count += 1
            }.font(.system(size: 20))
             .padding()
             .overlay(
                RoundedRectangle(cornerRadius: 25)
                    .stroke(Color.orange, lineWidth: 2)
             )
            
            Text("-").onTapGesture {
                if count > 0 {
                    count -= 1
                }
            }.font(.system(size: 20))
             .padding()
             .overlay(
                RoundedRectangle(cornerRadius: 25)
                    .stroke(Color.orange, lineWidth: 2)
             )
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
