find_package(OpenCV REQUIRED)
include_directories( ${OpenCV_INCLUDE_DIRS} )
list(APPEND kalman_INCLUDE_DIR "${CMAKE_CURRENT_LIST_DIR}/include")
list(APPEND kalman_INCLUDE_DIR "${OpenCV_INCLUDE_DIRS}")
set(kalman_INCLUDE_DIR
  "${CMAKE_CURRENT_LIST_DIR}/include"
  "${OpenCV_INCLUDE_DIRS}"
  CACHE PATH "kalman filter include directories"
 )
set(kaiman_INCLUDE_DIRS ${kalman_INCLUDE_DIR} PARENT_SCOPE)
add_library(kalman  INTERFACE)
target_include_directories(kalman INTERFACE
  ${kalman_INCLUDE_DIRS}
) 
target_link_libraries(kalman INTERFACE
  ${OpenCV_LIBS}
)
