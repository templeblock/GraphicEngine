find_package(Boost COMPONENTS log log_setup thread date_time filesystem system REQUIRED)

add_definitions(-DBOOST_LOG_DYN_LINK)
include_directories(${Boost_INCLUDE_DIRS})
include_directories(../../../lib/glew/include)

add_library(core STATIC
        window.cpp window.h
        exception/InitException.h
        shaders/Shader.cpp shaders/Shader.h shaders/ShaderLoader.cpp shaders/ShaderLoader.h)

set_target_properties(core PROPERTIES VERSION ${PROJECT_VERSION})
target_link_libraries(core ${Boost_LIBRARIES})
target_link_libraries(core glfw libglew_shared)
#install(FILES window.h DESTINATION ../../include/engine/core)