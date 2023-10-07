//
//  BarcodeScannerViewModel.swift
//  BarcodeScanner
//
//  Created by Yugandhar Khair on 10/6/23.
//

import SwiftUI

final class BarcodeScannerViewModel: ObservableObject {
    @Published var scannedCode  = ""
    @Published var alertItem: AlertItem?
    
    var statusText: String {
        scannedCode.isEmpty ? "Barcode Not Scanned" : scannedCode
    }
    
    var statusColor: Color   {
        scannedCode.isEmpty ? .red : .green
    }
}
