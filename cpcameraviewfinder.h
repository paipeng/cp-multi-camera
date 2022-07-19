#ifndef CPCAMERAVIEWFINDER_H
#define CPCAMERAVIEWFINDER_H

#include <QCameraViewfinder>

#if defined(CPMULTICAMERA_LIBRARY)
#  define CPMULTICAMERA_EXPORT Q_DECL_EXPORT
#else
#  define CPMULTICAMERA_EXPORT
#endif

class CPMULTICAMERA_EXPORT CPCameraViewfinder : public QCameraViewfinder
{
    Q_OBJECT
public:
    CPCameraViewfinder(QWidget *parent = nullptr);
    void setText(const QString &text);

protected:
    void paintEvent(QPaintEvent* event) override;
};

#endif // CPCAMERAVIEWFINDER_H
