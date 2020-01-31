//
//  ContentView.swift
//  Learning
//
//  Created by Sarim Khan on 31/01/2020.
//  Copyright © 2020 Sarim Khan. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State private var selectedIndex=0
    @State private var nightMode=true
    @State private var myText:String=""
    @State private var initialValue=0
    @State private var pageIndex=1
    
    var body: some View {
        
        NavigationView{
            
            Form {
                List {
                    Text("First Item").foregroundColor(.accentColor).font(.title)
                    
                    Toggle(isOn: $nightMode) {
                        Text("Night Mode")
                    }
                    
                    Button(action: {print("Click on button")}) {
                        Text("Button")
                    }
                    TextField("Placeholder", text: $myText)
                    Text("\(myText)")
                    Stepper(value: $initialValue, in: 0...5) {
                        Text("Select Age")
                    }
                    Text("\(initialValue)")
                    
                    
                    VStack {
                        Picker(selection: $pageIndex, label: Text("Picker")) {
                            Text("1").tag(1)
                            Text("2").tag(2)
                        }.pickerStyle(SegmentedPickerStyle())
                        
                        Text("\(pageIndex)").font(.largeTitle).foregroundColor(.purple)
                    }
                    
                    Image(systemName:"house").colorScheme(.light)
                    
                    


                }
            }.edgesIgnoringSafeArea(.top)
            .navigationBarTitle("Swift UI",displayMode:.inline).navigationBarItems(trailing: Image(systemName:"house"))
        }
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
