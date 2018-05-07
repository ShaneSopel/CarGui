#include "mainwindow.h"
#include "ui_mainwindow.h"
#include "qpainter.h"
#include <QtQml/QQmlEngine>
#include <QtQuick/QQuickView>
#include <QtQml/QQmlComponent>
#include <QtQml/QQmlEngine>
#include <QtQml/QQmlContext>
#include <QGraphicsObject>
#include <QWidget>
#include <QCoreApplication>
#include <QDir>
#include <QFileInfo>
#include <QDebug>
#include <QColor>

MainWindow::MainWindow(QWidget *parent) :
    QMainWindow(parent),
    ui(new Ui::MainWindow)
{
    ui->setupUi(this);
    setStyleSheet("background-color: black;");

    QSpinBox *spinner = new QSpinBox(this);
    QSlider *slider = new QSlider(Qt::Horizontal);
    spinner->setRange(0,10);
    slider->setRange(0,100);
    //QObject::connect(spinner, SIGNAL(valueChanged(int)),slider, SLOT(setValue(int)));
    spinner->setValue(10);


    QPixmap fuelguage("/home/shane/carGui/images/fuelguage.png");
    ui->fuelGauge->setPixmap(fuelguage);

    QPixmap Tachometer("/home/shane/carGui/images/tachometer.png");
    ui->tachometer->setPixmap(Tachometer);

    QPixmap Speedometer("/home/shane/carGui/images/odometer.png");
    ui->speedometer->setPixmap(Speedometer);

    QPixmap rightIndicator("/home/shane/carGui/images/turn_indicator.png");
    ui->rightInd->setPixmap(rightIndicator);

    QPixmap leftIndicator("/home/shane/carGui/images/turn_indicator_left.png");
    ui->leftInd->setPixmap(leftIndicator);

    //QPixmap needleTach("/home/shane/carGui/images/needle.png");
    //ui->needletach->setPixmap(needleTach);

    QPixmap needleOdo("/home/shane/carGui/images/needle.png");
    ui->needleodo->setPixmap(needleOdo);


}

MainWindow::~MainWindow()
{
    delete ui;
}

void rotatelabel()
{

}

void MainWindow::on_leftbutton_clicked()
{
    QColor bg_color(0, 0, 0, 0);
    QPainter p;
    QPixmap original("/home/shane/carGui/images/needle.png");
    // Original rotated once to 30 degrees
    QPixmap test1(original.size());
    test1.fill(Qt::transparent);
    p.begin(&test1);
    p.translate(ui->tachometer->width()/4 , ui->tachometer->height()/4);
    p.rotate(45.0);
    p.translate(-ui->tachometer->width()/4, -ui->tachometer->height()/4);
    p.setBackground(bg_color);
    p.drawPixmap(250, 120, 115, 193, original);
    p.end();
    //ui->needletach->setPixmap(test1);

}

void MainWindow::on_rightbutton_clicked()
{
    QColor bg_color(0, 0, 0, 0);
    QPainter p;
    QPixmap original("/home/shane/carGui/images/needle.png");
    // Original rotated once to 30 degrees
    QPixmap test1(original.size());
    test1.fill(Qt::transparent);
    p.begin(&test1);
    p.translate(original.width() / 4, original.height() / 4);
    p.rotate(0);
    p.translate(-original.width() / 4, -original.height() / 4);
    p.setBackground(bg_color);
    p.drawPixmap(0, 0, original);
    p.end();
   // ui->needletach->setPixmap(test1);
}

void MainWindow::on_exitbutton_clicked()
{
    QApplication::exit();
}


