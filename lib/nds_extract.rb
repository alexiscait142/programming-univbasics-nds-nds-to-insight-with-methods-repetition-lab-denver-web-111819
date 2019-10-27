$LOAD_PATH.unshift(File.dirname(__FILE__))
require_relative './directors_database'
require 'pry'

pp directors_database

def directors_totals(source)
  result = {}
  director_index = 0
  while director_index < source.size do
    director = source[director_index]
    result[director[:name]] = gross_for_director(director)
    director_index += 1
  end
  result
end

def gross_for_director(d)
  total = 0
  index = 0
  while index < d[:movies].length do
    total += d[:movies][index][:worldwide_gross]
    index += 1
  end
  total
end

def list_of_directors(source)
  # Write this implementation
  names = []
  name_index = 0 
  while name_index < source.length do
    names << source[name_index][:name]
    name_index += 1
  end
  names
end

def total_gross(source)
  all_total = 0 
  name_index = 0 
  while name_index < source.length do 
    all_total += directors_totals(source)
    name_index += 1
  end
  all_total
end

  # Write this implementation
  #
  # Should use methods:
  # 1. directors_totals: returns a Hash of { dir_name => gross }
  # 2. list_of_directors: names provides an Array of directors names (use
  #
  # Visit each key (i.e. director name), look up the value in the hash
  # returned by directors_totals, and add it to a running total. When done,
  # return the total

