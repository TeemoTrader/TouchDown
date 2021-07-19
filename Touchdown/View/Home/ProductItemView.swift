//
//  ProductItemView.swift
//  Touchdown
//
//  Created by Teemo Norman on 7/19/21.
//

import SwiftUI

struct ProductItemView: View {
    let product: Product
    
    
    
    
    var body: some View {
        VStack(alignment: .leading, spacing: 6, content : {
            //MARK: - PHOTO
            ZStack {
                Image(product.image)
                    .resizable()
                    .scaledToFit()
                    .padding(20)
            } // ZTSACK
            .background(Color(red: product.red, green: product.green, blue: product.blue))
            .cornerRadius(12)
            
            
            //MARK: - NAME
            Text(product.name)
                .font(.title3)
                .fontWeight(.black)
            
            
            //MARK: - PRICE
            Text(product.formattedPrice)
                .fontWeight(.semibold)
                .foregroundColor(.gray)
        }) // VSTACK
    }
}

struct ProductItemView_Previews: PreviewProvider {
    static var previews: some View {
        ProductItemView(product: products[0])
            .previewLayout(.fixed(width: 200, height: 300))
            .padding()
            .background(colorBackground)
    }
}
