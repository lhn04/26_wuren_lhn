set(Modules_INCLUDE_DIRS ${CMAKE_CURRENT_LIST_DIR}/include CACHE PATH "Modules_INCLUDE_DIRS")
file(GLOB subdirs RELATIVE ${CMAKE_CURRENT_SOURCE_DIR} ${CMAKE_CURRENT_SOURCE_DIR}/*)
foreach(m ${subdirs})
    if(IS_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR}/${m})
        if(EXISTS ${CMAKE_CURRENT_SOURCE_DIR}/${m}/CMakeLists.txt)
            add_subdirectory(${m})
        endif()        
        set(SRC_DIR "${CMAKE_CURRENT_SOURCE_DIR}/${m}/src")
        file(GLOB_RECURSE SRC_FILES "${SRC_DIR}/*.cpp")
        if(NOT EXISTS ${CMAKE_CURRENT_SOURCE_DIR}/${m}/CMakeLists.txt)
            add_library(${m} STATIC ${SRC_FILES})
        endif()
        set(INCLUDE_DIR "${CMAKE_CURRENT_SOURCE_DIR}/${m}/include")  
        if(EXISTS "${INCLUDE_DIR}")
            target_include_directories(${m}
                PUBLIC ${INCLUDE_DIR}
                "${PROJECT_SOURCE_DIR}/common/kalman/include"  
                "${PROJECT_SOURCE_DIR}/modules/A1/include" 
                "${PROJECT_SOURCE_DIR}/modules/A2/include" 
                "${PROJECT_SOURCE_DIR}/modules/M1/include" 
                "${PROJECT_SOURCE_DIR}/modules/M2/include" 
            )
        endif()
        if(${m} STREQUAL "M2")
            target_link_libraries(${m}
                PUBLIC A2  
            )
        endif()
    endif()
endforeach()
