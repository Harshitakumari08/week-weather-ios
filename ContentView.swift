//
//  ContentView.swift
//  Week_Weather
//
//  Created by Harshita Jiaswal on 10/12/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack{
            Text("Weekly Weather").font(.largeTitle)
            HStack{
                WeeksView(currentWeeks: Weeks(weeksDay: "Mon", weather: "rainy", lowTemperature: 25, highTemperature: 30))
                WeeksView(currentWeeks: Weeks(weeksDay: "Tue", weather: "sunny", lowTemperature: 29, highTemperature: 35))
                WeeksView(currentWeeks: Weeks(weeksDay: "Wed", weather: "windy", lowTemperature: 20, highTemperature: 25))
            }
            HStack {
                WeeksView(currentWeeks: Weeks(weeksDay: "Thurs", weather: "windy", lowTemperature: 20, highTemperature: 25))
                WeeksView(currentWeeks: Weeks(weeksDay: "Fri", weather: "rainy", lowTemperature: 29, highTemperature: 35))
                WeeksView(currentWeeks: Weeks(weeksDay: "Sat", weather: "rainy", lowTemperature: 25, highTemperature: 30))
            }
            WeeksView(currentWeeks: Weeks(weeksDay: "Sun", weather: "rainy", lowTemperature: 25, highTemperature: 30))
        }
        .padding()
    }
}
    
#Preview {
    ContentView()
}
