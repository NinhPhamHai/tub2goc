.class public Lorg/greenrobot/greendao/query/Join;
.super Ljava/lang/Object;
.source "Join.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<SRC:",
        "Ljava/lang/Object;",
        "DST:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field final daoDestination:Lorg/greenrobot/greendao/AbstractDao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/greenrobot/greendao/AbstractDao<",
            "TDST;*>;"
        }
    .end annotation
.end field

.field final joinPropertyDestination:Lorg/greenrobot/greendao/Property;

.field final joinPropertySource:Lorg/greenrobot/greendao/Property;

.field final sourceTablePrefix:Ljava/lang/String;

.field final tablePrefix:Ljava/lang/String;

.field final whereCollector:Lorg/greenrobot/greendao/query/WhereCollector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/greenrobot/greendao/query/WhereCollector<",
            "TDST;>;"
        }
    .end annotation
.end field
