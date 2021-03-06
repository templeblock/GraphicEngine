#include "UICheckBox.h"

UICheckBox::UICheckBox(const int &x, const int &y, const int &w, const int &h)
        : UIComponent(std::make_shared<Rectangle>(x, y, w, h)) {

}

void UICheckBox::draw() {
    PrimitiveRenderer::getInstance()->setColor(backgroundColor)
            ->setOffset(fVec3(getOffset().x, getOffset().y, 0))->render(shape);

    FontRenderer::getInstance()->setPosition(shape->x+getOffset().x, shape->y+getOffset().y)
            .setScale(0.8f)
            .setTextBox(shape->getTextBox())
            .render(checked ? "X" : "");
}

void UICheckBox::setBackgroundColor(const fVec3 &backgroundColor) {
    this->backgroundColor = backgroundColor;
}

void UICheckBox::addClickCallback(std::function<void()> onClick) {
    this->onClick = std::move(onClick);
}

void UICheckBox::addCursorCallback(std::function<void(UICheckBox *)> &onCoursor) {
    this->onCursor = std::move(onCoursor);
}

bool UICheckBox::click(const double &x, const double &y) {
    if (shape->contains(x, y)) {
        if(onClick) {
            onClick();
        }

        checked = !checked;
        return true;
    }

    return false;
}

void UICheckBox::cursor(const double &x, const double &y) {
    if (shape->contains(x, y)) {
        if(onCursor) {
            onCursor(this);
        }
        this->backgroundColor = fVec3(0.8f);
    } else {
        this->backgroundColor = fVec3(0.5f);
    }
}
