.class public interface abstract Lorg/schabi/newpipe/extractor/InfoItemExtractor;
.super Ljava/lang/Object;
.source "InfoItemExtractor.java"


# virtual methods
.method public abstract getName()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/schabi/newpipe/extractor/exceptions/ParsingException;
        }
    .end annotation
.end method

.method public abstract getThumbnailUrl()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/schabi/newpipe/extractor/exceptions/ParsingException;
        }
    .end annotation
.end method

.method public abstract getUrl()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/schabi/newpipe/extractor/exceptions/ParsingException;
        }
    .end annotation
.end method
