//
//  ContentView.swift
//  BarcodeScanner
//
//  Created by Yugandhar Khair on 10/3/23.
//

import SwiftUI

struct BarcodeScannerView: View {
    
    @StateObject var viewModel = BarcodeScannerViewModel()
    
    
    var body: some View {
        NavigationView {
            VStack  {
                ScannerView(scannedCode: $viewModel.scannedCode, 
                            alertItem: $viewModel.alertItem)
                    .frame(maxWidth: .infinity, maxHeight: 300)
                
                Spacer().frame(height: 60)

                Label("Scanned Barcode:", systemImage: "barcode.viewfinder")
                    .font(.title)
                
                Text(viewModel.statusText)
                    .bold()
                    .font(.largeTitle)
                    .foregroundColor(viewModel.statusColor)
                    .padding()
                
            }
            .navigationTitle("iOS Barcode Scanner")
            .alert(item: $viewModel.alertItem) {alertItem in
                Alert(title: Text(alertItem.title),
                      message: Text(alertItem.message),
                      dismissButton: alertItem.dismissButton)
            }
        }
    }
}

#Preview {
    BarcodeScannerView()
}
