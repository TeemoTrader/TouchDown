//
//  CodableBundleExtension.swift
//  Touchdown
//
//  Created by Teemo Norman on 7/19/21.
//

import Foundation

extension Bundle {
    func decode<T: Codable>(_ file: String) -> T {
        //MARK: - 1. LOCATE JASON
        guard let url = self.url(forResource: file, withExtension: nil) else {
            fatalError("Failed to locate \(file) in bundle.")
        }
        
        
        //MARK: - 2. CREATE PROPERTY FOR THE UNDECODED DATA
        guard let data = try? Data(contentsOf: url) else {
            fatalError("Failed to load \(file) from bundle.")
        }
        
        
        //MARK: - 3. CREATE A DECODER
        let decoder = JSONDecoder()
        
        
        //MARK: - 4. CREATE A PROPERTY FOR DECODED DATA
        guard let decodedData = try? decoder.decode(T.self, from: data) else {
            fatalError("failed to decode \(file) from bundle")
        }
        
        
        //MARK: - 5. RETURN READY TO USE DATA
        return decodedData
    }
}
