//
//  Copyright © FINN.no AS, Inc. All rights reserved.
//

import FinniversKit

public struct InfoboxDefaultData: InfoboxViewModel {
    public let title = "Slipp å avtale møte med selger"
    public let detail = "Med FINN levert hjelper vi selger å sende varen til deg, enten hjemme eller i butikk."
    public let primaryButtonTitle = "Slik funker FINN levert"
    public let secondaryButtonTitle = "Se alle fraktalternativer"
}

public struct InfoboxOpenBrowserData: InfoboxViewModel {
    public let title = "Beklager ulempen"
    public let detail = "På grunn av retningslinjer fra Apple må du se denne annonsen i nettleseren."
    public let primaryButtonTitle = "Åpne i nettleser"
    public let secondaryButtonTitle = "Gå tilbake til søket"
}
