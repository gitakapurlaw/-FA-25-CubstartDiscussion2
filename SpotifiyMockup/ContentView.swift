//
//  ContentView.swift
//  discussion3
//
//  Created by Dylan Chhum on 7/26/24.
//

import SwiftUI

struct ContentView: View {

    var body: some View {
        ZStack {
            albumView()
                
            
            BlurView(style: .systemMaterialDark)
                .ignoresSafeArea(.all)
//           
            VStack {
                extraView()
                albumView()
                titleView()
                timeView()
                playbackView()
            }
        }
    }
     
}

// Do not worry about this
struct BlurView: UIViewRepresentable {
    var style: UIBlurEffect.Style

    func makeUIView(context: Context) -> UIVisualEffectView {
        let view = UIVisualEffectView(effect: UIBlurEffect(style: style))
        return view
    }

    func updateUIView(_ uiView: UIVisualEffectView, context: Context) {
        uiView.effect = UIBlurEffect(style: style)
    }
}


struct titleView: View {
    var body: some View {
        HStack {
                   VStack(alignment: .leading) {
                       Text("Espresso")
                           .font(.title2)
                           .fontWeight(.bold)

                       Text("Sabrina Carpenter")
                           .font(.subheadline)
                           .foregroundStyle(.gray)
                   }

                   Spacer()

                   Image(systemName: "plus.circle")
                       .font(.title2)
               }
               .foregroundStyle(.white)
               .padding(.horizontal)
           }
       }
struct timeView: View {
    var body: some View {
        VStack {
            ZStack {
                Circle()
                    .frame(height:10)
                    .foregroundColor(.white)
                    .padding([.trailing], 370)
                Rectangle()
                    .cornerRadius(/*@START_MENU_TOKEN@*/3.0/*@END_MENU_TOKEN@*/)
                    .frame(height: 5)
                    .padding([.leading, .trailing], 10)
                    .foregroundColor(.white)
                    .opacity(0.3)
            }
            
            HStack {
                Text("0:00")
                    .opacity(0.6)
                    .foregroundColor(.white)
                Spacer()
                Text("-2:53")
                    .opacity(0.6)
                    .foregroundColor(.white)
            }
            .padding([.trailing, .leading], 10)
        }
    }
}

struct playbackView: View {
    var body: some View {
        HStack {
            Image(systemName: "shuffle")

            Spacer()

            Image(systemName: "backward.end.fill")

            Spacer()

            Image(systemName: "play.circle.fill")
                .font(.system(size: 55))

            Spacer()

            Image(systemName: "forward.end.fill")

            Spacer()

            Image(systemName: "airplayaudio")
        }
        .font(.title2)
        .foregroundStyle(.white)
        .padding(.horizontal)
  }
}
struct albumView : View {
    var body: some View {
        Image("Espresso")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .padding(10)
    }
}

struct extraView : View {
    var body: some View {
        HStack {
            Image(systemName: "chevron.down")

            Spacer()

            Image(systemName: "ellipsis")
        }
        .font(.title2)
        .foregroundStyle(.white)
        .padding(.horizontal)
}
}

#Preview {
    ContentView()
}
