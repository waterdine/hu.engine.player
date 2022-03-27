//
//  虎_engine_player_app.swift
//  虎_engine_player_app
//
//  Created by ito.antonia on 09/12/2021.
//

import SwiftUI
import 虎_engine_player_base

@main
struct 虎_engine_player: App {
    var body: some Scene {
        DocumentGroup(newDocument: ProductDocument()) { file in
            //ProductDocumentView(document: file.$document)
        }
    }
}

