.class public Lorg/schabi/newpipe/extractor/utils/ExtractorHelper;
.super Ljava/lang/Object;
.source "ExtractorHelper.java"


# direct methods
.method public static getRelatedVideosOrLogError(Lorg/schabi/newpipe/extractor/stream/StreamInfo;Lorg/schabi/newpipe/extractor/stream/StreamExtractor;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/schabi/newpipe/extractor/stream/StreamInfo;",
            "Lorg/schabi/newpipe/extractor/stream/StreamExtractor;",
            ")",
            "Ljava/util/List<",
            "Lorg/schabi/newpipe/extractor/InfoItem;",
            ">;"
        }
    .end annotation

    .line 33
    :try_start_0
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/stream/StreamExtractor;->getRelatedStreams()Lorg/schabi/newpipe/extractor/stream/StreamInfoItemsCollector;

    move-result-object p1

    if-nez p1, :cond_0

    .line 34
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 35
    :cond_0
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/InfoItemsCollector;->getErrors()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/extractor/Info;->addAllErrors(Ljava/util/Collection;)V

    .line 38
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/InfoItemsCollector;->getItems()Ljava/util/List;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p1

    .line 40
    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/extractor/Info;->addError(Ljava/lang/Throwable;)V

    .line 41
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