# [
#   {:name=>"Stephen Spielberg",
#   :movies=>
#   [{:title=>"Jaws",
#     :studio=>"Universal",
#     :worldwide_gross=>260000000,
#     :release_year=>1975},
#     {:title=>"Close Encounters of the Third Kind",
#     :studio=>"Columbia",
#     :worldwide_gross=>135189114,
#     :release_year=>1977},
#     {:title=>"Raiders of the Lost Ark",
#     :studio=>"Paramount",
#     :worldwide_gross=>248159971,
#     :release_year=>1981},
#     {:title=>"E.T. the Extra-terrestrial",
#     :studio=>"Universal",
#     :worldwide_gross=>435110554,
#     :release_year=>1982},
#     {:title=>"Schindler's List",
#     :studio=>"Universal",
#     :worldwide_gross=>96898818,
#     :release_year=>1993},
#     {:title=>"Lincoln",
#     :studio=>"Buena Vista",
#     :worldwide_gross=>182207973,
#     :release_year=>2012}]},
# {:name=>"Russo Brothers",
#   :movies=>
#   [{:title=>"Avengers Endgame",
#     :studio=>"Buena Vista",
#     :worldwide_gross=>858371337,
#     :release_year=>2019},
#     {:title=>"Avengers Infinity War",
#     :studio=>"Buena Vista",
#     :worldwide_gross=>678815482,
#     :release_year=>2018},
#     {:title=>"Captain America Civil War",
#     :studio=>"Buena Vista",
#     :worldwide_gross=>408084349,
#     :release_year=>2016},
#     {:title=>"Captain America The Winter Soldier",
#     :studio=>"Buena Vista",
#     :worldwide_gross=>259766572,
#     :release_year=>2014},
#     {:title=>"You, Me and Dupree",
#     :studio=>"Universal",
#     :worldwide_gross=>75628110,
#     :release_year=>2006},
#     {:title=>"Welcome to Collinwood",
#     :studio=>"Warner Brothers",
#     :worldwide_gross=>336620,
#     :release_year=>2002}]},
# {:name=>"James Cameron",
#   :movies=>
#   [{:title=>"Avatar",
#     :studio=>"Fox",
#     :worldwide_gross=>760507625,
#     :release_year=>2009},
#     {:title=>"Titanic",
#     :studio=>"Paramout",
#     :worldwide_gross=>659363944,
#     :release_year=>1997},
#     {:title=>"Titanic",
#     :studio=>"Paramout",
#     :worldwide_gross=>659363944,
#     :release_year=>1997},
#     {:title=>"Terminator 2 Judgment Day",
#     :studio=>"TriStar",
#     :worldwide_gross=>205881154,
#     :release_year=>1991},
#     {:title=>"True Lies",
#     :studio=>"Fox",
#     :worldwide_gross=>146282411,
#     :release_year=>1994},
#     {:title=>"Aliens",
#     :studio=>"Fox",
#     :worldwide_gross=>85160248,
#     :release_year=>1986},
#     {:title=>"The Abyss",
#     :studio=>"Fox",
#     :worldwide_gross=>54461047,
#     :release_year=>1989}]},
# {:name=>"Spike Lee",
#   :movies=>
#   [{:title=>"Inside Man",
#     :studio=>"Universal",
#     :worldwide_gross=>88513495,
#     :release_year=>2006},
#     {:title=>"BlacKkKlansman",
#     :studio=>"Focus",
#     :worldwide_gross=>49275340,
#     :release_year=>2018},
#     {:title=>"Malcolm X",
#     :studio=>"Warner Brothers",
#     :worldwide_gross=>48169910,
#     :release_year=>1992},
#     {:title=>"The Original Kings of Comedy",
#     :studio=>"Paramount",
#     :worldwide_gross=>38182790,
#     :release_year=>2000},
#     {:title=>"Jungle Fever",
#     :studio=>"Universal",
#     :worldwide_gross=>32482682,
#     :release_year=>1991}]},
# {:name=>"Wachowski Siblings",
#   :movies=>
#   [{:title=>"The Matrix Reloaded",
#     :studio=>"Warner Brothers",
#     :worldwide_gross=>281576461,
#     :release_year=>2003},
#     {:title=>"The Matrix",
#     :studio=>"Warner Brothers",
#     :worldwide_gross=>171479930,
#     :release_year=>1999},
#     {:title=>"The Matrix Revolutions",
#     :studio=>"Warner Brothers",
#     :worldwide_gross=>139313948,
#     :release_year=>2003},
#     {:title=>"Jupiter Ascending",
#     :studio=>"Warner Brothers",
#     :worldwide_gross=>139313948,
#     :release_year=>2015},
#     {:title=>"Speed Racer",
#     :studio=>"Warner Brothers",
#     :worldwide_gross=>47387723,
#     :release_year=>2008},
#     {:title=>"Cloud Atlas",
#     :studio=>"Warner Brothers",
#     :worldwide_gross=>27108272,
#     :release_year=>2012}]},
# {:name=>"Robert Zemeckis",
#   :movies=>
#   [{:title=>"Forrest Gump",
#     :studio=>"Paramount",
#     :worldwide_gross=>330455270,
#     :release_year=>1994},
#     {:title=>"Cast Away",
#     :studio=>"Fox",
#     :worldwide_gross=>233632142,
#     :release_year=>2000},
#     {:title=>"Back to the Future",
#     :studio=>"Universal",
#     :worldwide_gross=>210609762,
#     :release_year=>1985},
#     {:title=>"The Polar Express",
#     :studio=>"Warner Brothers",
#     :worldwide_gross=>187224490,
#     :release_year=>2004},
#     {:title=>"Who Framed Roger Rabbit",
#     :studio=>"Buena Vista",
#     :worldwide_gross=>156452370,
#     :release_year=>1988},
#     {:title=>"What Lies Beneath",
#     :studio=>"Dreamworks",
#     :worldwide_gross=>155464351,
#     :release_year=>2000}]},
# {:name=>"Quentin Tarantino",
#   :movies=>
#   [{:title=>"Django Unchained",
#     :studio=>"Weinstein",
#     :worldwide_gross=>162805434,
#     :release_year=>2012},
#     {:title=>"Once Upon a Time in Hollywood",
#     :studio=>"Sony",
#     :worldwide_gross=>135156125,
#     :release_year=>2019},
#     {:title=>"Inglourious Basterds",
#     :studio=>"Weinstein",
#     :worldwide_gross=>120540719,
#     :release_year=>2009},
#     {:title=>"Pulp Fiction",
#     :studio=>"Miramax",
#     :worldwide_gross=>107928762,
#     :release_year=>1994},
#     {:title=>"Kill Bill Vol. 1",
#     :studio=>"Miramax",
#     :worldwide_gross=>70099045,
#     :release_year=>2003},
#     {:title=>"Kill Bill Vol. 1",
#     :studio=>"Miramax",
#     :worldwide_gross=>66208183,
#     :release_year=>2004}]},
# {:name=>"Martin Scorsese",
#   :movies=>
#   [{:title=>"The Departed",
#     :studio=>"Warner Brothers",
#     :worldwide_gross=>132384315,
#     :release_year=>2006},
#     {:title=>"Shutter Island",
#     :studio=>"Paramous",
#     :worldwide_gross=>128012934,
#     :release_year=>2010},
#     {:title=>"The Wolf of Wall Street",
#     :studio=>"Paramount",
#     :worldwide_gross=>116900694,
#     :release_year=>2013},
#     {:title=>"The Aviator",
#     :studio=>"Miramax",
#     :worldwide_gross=>102610330,
#     :release_year=>2004},
#     {:title=>"Cape Fear",
#     :studio=>"Universal",
#     :worldwide_gross=>79091969,
#     :release_year=>1991},
#     {:title=>"Gangs of New York",
#     :studio=>"Miramax",
#     :worldwide_gross=>77812000,
#     :release_year=>2002}]},
# {:name=>"Francis Ford Coppola",
#   :movies=>
#   [{:title=>"The Godfather",
#     :studio=>"Paramount",
#     :worldwide_gross=>134966411,
#     :release_year=>1972},
#     {:title=>"Apocalypse Now",
#     :studio=>"MGM",
#     :worldwide_gross=>83471511,
#     :release_year=>1979},
#     {:title=>"Apocalypse Now Redux",
#     :studio=>"Miramax",
#     :worldwide_gross=>83471511,
#     :release_year=>2001},
#     {:title=>"Bram Stoker's Dracula",
#     :studio=>"Columbia",
#     :worldwide_gross=>82522790,
#     :release_year=>1992},
#     {:title=>"The Godfather Part III",
#     :studio=>"Paramount",
#     :worldwide_gross=>66666062,
#     :release_year=>1990},
#     {:title=>"Jack",
#     :studio=>"Buena Vista",
#     :worldwide_gross=>58620973,
#     :release_year=>1996}]}]


