//
//  BrandGridView.swift
//  Touchdown
//
//  Created by Teemo Norman on 7/19/21.
//

import SwiftUI

struct BrandGridView: View {
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false, content: {
            LazyHGrid(rows: gridLayout, spacing: columnSpacing, pinnedViews: /*@START_MENU_TOKEN@*/[]/*@END_MENU_TOKEN@*/, content: {
                ForEach(brands) { brand in
                    BrandItemView(brand: brand)
                }
            }) // GRID
            .frame(height: 200)
            .padding(15)
        }) // SCROLL
    }
}

struct BrandGridView_Previews: PreviewProvider {
    static var previews: some View {
        BrandGridView()
            .previewLayout(.sizeThatFits)
            .background(colorBackground)
    }
}
