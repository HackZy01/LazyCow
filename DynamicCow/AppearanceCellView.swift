//
//  AppearanceCellView.swift
//  DynamicCow
//
//  Created by ethernal on 08/01/23.
//

import SwiftUI

struct AppearanceCellView: View {
    
    @Binding var checkedPro: Bool
    @Binding var checkedProMax: Bool
    
    var body: some View {
        List{
            Section {
                HStack(spacing: 10){
                    VStack(alignment: .center, spacing: 10){
                        Image(systemName: "iphone.gen3")
                            .font(.system(size: 120))
                            .symbolRenderingMode(.hierarchical)
                            .foregroundStyle(.white.opacity(0.7))
                    
                        Text("iPhone 13\nPro")
                            .multilineTextAlignment(.center)
                        
                        Image(systemName: checkedPro ? "checkmark.circle.fill" : "circle")
                            .foregroundColor(checkedPro ? .white : .secondary)
                            .font(.title)
                            .padding([.horizontal, .top])
                                
                        
                    }//.padding()
                    .onTapGesture {
                        withAnimation{
                            let impact = UIImpactFeedbackGenerator(style: .light)
                            impact.impactOccurred()
                            checkedProMax = false
                            self.checkedPro = true

                        }
                    }
                    
                }
                .padding()
            } header: {
                Text("Layout")
            } footer: {
                Text("iPhone 13 Pro's layout is your best bet, it's not that much different from the 14 Pro's")
                    .padding(.top)
            }

        }
        .listStyle(.insetGrouped)
        .listRowSeparator(.hidden)
        .scrollDisabled(true)
    }
    
}

/*
struct AppearanceCellView_Previews: PreviewProvider {
    static var previews: some View {
        AppearanceCellView()
    }
}
*/
