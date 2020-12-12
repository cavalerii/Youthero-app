import SwiftUI

struct TypePicker: View {
    @Binding var rootIsActive : Bool
    
    @State var shouldShowTeacherView: Bool = false
    @State var shouldShowSchoolView: Bool = false
    
    var body: some View {
        ZStack {
            Color("secondColor")
            VStack {
                Spacer()
                
                NavigationLink(destination: ThanksView(shouldPopToRootView: $rootIsActive), isActive: $shouldShowTeacherView) {
                    Button {
                        shouldShowTeacherView = true
                    } label: {
                        VStack {
                        Image("teacher")
                            .resizable()
                            .foregroundColor(Color.white)
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 200, height: 200)
                            .padding(.trailing, 5)
                            .shadow(radius: 8)
                        Text("Review Teacher")
                            .font(.system(size: 24))
                            .foregroundColor(.accentColor)
                            .shadow(radius: 8)
                            .padding(.top, 10)
                        }
                    }
                }
                
                Spacer()
                

                NavigationLink(destination: ThanksView(shouldPopToRootView: $rootIsActive), isActive: $shouldShowSchoolView) {
                    Button {
                        shouldShowSchoolView = true
                    } label: {
                        VStack {
                    Image("school")
                        .resizable()
                        .foregroundColor(Color.white)
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 200, height: 200)
                        .padding(.trailing, 5)
                        .shadow(radius: 8)
                    Text("Review School")
                        .font(.system(size: 24))
                        .foregroundColor(.accentColor)
                        .shadow(radius: 8)
                        .padding(.top, 10)
                        }
                    }
                }
                
                Spacer()
            }
        }.ignoresSafeArea()
    }
}
