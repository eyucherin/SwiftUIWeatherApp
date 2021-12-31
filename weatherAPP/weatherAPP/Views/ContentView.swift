//
//  ContentView.swift
//  weatherAPP
//
//  Created by Elizabeth Yu on 2021/12/29.
//

import SwiftUI
import CoreLocationUI

struct ContentView: View {
    
    @StateObject var locationManager = LocationManager()
    var weatherManager = WeatherManager()
    @State var weather: ResponseBody?
    
    var body: some View {
        VStack {
            
            if let location = locationManager.location{
                if let weather = weather {
                    WeatherView(weather: weather)
                } else {
                    ProgressView()
                        .task {
                            do {
                                weather = try await weatherManager.getCurrentWeather(latitude: location.latitude, longitude: location.longitude)
                            } catch {
                                print("Error getting weather: \(error)")
                            }
                        }
                }
            }else{
                if locationManager.isLoading{
                    LoadingView()
                }else{
                    WelcomeView()
                        .environmentObject(locationManager)
                }
            }
        }
        .background(Color.gray)
        .preferredColorScheme(.dark)
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
