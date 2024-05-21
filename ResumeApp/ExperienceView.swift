//
//  ExperienceView.swift
//  ResumeApp
//
//  Created by Ritika Gupta on 21/05/24.
//

import SwiftUI

struct ExperienceView: View {
    var jobTitle: String
    var companyName: String
    var duration: String
    var responsibility: String
    
    @State var isExpanded: Bool = false
    
    var body: some View {
        HStack(spacing: 20) {
            Circle()
                .frame(width: 10, height: 10)
                .foregroundStyle(.white)
            
            VStack(alignment: .leading, spacing: 4) {
               Text(jobTitle)
                    .font(.title2)
                    .foregroundStyle(.white)
                
                Text(companyName)
                    .font(.title3)
                    .foregroundStyle(.white)
                    .fontWeight(.semibold)
                
                HStack(spacing: 10) {
                    Text(duration)
                        .foregroundStyle(.white)
                    
                    Button("", systemImage: isExpanded ? "chevron.up" : "chevron.down") {
                        isExpanded.toggle()
                    }
                    .foregroundStyle(.white)
                }

                if isExpanded {
                    Text(responsibility)
                        .font(.body)
                        .foregroundStyle(.white)
                        .multilineTextAlignment(.leading)
                }
            }
        }
    }
}

#Preview {
    ExperienceView(jobTitle: "iOS Developer - SDE 1", companyName: "Nike", duration: "Nov 2021 - Jan 2024", responsibility: "Worked as an iOS developer for Nike, focusing on the creation and maintenance of their retail mobile application. Developed reusable components for multiple apps, resolved crashes through debugging, and collaborated with cross-functional teams to improve user experience. Engineered features like Non-merch, coupons, and Passplay, and led the development of a Proof of Concept (POC) app with Push-to-talk framework. Additionally, worked on a SwiftUI app utilizing P2P capabilities and developed features to enhance the Member experience, including Member Pickup, Recycle & Donation, Check-in, and Appointments.")
        .preferredColorScheme(.dark)
}
