#ifndef TST_BULLET_H
#define TST_BULLET_H

#include "testsuits.h"

#include <QtTest>

class BulletTest : public TestSuits
{
    Q_OBJECT

public:
    BulletTest();

private slots:
    void testCase1();
};

#endif // TST_BULLET_H
