#ifndef SHAPE_H
#define SHAPE_H

#include <math/Vec4.h>

class Shape {
protected:
public:
    float x, y;

    Shape(float x, float y) : x(x), y(y) {}

    virtual bool contains(const double &x, const double &y) = 0;
    virtual fVec4 getTextBox() = 0;
};

#endif // SHAPE_H