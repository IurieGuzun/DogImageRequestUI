//
//  ContentView.swift
//  DogImageRequestUI
//
//  Created by Iurie Guzun on 2022-02-04.

//https://www.themobileentity.com/home/how-to-fetch-image-from-url-with-swiftui-the-easy-way

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack{
            Image(systemName: "person.fill")
                .data(url: URL(string: "https://images.dog.ceo/breeds/hound-afghan/n02088094_1007.jpg")!)
                .scaledToFit()
            Spacer()
            Image(systemName: "person.fill")
                .data(url: URL(string: "https://images.dog.ceo/breeds/hound-afghan/n02088094_1150.jpg")!)
                .scaledToFit()

            Button(action: {
                print("Button Pressed")
     
            }
            ) {
                
                /*@START_MENU_TOKEN@*/Text("Button")/*@END_MENU_TOKEN@*/
            }
        }
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

extension Image {
    
    func data(url:URL) -> Self {
        if let data = try? Data(contentsOf: url) {
            return Image(uiImage: UIImage(data: data)!)
                 .resizable()
        }
        return self
            .resizable()
    }
}
