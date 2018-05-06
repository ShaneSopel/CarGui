#ifndef MAINWINDOW_H
#define MAINWINDOW_H

#include <QMainWindow>

namespace Ui {
class MainWindow;
}

class MainWindow : public QMainWindow
{
    Q_OBJECT

public:
    explicit MainWindow(QWidget *parent = 0);
    void rotateLabel();
    ~MainWindow();

private slots:
    void on_leftbutton_clicked();
    void on_rightbutton_clicked();
    void on_exitbutton_clicked();

private:
    Ui::MainWindow *ui;
};

#endif // MAINWINDOW_H
