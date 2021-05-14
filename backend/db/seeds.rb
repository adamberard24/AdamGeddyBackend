

Artist.destroy_all
AttendingConcerts.destroy_all
Concert.destroy_all
Fan.destroy_all
Follower.destroy_all




all_artists = [
{
    name: "Geddy Lux",
    likes: 0
},
{

    name: "Jayified",
    likes: 0
},
{
    name: "Adam Schmoney",
    likes: 0
},
{
    name: "Finessed",
    likes: 0
},
{
    name: "Lil Baby",
    likes: 0
}
]

all_artists.each do |artistInstance| 
    Artist.create(artistInstance) 
end 

all_fans = [
    {
    name: "Mike I",
    location: "Brooklyn, NY",
    age: 22
    },
    {
    name: "Danny C",
    location: "ALbany, NY",
    age: 23
    },
    {
    name: "Erin S.",
    location: "Manhattan, NY",
    age: 20
    },
    {
    name: "Peter C.",
    location: "Staten Island, NY",
    age: 25
    },
    {
    name: "William Z",
    location: "Queens, NY",
    age: 18
    }
  ]

all_fans.each do |fanInstance|
    Fan.create(fanInstance)
end 

all_concerts = [
{
    
    day: "Friday",
    venue: "Madison Square Garden", 
    cost: 400,
    artist_id: Artist.first.id 
},
{
    
    day: "Friday",
    venue: "South Beach",
    cost: 250,
    artist_id: Artist.second.id
},
{
    day: "Tuesday",
    venue: "Yankee Stadium",
    cost: 300,
    artist_id: Artist.third.id
},
{
    day: "Saturday",
    venue: "Dubai Center",
    cost: 1000,
    artist_id: Artist.fourth.id
},
{
    day: "Sunday",
    venue: "London",
    cost: 400,
    artist_id: Artist.second.id
},
{
    day: "Wednesday",
    venue: "India",
    cost: 500,
    artist_id: Artist.third.id
},
{
    day: "Saturday",
    venue: "Tokyo Japan",
    cost: 450,
    artist_id: Artist.first.id
},
]

all_concerts.each do |concertInstance|
    Concert.create(concertInstance)
end

# all_attending_concerts = [
# {
#    fan_id: Fan.first.id,
#     concert_id = Concert.first.id 
# },
# {
#     fan_id = Fan.second.id, 
#     concert_id = Concert.second.id 
# },
# {
#     fan_id = Fan.third.id, 
#     concert_id = Concert.third.id 
# },
# {
#     fan_id = Fan.fourth.id, 
#     concert_id = Concert.first.id 
# },
# {
#     fan_id = Fan.first.id, 
#     concert_id = Concert.second.id 
# }
# ]


attending_concerts1 = AttendingConcerts.create(fan_id: Fan.first.id, concert_id:Concert.first.id)
attending_concerts2 = AttendingConcerts.create(fan_id: Fan.second.id, concert_id:Concert.second.id)
attending_concerts3 = AttendingConcerts.create(fan_id: Fan.third.id, concert_id:Concert.third.id)
attending_concerts4 = AttendingConcerts.create(fan_id: Fan.fourth.id, concert_id:Concert.first.id)
attending_concerts5 = AttendingConcerts.create(fan_id: Fan.first.id, concert_id:Concert.second.id)
attending_concerts6 = AttendingConcerts.create(fan_id: Fan.second.id, concert_id:Concert.third.id)


followers1 = Follower.create(fan_id: Fan.first.id, artist_id: Artist.first.id)
followers2 = Follower.create(fan_id: Fan.third.id, artist_id: Artist.first.id)
followers3 = Follower.create(fan_id: Fan.fourth.id, artist_id: Artist.first.id)
followers4 = Follower.create(fan_id: Fan.first.id, artist_id: Artist.second.id)
followers5 = Follower.create(fan_id: Fan.second.id, artist_id: Artist.second.id)
followers6 = Follower.create(fan_id: Fan.fifth.id, artist_id: Artist.third.id)
followers7 = Follower.create(fan_id: Fan.second.id, artist_id: Artist.fourth.id)