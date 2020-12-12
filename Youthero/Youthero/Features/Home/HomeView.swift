import SwiftUI

struct HomeView: View {
    @State var isActive : Bool = false
    
    var body: some View {
        NavigationView {
        ZStack {
            Color("secondColor")
            VStack {
                Spacer(minLength: 300)
                Text("Youthero")
                    .font(.system(size: 60))
                    .fontWeight(.bold)
                    .foregroundColor(Color("mainColor"))
                   
  
                Text("Youth can change the world")
                    .font(.headline)
                    .foregroundColor(Color("mainColor"))
                    .padding(.top, 6)
                       
               Spacer()
                
                NavigationLink(destination: TypePicker(rootIsActive: self.$isActive), isActive: $isActive) {   Button {
                    isActive = true
                } label: {
                    Text("Add your review")
                        .fontWeight(.medium)
                }.modifier(PrimaryButton()) }
                .padding(.top, 100)

         
   
                Spacer(minLength: 300)
            }
        }.ignoresSafeArea()
        }
      
    }
}
