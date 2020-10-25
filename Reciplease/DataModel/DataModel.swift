//
//  DataModel.swift
//  Reciplease
//
//  Created by Mark LEDOUX on 05/10/2020.
//

import Foundation

// MARK: - Welcome
struct Welcome: Codable {
	let question: String
	let from, towards: Int
	let more: Bool
	let count: Int
	let hits: [Hit]
}

// MARK: - Hit
struct Hit: Codable {
	let recipe: Recipe
	let bookmarked, bought: Bool
}

// MARK: - Recipe
struct Recipe: Codable {
	let uri: String
	let label: String
	let image: String
	let source: String
	let url: String
	let shareAs: String
	let yield: Int
	let dietLabels, healthLabels, cautions, ingredientLines: [String]
	let ingredients: [Ingredient]
	let calories, totalWeight: Double
	let totalTime: Int
	let totalNutrients, totalDaily: [String: Total]
	let digest: [Digest]
}

// MARK: - Digest
struct Digest: Codable {
	let label, tag: String
	let schemaOrgTag: String?
	let total: Double
	let hasRDI: Bool
	let daily: Double
	let unit: Unit
	let sub: [Digest]?
}

enum Unit: String, Codable {
	case empty = "%"
	case gram = "g"
	case kcal = "kcal"
	case milligram = "mg"
	case microgram = "µg"
}

// MARK: - Ingredient
struct Ingredient: Codable {
	let text: String
	let weight: Double
	let image: String
}

// MARK: - Total
struct Total: Codable {
	let label: String
	let quantity: Double
	let unit: Unit
}

private enum CodingKeys: String, CodingKey {
	case question = "q"
	case towards = "to"
	case gram = "g"
	case milligram = "mg"
	case microgram = "µg"
}
