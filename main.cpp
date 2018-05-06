#include "mainwindow.h"
#include "audiowindow.h"
#include <QApplication>
#include <QHBoxLayout>
#include <QSpinBox>
#include <QSlider>

int main(int argc, char *argv[])
{
    QApplication a(argc, argv);

    MainWindow w;
    //audioWindow audio;
    w.setWindowFlags(Qt::CustomizeWindowHint);
    w.show();
    //audio.show();

    return a.exec();
}
