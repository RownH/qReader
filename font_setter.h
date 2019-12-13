#ifndef FONT_SETTER_H
#define FONT_SETTER_H

#include <QObject>
#include<QColor>
#include<QFont>
class font_setter
{

public:
    explicit font_setter();
    int getFontSize()const;
    QString getFontColor()const;
    void setFontSize(int Size);
    void setFontColor(QString Color);

    int getAlignment()const;
    void setAlignment(int Alignment);

    double getWordSpcing()const;
    void setWordSpcing(double word_spcing);
private:
    int m_fontSize;
    QString m_fontColor;

    int m_alignment;//对齐方式
    double m_word_spacing;//字距
};

#endif // FONT_SETTER_H
