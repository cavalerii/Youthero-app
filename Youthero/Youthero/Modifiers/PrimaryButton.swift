import Foundation
import SwiftUI

struct PrimaryButton: ViewModifier {
    func body(content: Content) -> some View {
        content
            .foregroundColor(Color( red: 250.0/255.0, green: 250.0/255.0, blue: 250.0/255.0, opacity: 1))
            .padding()
            .font(.title2)
            .frame(width: 260, height: 58)
            .buttonStyle(PlainButtonStyle())
            .background(Color("buttonColor"))
            .cornerRadius(8)
            .shadow(radius: 2)
    }
}
