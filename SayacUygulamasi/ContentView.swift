//
//  ContentView.swift
//  SayacUygulamasi
//
//  Created by VOLKAN EFE on 4.07.2025.
//

import SwiftUI



struct ContentView: View {
    @State private var sayac: Int = 0
    var body: some View {
        VStack(spacing: 20) {
           Text("Sayaç")
                .font(.largeTitle)
                .bold()
            
            Text("\(sayac)")
                .font(.system(size:60))
                .fontWeight(.semibold)
                .foregroundColor(sayac >= 50 ? .green : .red)
            
            if sayac >= 100 {
                Text("🔔 Maksimuma ulaşıldı!")
                    .foregroundColor(.orange)
                    .font(.headline)
            }
            
            HStack(spacing:40) {
                Button(action: {
                    if sayac > 0 {
                        sayac -= 1
                    }
                }){
                    Image(systemName: "minus.circle.fill")
                        .resizable()
                        .frame(width: 60, height: 60)
                        .foregroundColor(.blue)
                }
                
                Button(action: {
                    sayac += 1
                }){
                    Image(systemName: "plus.circle.fill")
                        .resizable()
                        .frame(width: 60, height: 60)
                        .foregroundColor(.blue)
                }
                
                
            }
            
            Button(action: {
                sayac = 0
            }){
                Text("Reset")
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(Color.red.opacity(0.8))
                    .foregroundColor(.white)
                    .cornerRadius(12)
                    .font(.headline)
                
            }
            .padding(.top, 30)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
