.class public interface abstract Lch/blinkenlights/bastp/PageInfo$PageParser;
.super Ljava/lang/Object;
.source "PageInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lch/blinkenlights/bastp/PageInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "PageParser"
.end annotation


# virtual methods
.method public abstract parse_stream_page(Ljava/io/RandomAccessFile;J)Lch/blinkenlights/bastp/PageInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
