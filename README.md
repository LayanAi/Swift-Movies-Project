# Swift Movies Project

A simple Swift  project that manages a  collection of movies using dictionary.

The project includes functions for adding , deleting , updating , and searching movies.

## Features

- Add a new movie
- Delete an existing movie
- Search for a movie by name
- Search for a movie within a rating range
- Update movie name
- Update movie rating
- Update movie genre

## Data Structure

var Movies :  [String :  [String: Any] ] = [
"A Beautiful Mind" :["Rate": 8.2, "Gender":"Drama"],
"Finding Nemo" : ["Rate": 8.1 , "Gender":"Comedy"],
"When a Stranger Calls" : ["Rate": 5.1 , "Gender":"Horror"],
"the pursuit of happyness" :[ "Rate" : 8 , "Gender" : "Drama" ],
"Inside Out" :[ "Rate" : 8.2 ,"Gender" : "Comedy"],
"Inception" : ["Rate" : 9 , "Gender" : "Action"]

]

## Functions

- AddMovie() :  Adds a new movie
- DeleteMovie() :  Removes a movie
- searchMovie(): Searches for a movie by name
- rateSearch(): Finds movies within a rating range
- updateMovie(): Updates the movie name
- updateRate(): Updates the movie rating
- updateGender(): Updates the movie genre

## Example Usage

AddMovie (MovieName : "Deep" ,MovieRate : 8.8 , MovieGender : "Drama" )

DeleteMovie(MovieName : "Finding Nemo" )

searchMovie(MovieName:"Inside Out")

updateRate(MovieName : "Inception" , newRate : 9.2)
rateSearch( Min :3 , Max : 9)

## Purpose

This project is designed for practicing :

- Swift dictionaries
- Function
- Searching and updating data
- Basic Swift logic
