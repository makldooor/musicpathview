#ifndef IMAGEFROMUSIC_H
#define IMAGEFROMUSIC_H

/*QT INCLUDES*/
#include <QObject>
#include <QtQml/qqmlregistration.h>
#include <QImage>
#include <QString>
#include <QDebug>
#include <QUrl>


/*TAG LIB INCLUDES*/
#include "tpropertymap.h"
#include "tstringlist.h"
#include "tvariant.h"
#include "fileref.h"
#include "tag.h"



extern QImage img_m;

class imagefromusic : public QObject
{
    Q_OBJECT
    QML_NAMED_ELEMENT(ImageCreation)
public:
    explicit imagefromusic(QObject* parent = nullptr);
    Q_INVOKABLE void seturl(QUrl str);
    Q_INVOKABLE void createimage();
private:
    std::string str;
};

#endif // IMAGEFROMUSIC_H
