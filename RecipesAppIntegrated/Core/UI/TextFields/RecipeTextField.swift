//
//  RecipeTextField.swift
//  RecipesAppIntegrated
//
//  Created by Alejandro Orozco Builes on 17/08/19.
//  Copyright © 2019 Alejandro Orozco Builes. All rights reserved.
//

import SwiftUI

struct RecipeTextField: View {
    @Binding var text: String
    var placeHolder: String
    var contentType: UITextContentType
    
    var body: some View {
        Group {
            if contentType == .password {
                SecureField(placeHolder, text: $text)
                    .font(.custom("Montserrat-Regular", size: 14))
                    .textContentType(contentType)
                    .padding(16)
                    .border(Color("BorderGray"))
            } else {
                TextField(placeHolder, text: $text)
                    .font(.custom("Montserrat-Regular", size: 14))
                    .textContentType(contentType)
                    .padding(16)
                    .border(Color("BorderGray"))
            }
        }
    }
}

#if DEBUG
struct RecipeTextField_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            RecipeTextField(text: .constant(""), placeHolder: "Your Email", contentType: .emailAddress)
                .previewLayout(.fixed(width: 200, height: 100))
            
            RecipeTextField(text: .constant(""), placeHolder: "Your Email", contentType: .emailAddress)
                .environment(\.colorScheme, .dark)
                .previewLayout(.fixed(width: 200, height: 100))
                .background(Color.black)
        }
    }
}
#endif
