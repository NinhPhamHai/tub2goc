.class public Lch/blinkenlights/bastp/RawFile;
.super Lch/blinkenlights/bastp/Common;
.source "RawFile.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Lch/blinkenlights/bastp/Common;-><init>()V

    return-void
.end method


# virtual methods
.method public getTags(Ljava/io/RandomAccessFile;)Ljava/util/HashMap;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 31
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    return-object p1
.end method
