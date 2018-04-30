#include "mainwindow.h"
#include "ui_mainwindow.h"

MainWindow::MainWindow(QWidget *parent) :
    QMainWindow(parent),
    ui(new Ui::MainWindow)
{
    ui->setupUi(this);

    setStyleSheet("background-color: black;");

    QPixmap fuelguage("/home/shane/carGui/images/fuelguage.png");
    ui->fuelGauge->setPixmap(fuelguage);

    QPixmap Tachometer("/home/shane/carGui/images/tachometer1.png");
    ui->tachometer->setPixmap(Tachometer);

    QPixmap Speedometer("/home/shane/carGui/images/odometer.png");
    ui->speedometer->setPixmap(Speedometer);

    QPixmap rightIndicator("/home/shane/carGui/images/turn_indicator.png");
    ui->rightInd->setPixmap(rightIndicator);

    QPixmap leftIndicator("/home/shane/carGui/images/turn_indicator_left.png");
    ui->leftInd->setPixmap(leftIndicator);

}

MainWindow::~MainWindow()
{
    delete ui;
}
