import SwiftUI

struct HomeView: View {
    var body: some View {
        Spacer(minLength: 100)
        Text("Youthero")
            .font(.system(size: 60))
            .fontWeight(.bold)
            .foregroundColor(.accentColor)
            .padding()
        Spacer()
        Text("Youth can change the world")
            .foregroundColor(.primary)
        Spacer()
    }
}
