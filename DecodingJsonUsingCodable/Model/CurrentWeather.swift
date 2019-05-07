
import Foundation

struct CurrentWeather : Codable {
    let id : Int
    let name : String
    let coord : Coord
    let weather : [Weather]
    let base : String
    let main : Main
    let visibility : Int
    let wind : Wind
    let clouds : Clouds
    let dt : Int
    let sys : Sys
}

/*struct CurrentWeather : Codable {
	let id : Int?
	let name : String?
	let coord : Coord?
	let weather : [Weather]?
	let base : String?
	let main : Main?
	let visibility : Int?
	let wind : Wind?
	let clouds : Clouds?
	let dt : Int?
	let sys : Sys?
}

extension CurrentWeather {

	enum CodingKeys: String, CodingKey {
		case id = "id"
		case name = "name"
		case coord = "coord"
		case weather = "weather"
		case base = "base"
		case main = "main"
		case visibility = "visibility"
		case wind = "wind"
		case clouds = "clouds"
		case dt = "dt"
		case sys = "sys"
	}

	init(from decoder: Decoder) throws {
		let values = try decoder.container(keyedBy: CodingKeys.self)
        id = try values.decode(Int.self, forKey: .id)
		name = try values.decodeIfPresent(String.self, forKey: .name)
		coord = try values.decodeIfPresent(Coord.self, forKey: .coord)
		weather = try values.decodeIfPresent([Weather].self, forKey: .weather)
		base = try values.decodeIfPresent(String.self, forKey: .base)
		main = try values.decodeIfPresent(Main.self, forKey: .main)
		visibility = try values.decodeIfPresent(Int.self, forKey: .visibility)
		wind = try values.decodeIfPresent(Wind.self, forKey: .wind)
		clouds = try values.decodeIfPresent(Clouds.self, forKey: .clouds)
		dt = try values.decodeIfPresent(Int.self, forKey: .dt)
		sys = try values.decodeIfPresent(Sys.self, forKey: .sys)
	}

}*/
