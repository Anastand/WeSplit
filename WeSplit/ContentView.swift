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
    
    
    var totalPerPerson: Double{
        let tipselcted = Double(tipAmount)
        let peopleCount = Double(noOfPeople)
        let tipamount = checkAmount*(tipselcted/100)
        let grandval = checkAmount+tipamount
        let perpersonvalue = grandval/peopleCount
        return perpersonvalue
    }
    
    @FocusState private var amountIsFocused:Bool
    
    var body: some View{
        NavigationStack{
            Form{
                
                Section("Bill Amount"){
                    TextField("Bill Amount", value: $checkAmount, format: .currency(code: Locale.current.currency?.identifier ?? "USD"))
                        .keyboardType(.decimalPad)
                        .focused($amountIsFocused)
                    
                    Picker("No Of People", selection: $noOfPeople){
                        ForEach(0..<100){
                            Text("\($0) People")
                        }
                    }

                    
                }
                
                Section("select Tip amount"){
                    
                    Picker("Tip Percentage", selection: $tipAmount){
                        ForEach(tipPercantages , id:\.self){
                            Text( $0 , format: .percent )
                        }
                    }.pickerStyle(SegmentedPickerStyle())
                }
                
                
                
                Section{
                    Text(totalPerPerson, format: .currency(code: Locale.current.currency?.identifier ?? "USD"))
                }
           
            }
            .navigationTitle("We Split")
            .toolbar{
                if amountIsFocused{
                    Button("Done"){
                        amountIsFocused = false
                    }
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
