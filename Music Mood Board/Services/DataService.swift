//
//  DataService.swift
//  Music Mood Board
//
//  Created by Andrey Krasnoperov on 2021-01-11.
//  Copyright © 2021 AK. All rights reserved.
//

import Foundation

class DataService {
    static let instance = DataService()
    
    private let genres = [
        Genre(title: "SOUL", imgName: "genre_soul.jpeg"),
        Genre(title: "DARK", imgName: "genre_dark.png"),
        Genre(title: "SLOW", imgName: "genre_slow.png"),
        Genre(title: "AMBIENT", imgName: "genre_ambient.jpeg"),
        Genre(title: "UPBEAT", imgName: "genre_upbeat.png"),
        Genre(title: "NOSTALGIC", imgName: "genre_nostalgic.jpeg")
    ]
    
    private let soulTracks = [
        Track(audioName: "audio_loveandhappiness.mp3", title: "Love and Happiness", artist: "Al Green", tags: ["soul", "vintage", "classic"], coverImg: "cover_loveandhappiness.jpeg"),
        Track(audioName: "audio_likeweusedto.mp3", title: "Like we used to", artist: "Swavay", tags: ["soul", "rnb", "blues"], coverImg: "cover_likeweusedto.jpeg"),
        Track(audioName: "audio_badguy.mp3", title: "Bad Guy", artist: "Vory", tags: ["RNB", "sad", "emotional"], coverImg: "cover_badguy.jpeg"),
        Track(audioName: "audio_toofast.mp3", title: "Too Fast", artist: "Sonder", tags: ["soul", "downtempo", "emotional"], coverImg: "cover_toofast.jpeg"),
        Track(audioName: "audio_dont.mp3", title: "Don't", artist: "Bryson Tiller", tags: ["soul", "trap", "rnb"], coverImg: "cover_dont.jpeg")
    ]
    
    private let darkTracks = [
        Track(audioName: "audio_runnin.mp3", title: "Runnin", artist: "21 Savage, Metro Boomin", tags: ["trap", "scary", "intense"], coverImg: "cover_runnin.jpeg"),
        Track(audioName: "audio_ohmydisside.mp3", title: "Oh my Dis side", artist: "Travis Scott", tags: ["trap", "dark", "psychadelic"], coverImg: "cover_ohmydisside.jpeg"),
        Track(audioName: "audio_baptizedinfire.mp3", title: "Baptized in fire", artist: "Kid Cudi", tags: ["wavy", "deep", "intense"], coverImg: "cover_baptizedinfire.jpeg"),
        Track(audioName: "audio_whereyaat.mp3", title: "Where ya at", artist: "Future", tags: ["trap", "fast", "intense"], coverImg: "cover_whereyaat.jpeg")
    ]
    
    private let slowTracks = [
        Track(audioName: "audio_lsd.mp3", title: "L$D", artist: "A$AP Rocky", tags: ["psychadelic", "euphoric", "slow"], coverImg: "cover_lsd.jpeg"),
        Track(audioName: "audio_90210.mp3", title: "90210", artist: "Travis Scott", tags: ["psychadelic", "spacey", "slow"], coverImg: "cover_ohmydisside.jpeg"),
        Track(audioName: "audio_4rdasquaw.mp3", title: "4r da squaw", artist: "4r da squaw", tags: ["soulful", "smooth", "mellow"], coverImg: "cover_4rdasquaw.jpeg"),
        Track(audioName: "audio_fear.mp3", title: "FEAR", artist: "Kendrick Lamar", tags: ["conscious", "west coast", "lyrical"], coverImg: "cover_fear.jpeg")
    ]
    
    private let ambientTracks = [
        Track(audioName: "audio_escapefromla.mp3", title: "Escape from LA", artist: "The Weeknd", tags: ["melancholy", "ambient", "emotional"], coverImg: "cover_escapefromla.jpeg"),
        Track(audioName: "audio_astrothunder.mp3", title: "Astrothunder", artist: "Travis Scott", tags: ["spacey", "psychadelic", "light"], coverImg: "cover_astrothunder.jpeg"),
        Track(audioName: "audio_whiteiverson.mp3", title: "White Iverson", artist: "Post Malone", tags: ["emotional", "ambient", "smooth"], coverImg: "cover_whiteiverson.jpeg"),
        Track(audioName: "audio_drugsyoushouldtryit.mp3", title: "Drugs you should try it", artist: "Travis Scott", tags: ["melancholy", "psychadelic", "spacey"], coverImg: "cover_drugsyoushouldtryit.jpeg")
    ]
    
    private let upbeatTracks = [
        Track(audioName: "audio_ex.mp3", title: "Ex (Ft. YG)", artist: "Ty Dolla Sign", tags: ["happy", "west coast", "bounce"], coverImg: "cover_ex.jpeg"),
        Track(audioName: "audio_waves.mp3", title: "Waves (Tame Impala Remix)", artist: "Miguel, Tame Impala", tags: ["vibe", "happy", "light"], coverImg: "cover_waves.jpeg"),
        Track(audioName: "audio_ladders.mp3", title: "Ladders", artist: "Mac Miller", tags: ["funky", "soulful", "intense"], coverImg: "cover_ladders.jpeg"),
        Track(audioName: "audio_chances.mp3", title: "Chances", artist: "Kaytranada", tags: ["funk", "soul", "bounce"], coverImg: "cover_chances.jpeg")
    ]
    
    private let nostalgicTracks = [
        Track(audioName: "audio_donotdisturb.mp3", title: "Do Not Disturb", artist: "Drake", tags: ["conscious", "nostalgic", "soul"], coverImg: "cover_donotdisturb.jpeg"),
        Track(audioName: "audio_bitchdontkillmyvibe.mp3", title: "Bitch don't kill my vibe", artist: "Kendrick Lamar", tags: ["conscious", "nostalgic", "melancholy"], coverImg: "cover_bitchdontkillmyvibe.jpeg"),
        Track(audioName: "audio_realfriends.mp3", title: "Real Friends", artist: "Kanye West", tags: ["conscious", "sad", "nostalgic"], coverImg: "cover_realfriends.jpeg"),
        Track(audioName: "audio_holyghost.mp3", title: "Holy Ghost", artist: "ASAP Rocky", tags: ["conscious", "deep", "classic"], coverImg: "cover_holyghost.jpeg")
    ]
    
    
    func getGenres() -> [Genre] {
        return genres
    }
    
    func getTracks(type: String) -> [Track] {
        
        switch type {
            
        case "DARK":
            return darkTracks
        case "SLOW":
            return slowTracks
        case "AMBIENT":
            return ambientTracks
        case "UPBEAT":
            return upbeatTracks
        case "NOSTALGIC":
            return nostalgicTracks
        case "SOUL":
            return soulTracks
        default:
            return []
        }
    
    }
}
