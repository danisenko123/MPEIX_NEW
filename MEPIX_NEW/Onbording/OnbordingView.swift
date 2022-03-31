//
//  OnbordingView.swift
//  MEPIX_NEW
//
//  Created by Дима Анисенко on 28.03.2022.
//

import SwiftUI

struct OnbordingView: View {
    
    @State private var progress: CGFloat = 0
    @State private var selectedIndex: Int = 0
    
    var body: some View {
        
        VStack{
            TabView(selection: $selectedIndex) {
                ForEach(0..<content.count) {index in
                    PageContentView(item: content[index])
                }
            }
            .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
            .onChange(of: selectedIndex, perform: { value in
                updateProgress()
            })
            .frame(alignment: .top)
            .padding(.top, 30)
            .clipped()
            
            Spacer(minLength: 15)
            
            Button(action: {
                if selectedIndex < content.count - 1 {
                    withAnimation{
                        selectedIndex += 1
                    }
                }
            }, label: {
                CircularProgress(progress: $progress)
            })
                .padding(.bottom, 30)
        }
        .onAppear() {
            updateProgress()
        }
    }
    func updateProgress() {
        withAnimation{
            progress = CGFloat(selectedIndex + 1) / CGFloat(content.count)
        }
    }
}
struct PageContentView: View {
    var item: PageControler
    var body: some View {
        VStack {
            Image(item.image)
                .resizable()
                .aspectRatio(contentMode: .fill)
                
            Spacer(minLength: 15)
            
            VStack {
                Text(item.title)
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundColor(Color.black)
                    .padding(.top)
                Text(item.description)
                    .foregroundColor(Color.gray)
                    .multilineTextAlignment(.center)
                    .lineLimit(3)
                    .padding(10)
                    .padding(.top, 8.0)
            }
        }
    }
}
struct CircularProgress: View {
    @Binding var progress: CGFloat
    
    var body: some View {
        Image(systemName: "arrow.right")
            .font(.system(size: 35))
            .foregroundColor(Color.white)
            .frame(width: 90, height: 90)
            .background(Color("Color"))
            .clipShape(Circle())
            .padding()
            .background(Circle().strokeBorder(Color.gray.opacity(0.3), lineWidth: 2))
            .background(Circle().trim(from: 0, to: self.progress).stroke(Color("Color"), lineWidth: 5).rotationEffect(.degrees(-90)))
    }
}



struct OnbordingView_Previews: PreviewProvider {
    static var previews: some View {
        OnbordingView()
    }
}
