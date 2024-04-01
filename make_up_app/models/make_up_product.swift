import Foundation

struct MakeUpProduct: Codable {
    let id: Int
    let brand: String?
    let name: String
    let price: String?
    let priceSign: PriceSign?
    let currency: Currency?
    let imageLink: String?
    let productLink: String?
    let websiteLink: String?
    let description: String?
    let rating: Double?
    let category: Category?
    let productType: ProductType?
    let tagList: [String]?
    let createdAt, updatedAt: String?
    let productAPIURL: String?
    let apiFeaturedImage: String?
    let productColors: [ProductColor]?

    enum CodingKeys: String, CodingKey {
        case id, brand, name, price
        case priceSign
        case currency
        case imageLink
        case productLink
        case websiteLink
        case description, rating, category
        case productType
        case tagList
        case createdAt
        case updatedAt
        case productAPIURL
        case apiFeaturedImage
        case productColors
    }

}

enum Category: String, Codable {
    case bbCc = "bb_cc"
    case concealer = "concealer"
    case contour = "contour"
    case cream = "cream"
    case empty = ""
    case gel = "gel"
    case highlighter = "highlighter"
    case lipGloss = "lip_gloss"
    case lipStain = "lip_stain"
    case lipstick = "lipstick"
    case liquid = "liquid"
    case mineral = "mineral"
    case palette = "palette"
    case pencil = "pencil"
    case powder = "powder"
}

enum Currency: String, Codable {
    case cad = "CAD"
    case gbp = "GBP"
    case usd = "USD"
}

enum PriceSign: String, Codable {
    case empty = "$"
    case priceSign = "£"
}

struct ProductColor: Codable {
    let hexValue: String
    let colourName: String?

    enum CodingKeys: String, CodingKey {
        case hexValue
        case colourName
    }
}

enum ProductType: String, Codable {
    case blush = "blush"
    case bronzer = "bronzer"
    case eyebrow = "eyebrow"
    case eyeliner = "eyeliner"
    case eyeshadow = "eyeshadow"
    case foundation = "foundation"
    case lipLiner = "lip_liner"
    case lipstick = "lipstick"
    case mascara = "mascara"
    case nailPolish = "nail_polish"
}
