//
//  ProfileHost.swift
//  Landmarks
//
//  Created by 박근경 on 2023/10/10.
//

import SwiftUI

struct ProfileHost: View {
    @State private var draftProfile = Profile.default
    
    var body: some View {
        VStack(alignment: .leading, spacing:  20) {
            ProfileSummary(profile: draftProfile)
        }
        .padding()
    }
}

struct ProfileHost_Preiviews: PreviewProvider {
    static var previews: some View {
        ProfileHost()
    }
}
