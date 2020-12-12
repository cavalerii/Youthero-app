import SwiftUI

struct HomeView: View {
    @State var isActive : Bool = false
    
    var body: some View {
        NavigationView {
        ZStack {
            Color("secondColor")
            VStack {
                Spacer(minLength: 220)
                Text("Youthero")
                    .font(.system(size: 60))
                    .fontWeight(.bold)
                    .foregroundColor(Color("mainColor"))
                    .padding()
                
                Spacer(minLength: 10)
                       
                NavigationLink(destination: TypePicker(rootIsActive: self.$isActive), isActive: $isActive) {   Button {
                    isActive = true
                } label: {
                    Text("Add your review!")
                }.modifier(PrimaryButton()) }

                Spacer(minLength: 200)
                Text("Youth can change the world")
                    .font(.headline)
                    .foregroundColor(Color("mainColor"))
                Spacer(minLength: 100)
            }
        }.ignoresSafeArea()
        }
      
    }
}
