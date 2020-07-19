#include "UIStageManager.h"

UIStageManager::UIStageManager()
        : rootUI(), camera(fVec3(0)) {
    MenuStage::getInstance()->setXxx([this](){this->setStage(Stages::MESH);});
    MenuStage::getInstance()->setYyy([this](){this->setStage(Stages::PARTICLES);});
    MenuStage::getInstance()->setZzz([this](){this->setStage(Stages::SHADING);});
    MenuStage::getInstance()->setAaa([this](){this->setStage(Stages::LIGHT);});
    MenuStage::getInstance()->setBbb([this](){this->setStage(Stages::TEXTURE_MAPS);});
    MenuStage::getInstance()->setDdd([this](){this->setStage(Stages::BLUR);});
    MenuStage::getInstance()->setCcc([this](){this->setStage(Stages::DITHERING);});

    MeshStage::getInstance()->setXxx([this](){this->setStage(Stages::MENU);});
    ParticleStage::getInstance()->setXxx([this](){this->setStage(Stages::MENU);});
    LightStage::getInstance()->setXxx([this](){this->setStage(Stages::MENU);});
    ShadingStage::getInstance()->setXxx([this](){this->setStage(Stages::MENU);});
    TextureStage::getInstance()->setXxx([this](){this->setStage(Stages::MENU);});
    BlurStage::getInstance()->setXxx([this](){this->setStage(Stages::MENU);});
    DitheringStage::getInstance()->setXxx([this](){this->setStage(Stages::MENU);});
}

void UIStageManager::setStage(Stages stage) {
    switch (stage) {
        case MENU:
            rootUI = MenuStage::getInstance();
            break;
        case MESH:
            rootUI = MeshStage::getInstance();
            break;
        case PARTICLES:
            rootUI = ParticleStage::getInstance();
            break;
        case LIGHT:
            rootUI = LightStage::getInstance();
            break;
        case SHADING:
            rootUI = ShadingStage::getInstance();
            break;
        case TEXTURE_MAPS:
            rootUI = TextureStage::getInstance();
            break;
        case BLUR:
            rootUI = BlurStage::getInstance();
        case DITHERING:
            rootUI = DitheringStage::getInstance();
            break;
    }
}

void UIStageManager::render() {
    if (rootUI) {
        glEnable(GL_DEPTH_TEST);
        rootUI->renderContent(camera, deltaTime);
        glDisable(GL_DEPTH_TEST);
        rootUI->renderUI();
    }
}

void UIStageManager::update(Camera camera, double dt) {
    this->camera = camera;
    this->deltaTime = dt;
}

void UIStageManager::click(const double &x, const double &y) {
    if (!camera.isEnabled()) {
        rootUI->click(x, y);
    }
}

void UIStageManager::cursor(const double &x, const double &y) {
    if (!camera.isEnabled()) {
        rootUI->cursor(x, y);
    }
}
