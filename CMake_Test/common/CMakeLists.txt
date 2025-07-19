set(Common_INCLUDE_DIRS ${CMAKE_CURRENT_LIST_DIR}/include CACHE PATH "Common_INCLUDE_DIRS")
file(GLOB TEST_MODULE_COMMON_ST RELATIVE ${CMAKE_CURRENT_SOURCE_DIR} ${CMAKE_CURRENT_SOURCE_DIR}/*)
foreach(m ${TEST_MODULE_COMMON_ST})
    if(IS_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR}/${m})
        if(${m} STREQUAL "math")       
            file(GLOB MATH_SRC 
                "${CMAKE_CURRENT_SOURCE_DIR}/${m}/src/*.cpp"
            )
            add_library(math STATIC ${MATH_SRC})
            target_include_directories(math 
                PUBLIC 
                    "${CMAKE_CURRENT_SOURCE_DIR}/${m}/include"
            )
            continue()
        endif()
        if(EXISTS ${CMAKE_CURRENT_SOURCE_DIR}/${m}/CMakeLists.txt)
            add_subdirectory(${m})
        endif()
    endif()
endforeach()

