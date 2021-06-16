//
//  LandmarkDetail.swift
//  Landmarks-tutorial-swiftui
//
//  Created by Gemuele Aludino on 6/16/21.
//

import SwiftUI

struct LandmarkDetail: View {
    var landmark: Landmark
    
    /// from ContentView.swift
    var body: some View {
        ScrollView {
            ///
            /// Add custom `MapView` to the top of the stack.
            ///
            /// When you specify only the `height` parameter, the view automatically sizes to the width
            /// of its content. In this case, `MapView` expands to fill the available space.
            ///
            /// To allow the map content to extend to the top edge of the screen,
            /// add the `ignoreSafeArea(edges: .top)` modifier to the map view.
            ///
            MapView(coordinate: landmark.locationCoordinate)
                .ignoresSafeArea(edges: .top)
                .frame(height: 300)
            ///
            /// Add the `CircleImage` to the stack.
            ///
            /// To layer the image view on top of the map view, give the image an offset of -130 points
            /// vertically, and padding of -130 points from the bottom of the view.
            ///
            /// These adjustments make room for the text by moving the image upwards.
            ///
            CircleImage(image: landmark.image)
                .offset(y: -130)
                .padding(.bottom, -130)
            
            ///
            /// By default, stacks center their contents along their axis
            /// and provide context-appropriate spacing.
            ///
            VStack(alignment: .leading) {
                ///
                /// To customize a SwiftUI view, you call methods called modifiers.
                /// Modifiers wrap a view to change its display or other properties.
                /// Each modifier returns a new view, so it's common to chain
                /// multiple modifiers, stacked vertically.
                ///
                Text(landmark.name)
                    .font(.title)
                    .foregroundColor(.green)
                ///
                /// `.font(.title)`
                /// This applies the system font to the text
                /// so that it responds correctly to the user's preferred font sizes and settings.
                ///
                HStack {
                    Text(landmark.park)
                    ///
                    /// A `Spacer` expands to make its containing view use all of the space of its parent view,
                    /// instead of having its size defined only by its contents.
                    ///
                    Spacer()
                    Text(landmark.state)
                }.font(.subheadline).foregroundColor(.secondary)
            
                ///
                /// Add a divider and some additional descriptive text for the landmark.
                ///
                Divider()
                Text("About \(landmark.name)").font(.title2)
                Text(landmark.description)
            }
            .padding()
        }
        .navigationTitle(landmark.name)
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct LandmarkDetail_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkDetail(landmark: landmarks[0])
    }
}