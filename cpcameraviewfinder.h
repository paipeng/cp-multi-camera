#ifndef CPCAMERAVIEWFINDER_H
#define CPCAMERAVIEWFINDER_H

#include <QCameraViewfinder>

class CPCameraViewfinder : public QCameraViewfinder
{
    Q_OBJECT
public:
    CPCameraViewfinder(QWidget *parent = nullptr);

protected:
    void paintEvent(QPaintEvent* event) override;
};

#endif // CPCAMERAVIEWFINDER_H
