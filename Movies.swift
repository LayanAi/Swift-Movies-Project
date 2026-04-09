//creating Dictionary
var Movies : [String : [String:Any] ] = [
    "A Beautiful Mind" :["Rate": 8.2, "Gender":"Drama"],
    "Finding Nemo" : ["Rate": 8.1 , "Gender":"Comedy"],
    "When a Stranger Calls" : ["Rate": 5.1 , "Gender":"Horror"],
    "the pursuit of happyness" :[ "Rate" : 8 , "Gender" : "Drama" ],
    "Inside Out" :[ "Rate" : 8.2 ,"Gender" : "Comedy"],
    "Inception" : ["Rate" : 9 , "Gender" : "Action"]
]

// function for adding a movie
func AddMovie (MovieName : String , MovieRate : Double ,MovieGender :String){
    Movies [MovieName] = ["Rate" : MovieRate , "Gender" :MovieGender ]
}

//function for deleting a movie
func DeleteMovie (MovieName : String){
    Movies.removeValue(forKey : MovieName )
}

//function for search a movie by name 
func searchMovie (MovieName : String){
    if (Movies[MovieName] != nil){
        let info = Movies[MovieName]!
        let rate = info ["Rate"]
        let gender = info["Gender"]
        print("Movie is found  Name : \(MovieName),Rate \(String (describing :rate)),Gender \(String (describing :gender))")
    } else {
        print("Movie not found")
    }
}

func rateSearch ( Min : Double , Max : Double){
    var count = 0
    for (name,info) in Movies {
        if let rate = info["Rate"] as? Double {
            if rate >= Min &&  rate <= Max {
                print(name)
                count += 1
            }
        }
    } 
    if count ==0 {
        print("Movie not found")
    }
}

//function for update movie name
func updateMovie (MovieName : String , NewMovie : String){
    if (Movies[MovieName] != nil){
        let oldMovie = Movies[MovieName]
        Movies[NewMovie] = oldMovie
        DeleteMovie(MovieName: MovieName)
        print("Movie updated !")
    }
}

//function for update movie rate 
func updateRate ( MovieName : String , newRate : Double){
    if (Movies[MovieName] != nil){
        let info = Movies[MovieName]!
        Movies[MovieName]?["Rate"] = newRate
        print("Movie updated !")
    }
}

//function for update movie gender
func updateGender ( MovieName : String , newGender : String){
    if (Movies[MovieName] != nil){
        let info = Movies[MovieName]!
        Movies[MovieName]?["Gender"] = newGender
        print("Movie updated !")
    }
}

//example 
AddMovie (MovieName : "Deep" ,MovieRate : 8.8 , MovieGender : "Drama" )
DeleteMovie(MovieName : "Finding Nemo" )
searchMovie(MovieName:"Inside Out")
updateRate(MovieName : "Inception" , newRate : 9.2)
rateSearch( Min :3 , Max : 9)
