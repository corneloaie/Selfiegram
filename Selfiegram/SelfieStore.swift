//
//  SelfieStore.swift
//  Selfiegram
//
//  Created by Cornel Oaie on 26/02/2019.
//  Copyright © 2019 Cornel Oaie. All rights reserved.
//

import Foundation
import UIKit.UIImage

class Selfie : Codable {
    // When it was created
    let created : Date
    
    // A unique ID, used to link this selfie to its image on disk
    let id : UUID
    
    // The name of this selfie
    var title = "New Selfie!"
    
    var image : UIImage?
    {
        get
        {
            return SelfieStore.shared.getImage(id: self.id)
        }
        set
        {
            try? SelfieStore.shared.setImage(id: self.id, image: newValue)
        }
}
    
    init(title: String)
    {
        self.title = title
        
        // the current time
        self.created = Date()
        // a new UUID
        self.id = UUID()
}
}
