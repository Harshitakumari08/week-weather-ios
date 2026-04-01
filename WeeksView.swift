//
//  WeeksView.swift
//  Week_Weather
//
//  Created by Harshita Jiaswal on 10/12/25.
//

import SwiftUI

struct WeeksView: View {
    var currentWeeks : Weeks = Weeks()
    var body: some View {
        VStack {
            
            Text(currentWeeks.weeksDay).bold()
            switch(currentWeeks.weather){
            case "rainy" :
                Image(systemName: "cloud.rain.fill").font(.largeTitle).frame(height : 25)
            case "windy" :
                Image(systemName: "wind").font(.largeTitle).frame(height : 25)
            case "sunny" :
                Image(systemName: "sun.max.fill").font(.largeTitle).frame(height : 25)
            case "cloudy" :
                Image(systemName: "cloud.fill").font(.largeTitle).frame(height : 25)
            default :
                Image(systemName: "").font(.largeTitle)
                
            }
            Text(currentWeeks.weather)
            Text("Low \(currentWeeks.lowTemperature)" )
            Text("High \(currentWeeks.highTemperature)" )
                
            
        }.padding().border(Color.primary)
    }
}

#Preview {
    WeeksView()
}
