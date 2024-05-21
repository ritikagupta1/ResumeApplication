//
//  SkillView.swift
//  ResumeApp
//
//  Created by Ritika Gupta on 21/05/24.
//

import SwiftUI

struct SkillView: View {
    var skillLevelPercentage: Double
    var skillTitle: String
    var imageName: String
    
    var body: some View {
        VStack {
            ZStack {
                Circle()
                    .stroke(Color.white.opacity(0.5), lineWidth: 6)
                    .frame(width: 80, height: 100)
                
                Circle()
                    .trim(from: 0, to: skillLevelPercentage)
                    .stroke(Color.white, lineWidth: 6)
                    .rotationEffect(.degrees(-90))
                    .frame(width: 80, height: 100)
                
                Image(systemName: imageName)
                    .resizable()
                    .imageScale(.large)
                    .frame(width: 30, height: 30)
            }
               
            Text(skillTitle)
                .font(.title2)
                .fontWeight(.semibold)
                .foregroundStyle(.white)
                .multilineTextAlignment(.center)
        }
         
    }
}

#Preview {
    SkillView(skillLevelPercentage: 0.75, skillTitle: "Swift", imageName: "swift").preferredColorScheme(.dark)
}
