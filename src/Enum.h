//
// Created by mdurr on 12/18/2023.
//

#ifndef CALIB_ENUM_H
#define CALIB_ENUM_H
#pragma once

enum Resolution
{
    frameWidth = 1920,
    frameHeight = 1080
};

enum cam
{
    cam0 = 0,
    cam1 = 1
};

enum chess_n
{
    n_height = 6,
    n_width = 9
};

enum resize
{
    rWidth = 1000,
    rHeight = 563
};

enum flip
{
    flip_h = 1,
    flip_v = 0,
    flip_b = -1,
    flip_non = 10
};
#endif //CALIB_ENUM_H
