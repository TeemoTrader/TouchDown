//
//  ProductDetailView.swift
//  Touchdown
//
//  Created by Teemo Norman on 7/19/21.
//

import SwiftUI

struct ProductDetailView: View {
    @EnvironmentObject var shop: Shop
    
    
    var body: some View {
        VStack(alignment: .leading, spacing: 5, content: {
            //MARK: - NAVBAR
            NavigationBarDetailView()
                .padding(.horizontal)
                .padding(.top, UIApplication.shared.windows.first?.safeAreaInsets.top)
            
            
            //MARK: - HEADER
            HeaderDetailView()
                .padding(.horizontal)
            
            
            //MARK: - DETAIL TOP BAR
            TopPartDetailView()
                .padding(.horizontal)
                .zIndex(1.0)
            
            
            //MARK: - DETAIL BOTTOM BAR
            VStack(alignment: .center, spacing: 0, content: {
                
                
                //MARK: - RATINGS + SIZES
                RatingsSizesDetailView()
                    .padding(.top, -20)
                    .padding(.bottom, 10)
                //MARK: - DESCRIPTION
                ScrollView(.vertical, showsIndicators: false, content: {
                    Text(shop.selectedProduct?.description ?? sampleProduct.description)
                        .font(.system(.body, design: .rounded))
                        .foregroundColor(.gray)
                        .multilineTextAlignment(.leading)
                }) // SCROLL
                //MARK: - QUANTITY + FAVORITE
                QuantityFavoriteDetailView()
                    .padding(.vertical)
                
                //MARK: - ADD TO CART
                AddToCartDetailView()
                    .padding(.bottom, 20)
            }) //VSTACK
            .padding(.horizontal)
            .background(Color.white.clipShape(CustomShape())
                            .padding(.top, -105)
            )
        }) // VSTACK
        .zIndex(0)
        // .ignoresSafeArea(.all, edges: .all)
        .ignoresSafeArea()
        .background(
            Color(red: shop.selectedProduct?.red ?? sampleProduct.red,
                  green: shop.selectedProduct?.green ?? sampleProduct.green,
                  blue: shop.selectedProduct?.blue ?? sampleProduct.blue))
        .ignoresSafeArea()
    }
}





struct ProductDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ProductDetailView()
            .environmentObject(Shop())
            .previewLayout(.fixed(width: 375, height: 812))
    }
    
}
