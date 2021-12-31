//
//  WeatherData.swift
//  weatherAPP
//
//  Created by Elizabeth Yu on 2021/12/29.
//

import SwiftUI

struct WeatherView: View {
    var weather : ResponseBody
    
    var body: some View {
        ZStack {
            VStack(alignment: .leading){
                VStack(alignment: .leading, spacing: 5){
                    Text(weather.name)
                        .bold().font(.title)
                    Text("Today.\(Date().formatted(.dateTime.month().day().hour().minute()))")
                        .fontWeight(.light)
                    
                }
                .padding()
                .frame(maxWidth: .infinity, alignment: .leading )
                
                Spacer()
                
                VStack{
                    HStack{
                        VStack(spacing: 20){
                            Image(systemName: "cloud" )
                                .font(.system(size:40))
                            Text(weather.weather[0].main)
                        }
                        .frame(width: 150, alignment: .leading)
                        Spacer()
                        Text(weather.main.feelsLike.roundDouble() + "°")
                            .font(.system(size: 100))
                            .fontWeight(.bold)
                            .padding()
                    }
                    
                    Spacer()
                        .frame(height: 80)
                    
                    AsyncImage(url:URL(string: "https://cdn.pixabay.com/photo/2020/01/24/21/33/city-4791269_960_720.png")){ image in
                        image
                            .resizable()
                            .aspectRatio( contentMode: .fit)
                            .frame(width: 350)
                        
                    }placeholder: {
                        ProgressView()
                    }
                    
                    Spacer()
                    
                }
                .frame(maxWidth: .infinity)
            }
            .padding()
            .frame(maxWidth: .infinity, alignment: .leading )
            
            VStack{
                Spacer()
                
                VStack(alignment: .leading,spacing: 20){
                    Text("Weather Now")
                        .bold().padding(.bottom)
                    
                    HStack{
                        WeatherRow(logo: "thermometer", name: "minTemp", value: (weather.main.tempMin.roundDouble() + "°"))
                        Spacer()
                        WeatherRow(logo: "thermometer", name: "maxTemp", value: (weather.main.tempMax.roundDouble() + "°"))
                    }
                    HStack{
                        WeatherRow(logo: "wind", name: "windSpeed", value: (weather.wind.speed.roundDouble() + "m/s"))
                        Spacer()
                        WeatherRow(logo: "humidity", name: "humidity", value: (weather.main.humidity.roundDouble() + "%"))
                    }
                    
                }
                .frame(maxWidth : .infinity, alignment: .leading)
                .padding()
                .padding(.bottom,20)
                .foregroundColor(Color(hue: 0.588, saturation: 0.753, brightness: 0.796))
                .background(.white)
                .cornerRadius(20)
                
            }
           
        }
        .edgesIgnoringSafeArea(.bottom)
        .background(Color(hue: 0.588, saturation: 0.753, brightness: 0.796))
        .preferredColorScheme(.dark)
    }
}

struct WeatherData_Previews: PreviewProvider {
    static var previews: some View {
        WeatherView(weather: previewWeather)
    }
}


