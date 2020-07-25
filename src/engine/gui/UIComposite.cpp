#include "UIComposite.h"

UIComposite::UIComposite(const std::shared_ptr<Shape> &shape) : UIComponent(shape), children() {

}

void UIComposite::add(std::shared_ptr<UIComponent> &child) {
    this->children.push_back(child);
    child->setParent(shared_from_this());

//    std::sort(children.begin(), children.end(),
//              [](const std::shared_ptr<UIComponent> &a, const std::shared_ptr<UIComponent> &b) -> bool {
//        return std::dynamic_pointer_cast<UISelectBox>(a) != nullptr;
//    });
}

void UIComposite::remove(std::shared_ptr<UIComponent> &child) {
    auto removed = children.erase(std::remove(children.begin(), children.end(), child), children.end());
//    children.erase(std::remove_if(children.begin(), children.end(), [](auto const& pi){ return *pi % 2 == 0; }), children.end());
}

std::vector<std::shared_ptr<UIComponent>>& UIComposite::getChildren() {
    return children;
}

void UIComposite::draw() {
    for(const auto &ch: children) {
        ch->draw();
    }
}

bool UIComposite::click(const double &x, const double &y) {
    if (shape->contains(x, y)) {
        for (const auto& ch: children) {
            if (ch->click(x-shape->x, y-shape->y)){
                return true;
            }
        }
    }

    return false;
}

void UIComposite::cursor(const double &x, const double &y) {
    if (shape->contains(x, y)) {
        for (const auto& ch: children) {
            ch->cursor(x-shape->x, y-shape->y);
        }
    }
}

void UIComposite::update(int w, int h) {
    UIComponent::update(w, h);

    for (const auto &ch: children) {
        ch->update(shape->w, shape->y);
    }
}
