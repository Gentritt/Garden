//
//  VegetableListScreen.swift
//  GardenAp11
//
//  Created by TestPc on 4.9.22.
//

import SwiftUI

struct VegetableListScreen: View {
    
    @StateObject private var vegetableListVm = VegetableListViewModel()
    var body: some View {
        VStack{
            List{
                ForEach(vegetableListVm.vegetables, id: \.id){
                    vegetable in Text("vegetable.name")
                }
                
            }.task {
                await vegetableListVm.getAll()
            }
        }
    }
}

struct VegetableListScreen_Previews: PreviewProvider {
    static var previews: some View {
        VegetableListScreen()
    }
}
