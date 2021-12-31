//
//  LoadingView.swift
//  weatherAPP
//
//  Created by Elizabeth Yu on 2021/12/29.
//

import SwiftUI

struct LoadingView: View {
    var body: some View {
        
        ProgressView()
            .progressViewStyle(CircularProgressViewStyle(tint:.white))
            .frame(maxWidth: .infinity, maxHeight: .infinity)
    }
}

struct LoadingView_Previews: PreviewProvider {
    static var previews: some View {
        LoadingView()
    }
}
