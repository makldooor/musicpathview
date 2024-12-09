#include "imagefromusic.h"

imagefromusic::imagefromusic(QObject *parent)
    : QObject(parent) {}

void imagefromusic::seturl(QUrl str)
{
    this->str = "Yeat-ILUV-(JustNaija.com).mp3";  // str.path().toStdString();
}


void imagefromusic::createimage()
{
    TagLib::FileRef f(str.c_str());


    // TagLib::StringList names = f.complexPropertyKeys();



    // for (const auto &name : names)
    // {
    //     const auto& properties = f.complexProperties(name);

    //     for (const auto &property : properties)
    //     {
    //         for (const auto &[key, value] : property)
    //         {
    //             if (value.type() == TagLib::Variant::ByteVector)
    //             {
    //                 qDebug() << "ASDASD";
    //                // img_m = QImage::fromData(reinterpret_cast<unsigned char*> (value.value<TagLib::ByteVector>().data()), value.value<TagLib::ByteVector>().size());
    //             }
    //         }
    //     }
    // }

}



