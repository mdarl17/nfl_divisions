# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Team.destroy_all

Division.destroy_all

afc_north = Division.create!({ name: "AFC North", conference: "AFC", playoff_bye: false })
afc_east = Division.create!({ name: "AFC East", conference: "AFC", playoff_bye: false })
afc_south = Division.create!({ name: "AFC South", conference: "AFC", playoff_bye: false })
afc_west = Division.create!({ name: "AFC West", conference: "AFC", playoff_bye: true })
nfc_north = Division.create!({ name: "NFC North", conference: "NFC", playoff_bye: false })
nfc_east = Division.create!({ name: "NFC East", conference: "NFC", playoff_bye: true })
nfc_south = Division.create!({ name: "NFC South", conference: "NFC", playoff_bye: false })
nfc_west = Division.create!({ name: "NFC West", conference: "NFC", playoff_bye: false })


Team.create!([
  {
    division_id: afc_north.id,
    name: "Baltimore Ravens",
    wins: 243,
    losses: 190,
    ties: 1,
    year_started: 1996,
    super_bowl: true
  },

  {
    division_id: afc_north.id,
    name: "Cincinnati Bengals",
    wins: 385,
    losses: 463,
    ties: 5,
    year_started: 1968,
    super_bowl: false
  },

  {
    division_id: afc_north.id,
    name: "Cleveland Browns",
    wins: 501,
    losses: 524,
    ties: 11,
    year_started: 1944,
    super_bowl: false
  },

  {
    division_id: afc_north.id,
    name: "Pittsburgh Steelers",
    wins: 661,
    losses: 571,
    ties: 22,
    year_started: 1933,
    super_bowl: true
  },

  {
    division_id: afc_east.id,
    name: "Buffalo Bills",
    wins: 462,
    losses: 495,
    ties: 8,
    year_started: 1960,
    super_bowl: false
  },

  {
    division_id: afc_east.id,
    name: "Miami Dolphins",
    wins: 485,
    losses: 393,
    ties: 4,
    year_started: 1966,
    super_bowl: true
  },

  {
    division_id: afc_east.id,
    name: "New England Patriots",
    wins: 537,
    losses: 420,
    ties: 9,
    year_started: 1960,
    super_bowl: true
  },

  {
    division_id: afc_east.id,
    name: "New York Jets",
    wins: 421,
    losses: 537,
    ties: 8,
    year_started: 1960,
    super_bowl: true
  }, 
  
  {
    division_id: afc_south.id,
    name: "Houston Texans",
    wins: 142,
    losses: 195,
    ties: 1,
    year_started: 2002,
    super_bowl: false
  },

  {
    division_id: afc_south.id,
    name: "Indianapolis Colts",
    wins: 547,
    losses: 493,
    ties: 8,
    year_started: 1953,
    super_bowl: true
  },

  {
    division_id: afc_south.id,
    name: "Jacksonville Jaguars",
    wins: 189,
    losses: 261,
    ties: 0,
    year_started: 1995,
    super_bowl: false
  },
  
  {
    division_id: afc_south.id,
    name: "Tennessee Titans",
    wins: 470,
    losses: 490,
    ties: 6,
    year_started: 1960,
    super_bowl: false
  },
  
  {
    division_id: afc_west.id,
    name: "Denver Broncos",
    wins: 500,
    losses: 456,
    ties: 10,
    year_started: 1960,
    super_bowl: true
  },

  {
    division_id: afc_west.id,
    name: "Kansas City Chiefs",
    wins: 521,
    losses: 433,
    ties: 12,
    year_started: 1960,
    super_bowl: true
  },

  {
    division_id: afc_west.id,
    name: "Las Vegas Raiders",
    wins: 497,
    losses: 458,
    ties: 11,
    year_started: 1960,
    super_bowl: true
  },

  {
    division_id: afc_west.id,
    name: "Los Angeles Chargers",
    wins: 478,
    losses: 477,
    ties: 11,
    year_started: 1960,
    super_bowl: true
  },

  {
    division_id: nfc_north.id,
    name: "Chicago Bears",
    wins: 786,
    losses: 624,
    ties: 42,
    year_started: 1920,
    super_bowl: true
  },

  {
    division_id: nfc_north.id,
    name: "Detroit Lions",
    wins: 579,
    losses: 702,
    ties: 34,
    year_started: 1930,
    super_bowl: false
  },

  {
    division_id: nfc_north.id,
    name: "Green Bay Packers",
    wins: 790,
    losses: 590,
    ties: 38,
    year_started: 1921,
    super_bowl: true
  },

  {
    division_id: nfc_north.id,
    name: "Minnesota Vikings",
    wins: 516,
    losses: 425,
    ties: 11,
    year_started: 1961,
    super_bowl: false
  },

  {
    division_id: nfc_east.id,
    name: "Dallas Cowboys",
    wins: 550,
    losses: 408,
    ties: 6,
    year_started: 1960,
    super_bowl: true
  },

  {
    division_id: nfc_east.id,
    name: "New York Giants",
    wins: 715,
    losses: 638,
    ties: 34,
    year_started: 1925,
    super_bowl: true
  },

  {
    division_id: nfc_east.id,
    name: "Philadelphia Eagles",
    wins: 613,
    losses: 630,
    ties: 27,
    year_started: 1933,
    super_bowl: true
  },

  {
    division_id: nfc_east.id,
    name: "Washington Commanders",
    wins: 625,
    losses: 630,
    ties: 29,
    year_started: 1932,
    super_bowl: true
  },

  {
    division_id: nfc_south.id,
    name: "Atlanta Falcons",
    wins: 383,
    losses: 493,
    ties: 6,
    year_started: 1966,
    super_bowl: false
  },

  {
    division_id: nfc_south.id,
    name: "Carolina Panthers",
    wins: 212,
    losses: 237,
    ties: 1,
    year_started: 1995,
    super_bowl: false
  },

  {
    division_id: nfc_south.id,
    name: "New Orleans Saints",
    wins: 403,
    losses: 460,
    ties: 5,
    year_started: 1967,
    super_bowl: true
  },

  {
    division_id: nfc_south.id,
    name: "Tampa Bay Buccaneers",
    wins: 299,
    losses: 442,
    ties: 1,
    year_started: 1976,
    super_bowl: true
  },

  {
    division_id: nfc_west.id,
    name: "Arizona Cardinals",
    wins: 581,
    losses: 790,
    ties: 41,
    year_started: 1920,
    super_bowl: false
  },

  {
    division_id: nfc_west.id,
    name: "Los Angeles Rams",
    wins: 604,
    losses: 592,
    ties: 21,
    year_started: 1937,
    super_bowl: true
  },

  {
    division_id: nfc_west.id,
    name: "San Francisco 49ers",
    wins: 574,
    losses: 496,
    ties: 14,
    year_started: 1950,
    super_bowl: true
  },

  {
    division_id: nfc_west.id,
    name: "Seattle Seahawks",
    wins: 383,
    losses: 358,
    ties: 1,
    year_started: 1976,
    super_bowl: false
  },

])




