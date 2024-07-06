//
//  ContentView.swift
//  WeSplit
//
//  Created by aryan on 29/06/24.
//

import SwiftUI

struct ContentView: View {
    @State private var checkAmount=0.0
    @State private var tipAmount  = 20
    @State private var noOfPeople = 2
    
    let tipPercantages=[0,5,10,15,20,25]
    
    var body: some View{
        NavigationStack{
            Form{
                
                Section{
                    TextField("Bill Amount", value: $checkAmount, format: .currency(code: Locale.current.currency?.identifier ?? "USD"))
                        .keyboardType(.decimalPad)
                    
                    
                }
                
                Section{
//                    TextField("Tip Selected", value: $tipAmount , format: .currency(code: Locale.current.currency?.identifier ?? "USD"))
//                        .keyboardType(.decimalPad)
                    Picker("Tip Selected", selection: tipPercantages){
                        ForEach(tipPercantages, id:\.self){
                            Text()
                        }
                    }
                }
                
                Picker("No Of People", selection: $noOfPeople){
                    ForEach(0..<100){
                        Text("\($0) People")
                    }
                }
                
                Section{
                    
                }
           
            }
            .navigationTitle("We Split")
            
        }
    }
}

#Preview {
    ContentView()
}
