#pragma once

#include <string>

class Sound{
public:
    std::string file_path;
    Sound(){}
    Sound(std::string file_path){
        this->file_path = file_path;
    }
};

// class SoundManager{
//     static std::map<std::string, Sound> sounds;
//     static ISoundEngine* engine;
// public:
//     static void AddSound(string file_path, string sound_name){
//         sounds[sound_name] = Sound(file_path);
//     }
//     static void PlaySound(string sound_name){
//         Sound *sound = &sounds[sound_name];
//         if (sound->IsSingleFile()){
//             engine->play2D(sound->file_paths[0].c_str(), false);
//         }
//         else {
//             int number = rand() % sound->file_paths.size();
//             engine->play2D(sound->file_paths[number].c_str(), false);
//         }
//     }
//     static void Init();
// };