//
//  ContentView.swift
//  ResumeApp
//
//  Created by Ritika Gupta on 21/05/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            Image(.background)
                .resizable()
                .ignoresSafeArea()
               
            
            ScrollView {
                VStack {
                    HStack {
                        Image(.profile)
                            .resizable()
                            .frame(width: 120, height: 120)
                            .cornerRadius(80)
                            .scaledToFit()
                            .padding(10)
                        VStack {
                            Text("Ritika Gupta")
                                .font(.title)
                                .fontWeight(.semibold)
                                .foregroundStyle(Color.white)
                            Text("iOS developer")
                                .font(.system(size: 20))
                                .foregroundStyle(.graySecondary)
                                .fontWeight(.bold)
                                .padding(.bottom, 4)
                            
                        }
                    }
                    
                    ContactView(title: "ritika2020@gmail.com", imageName: "envelope.fill")
                    
                    ContactView(title: "+91-8598944404", imageName: "phone.fill")
                    
                    ContactView(title: "India", imageName: "location.circle")
                    
                    VStack(alignment: .leading, spacing: 10) {
                        Text("About Me")
                            .font(.system(size: 22))
                            .foregroundStyle(.white)
                            .bold()
                       
                        Rectangle()
                            .frame(width: 120, height: 2)
                            .foregroundStyle(Color.white)
                        
                        Text("An ambitious iOS developer who loves turning design mockups into code. With strong work ethic, great problem-solving skills, and an eye for detail, I enjoy working with teams and helping everyone succeed.")
                            .font(.body)
                            .foregroundStyle(.white)
                    }.padding()
                    
                    VStack(alignment: .leading, spacing: 10) {
                        Text("Skills")
                            .font(.system(size: 22))
                            .foregroundStyle(.white)
                            .bold()
                       
                        Rectangle()
                            .frame(width: 80, height: 2)
                            .foregroundStyle(Color.white)
                        LazyVGrid(columns: [GridItem(.flexible()), GridItem(.flexible()), GridItem(.flexible())], content: {
                            SkillView(skillLevelPercentage: 0.65, skillTitle: "Swift", imageName: "swift")
                            SkillView(skillLevelPercentage: 0.75, skillTitle: "iOS", imageName: "iphone.rear.camera")
                            SkillView(skillLevelPercentage: 0.45, skillTitle: "SwiftUI", imageName: "rectangle.on.rectangle")
                            SkillView(skillLevelPercentage: 0.65, skillTitle: "UIKit", imageName: "pencil")
                            SkillView(skillLevelPercentage: 0.55, skillTitle: "CoreData", imageName: "book")
                        })
                    }.padding()
                    
                    VStack(alignment: .leading, spacing: 10) {
                        Text("Experience")
                            .font(.system(size: 22))
                            .foregroundStyle(.white)
                            .bold()
                       
                        Rectangle()
                            .frame(width: 120, height: 2)
                            .foregroundStyle(Color.white)
                        
                       ExperienceView(
                        jobTitle: "iOS Developer - SDE 1",
                        companyName: "Nike",
                        duration: "Nov 2021 - Jan 2024", responsibility: "Worked as an iOS developer for Nike, focusing on the creation and maintenance of their retail mobile application. Developed reusable components for multiple apps, resolved crashes through debugging, and collaborated with cross-functional teams to improve user experience. Engineered features like Non-merch, coupons, and Passplay, Member Pickup, Recycle & Donation, Check-in, and Appointments.")
                        
                        ExperienceView(
                         jobTitle: "iOS Developer - System Engineer",
                         companyName: "Infosys",
                         duration: "June 2019 - Nov 2021", responsibility: "Worked as an iOS developer for a retail execution iPad application, creating UI with auto layouts and custom components to enhance user experience. Implemented client change requests, debugged the existing codebase, and collaborated with a diverse team to brainstorm new application concepts.")
                    }.padding()
                    
                }
            }
        }
    }
}

#Preview {
    ContentView()
}

struct ContactView: View {
    var title: String
    var imageName: String
    
    var body: some View {
        ZStack {
            Rectangle()
                .frame(width: 360, height: 50)
                .cornerRadius(20)
                .opacity(0.2)
            
            HStack(spacing: 10) {
                Image(systemName: imageName)
                    .imageScale(.large)
                    .frame(width: 40, height: 40)
                    .foregroundStyle(Color.white)
                
                Text(title)
                    .font(.system(size: 20))
                    .foregroundColor(.white)
            }
            .frame(width: 280, height: 50, alignment: .leading)
        }
    }
}
