import SwiftUI

struct SchoolReview: View {
    @State var username: String = ""
    
    @Binding var rootIsActive : Bool
    @State var shouldShowThanksView: Bool = false
    
    @State var firstValue: Double = 1
    @State var secondValue: Double = 1
    @State var thirdValue: Double = 1
    @State var fourthValue: Double = 1
    @State var fifthValue: String = ""
    
    var body: some View {
        ZStack {
            Color("secondColor")
            VStack {
                Form {
                    Section(header: Text("Pick School")) {
                        TextField("Nume", text: $username)
                    }
                    
                    Section(header: Text("First question")) {
                        Slider(value: $firstValue, in: 1...5, step: 1)
                    }
                    
                    Section(header: Text("Second question")) {
                        Slider(value: $secondValue, in: 1...5, step: 1)
                    }
                    
                    Section(header: Text("Third question")) {
                        Slider(value: $thirdValue, in: 1...5, step: 1)
                    }
                    
                    Section(header: Text("Fourth question")) {
                        Slider(value: $fourthValue, in: 1...5, step: 1)
                    }
                    
                    Section(header: Text("Comment")) {
                        TextField("Answer", text: $fifthValue)
                    }
                }
                
                NavigationLink(destination: ThanksView(shouldPopToRootView: $rootIsActive), isActive: $shouldShowThanksView) {
                    Button {
                        shouldShowThanksView = true
                    } label: {
                        Text("Save review")
                            .fontWeight(.medium)
                    }.modifier(PrimaryButton())
                    .padding(.top, 100)
                }
                
                Spacer(minLength: 100)
            }
        }.ignoresSafeArea()
    }
}
