TEMPLATE = app
TARGET =
INCLUDEPATH += .

# Input
HEADERS += \
	mainwindow.h \
	QCvVideo.h \
	cutlistdialog.h

FORMS   += \
	mainwindow.ui \
	cutlistdialog.ui

SOURCES += \
	main.cpp \
	mainwindow.cpp \
	QCvVideo.cpp \
	cutlistdialog.cpp


#-- OpevCV
OPENCV_CXXFLAGS = $$system(pkg-config opencv --cflags)
OPENCV_LDFLAGS  = $$system(pkg-config opencv --libs)
QMAKE_CXXFLAGS += -g -ggdb $$OPENCV_CXXFLAGS
LIBS += $$OPENCV_LDFLAGS

#-- Only needed libraries
#OPENCV_PATH = "/opt/opencv"
#LIBS += -L$$OPENCV_PATH/lib -lopencv_core -lopencv_highgui
