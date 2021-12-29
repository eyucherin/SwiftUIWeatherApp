# SwiftUIWeatherApp
#### Che Rin Yu 
### Simple Weather App using the open weather API. 

![IMG_3745](https://user-images.githubusercontent.com/66363530/147659161-2cc831ff-a125-44cf-8184-13d21678fff1.PNG){:height="50%" width="50%"}
![IMG_3746](https://user-images.githubusercontent.com/66363530/147659169-d35d63f6-38f2-4728-a75a-c4466c00b62a.PNG){:height="50%" width="50%"}
![IMG_3747](https://user-images.githubusercontent.com/66363530/147659175-49dc5f3a-dd3c-43d1-aeca-29f37ad3ba0c.PNG){:height="50%" width="50%"}


## Motivation 
Currently a newbie at IOS Development.This app is one of the first apps I created with SwiftUI. I have previously created a weather app with UIKit and was motivated to create one using SwiftUI because of its simplicity. 

## Description 
This App aims to call the current location of the user using URLSession, brining in the latitude and longitude and calling a HTTP response from the user's location . After doing so the app will indicate the tempurature in Celcius, the minimum and maximum tempurature, windspeed in m/s and humidity levels. 

## How To Run 
Connect your device to the program and run it. 
You can also select a device and run the program. The main folder is called Content View. 

## Testing 
There is a seperate json file that contains the weather conditions of Seoul South Korea on 12/29/2021 at around 7:00pm. This data is used as a model data to test  whether the "Weather View" runs correctly. 

## What I learned 
While building this Application I learned a couple of things. 
1. How to bring in user's location using CoreLocation.
2. Using LocationButton for users to tap button to share location in a more convient way
3. Getting weather information according to the User's Location using HTTP request with async awaits.  
4. Using AsyncImage to call image from the web without using 3rd party libraries like KingFisher 
5. Using SFSymbols 


