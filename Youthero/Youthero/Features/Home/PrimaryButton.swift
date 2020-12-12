import Foundation
import SwiftUI

struct PrimaryButton: ViewModifier {
    func body(content: Content) -> some View {
        content
            .foregroundColor(.white)
            .padding()
            .font(.title2)
            .frame(width: 260, height: 58)
            .buttonStyle(PlainButtonStyle())
            .background(Color("mainColor"))
            .cornerRadius(8)
    }
}
