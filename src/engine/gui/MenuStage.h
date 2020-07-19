#ifndef MENUSTAGE_H
#define MENUSTAGE_H

#include <memory>
#include "UIStage.h"
#include "UIButton.h"
#include "UIFrameDecorator.h"

class MenuStage : public UIStage {
private:
    std::shared_ptr<UIComponent> temp, temp2, temp3, temp4, temp5, temp6, temp7;
    static std::shared_ptr<MenuStage> instance;
    MenuStage();

public:
    static const std::shared_ptr<MenuStage> & getInstance();

    void renderUI() override;
    void renderContent(Camera camera, double dt) override;

    void setXxx(std::function<void ()> fun) {
        std::dynamic_pointer_cast<UIButton>(temp)->addClickCallback(fun);
    }

    void setYyy(std::function<void ()> fun) {
        std::dynamic_pointer_cast<UIButton>(temp2)->addClickCallback(fun);
    }

    void setZzz(std::function<void ()> fun) {
        std::dynamic_pointer_cast<UIButton>(temp3)->addClickCallback(fun);
    }

    void setAaa(std::function<void ()> fun) {
        std::dynamic_pointer_cast<UIButton>(temp4)->addClickCallback(fun);
    }

    void setBbb(std::function<void ()> fun) {
        std::dynamic_pointer_cast<UIButton>(temp5)->addClickCallback(fun);
    }

    void setCcc(std::function<void ()> fun) {
        std::dynamic_pointer_cast<UIButton>(temp6)->addClickCallback(fun);
    }

    void setDdd(std::function<void ()> fun) {
        std::dynamic_pointer_cast<UIButton>(temp7)->addClickCallback(fun);
    }
};

#endif // MENUSTAGE_H