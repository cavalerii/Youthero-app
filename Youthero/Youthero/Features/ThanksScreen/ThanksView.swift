import SwiftUI

struct ThanksView: View {
    var body: some View {
        ZStack {
            Color("secondColor")
            VStack {
                Spacer(minLength: 100)
                Text("Thanks for submiting your review!")
                    .font(.system(size: 60))
                    .fontWeight(.bold)
                    .foregroundColor(Color("mainColor"))
                    .padding()
                
                Spacer(minLength: 20)
                Image("thumbsUp")
                    .resizable()
                    .foregroundColor(Color.white)
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 200, height: 200)
                    .padding(.trailing, 5)
                    .shadow(radius: 8)
                
                Spacer(minLength: 10)
                
                Text("You can change the world just by telling your opinion! Isn't that cool?")
                    .font(.system(size: 30))
                    .fontWeight(.medium)
                    .foregroundColor(Color("mainColor"))
                    .padding()
                
                Spacer(minLength: 100)
                Button {
                    
                } label: {
                    Text("Back to home")
                        .foregroundColor(Color("mainColor"))
                        .underline()
                    
                }
                Spacer(minLength: 10)

            }
        }.ignoresSafeArea()
        .navigationBarBackButtonHidden(true)
    }
}
