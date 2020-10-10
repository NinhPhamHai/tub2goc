.class public Lorg/schabi/newpipe/extractor/stream/StreamInfoItemsCollector;
.super Lorg/schabi/newpipe/extractor/InfoItemsCollector;
.source "StreamInfoItemsCollector.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/schabi/newpipe/extractor/InfoItemsCollector<",
        "Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;",
        "Lorg/schabi/newpipe/extractor/stream/StreamInfoItemExtractor;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 34
    invoke-direct {p0, p1}, Lorg/schabi/newpipe/extractor/InfoItemsCollector;-><init>(I)V

    return-void
.end method


# virtual methods
.method public commit(Lorg/schabi/newpipe/extractor/stream/StreamInfoItemExtractor;)V
    .locals 0

    .line 89
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/extractor/stream/StreamInfoItemsCollector;->extract(Lorg/schabi/newpipe/extractor/stream/StreamInfoItemExtractor;)Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/extractor/InfoItemsCollector;->addItem(Lorg/schabi/newpipe/extractor/InfoItem;)V
    :try_end_0
    .catch Lorg/schabi/newpipe/extractor/exceptions/FoundAdException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 93
    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/extractor/InfoItemsCollector;->addError(Ljava/lang/Exception;)V

    :catch_1
    :goto_0
    return-void
.end method

.method public extract(Lorg/schabi/newpipe/extractor/stream/StreamInfoItemExtractor;)Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/schabi/newpipe/extractor/exceptions/ParsingException;
        }
    .end annotation

    .line 39
    invoke-interface {p1}, Lorg/schabi/newpipe/extractor/stream/StreamInfoItemExtractor;->isAd()Z

    move-result v0

    if-nez v0, :cond_0

    .line 44
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/InfoItemsCollector;->getServiceId()I

    move-result v0

    .line 45
    invoke-interface {p1}, Lorg/schabi/newpipe/extractor/InfoItemExtractor;->getUrl()Ljava/lang/String;

    move-result-object v1

    .line 46
    invoke-interface {p1}, Lorg/schabi/newpipe/extractor/InfoItemExtractor;->getName()Ljava/lang/String;

    move-result-object v2

    .line 47
    invoke-interface {p1}, Lorg/schabi/newpipe/extractor/stream/StreamInfoItemExtractor;->getStreamType()Lorg/schabi/newpipe/extractor/stream/StreamType;

    move-result-object v3

    .line 49
    new-instance v4, Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;

    invoke-direct {v4, v0, v1, v2, v3}, Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;-><init>(ILjava/lang/String;Ljava/lang/String;Lorg/schabi/newpipe/extractor/stream/StreamType;)V

    .line 54
    :try_start_0
    invoke-interface {p1}, Lorg/schabi/newpipe/extractor/stream/StreamInfoItemExtractor;->getDuration()J

    move-result-wide v0

    invoke-virtual {v4, v0, v1}, Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;->setDuration(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 56
    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/extractor/InfoItemsCollector;->addError(Ljava/lang/Exception;)V

    .line 59
    :goto_0
    :try_start_1
    invoke-interface {p1}, Lorg/schabi/newpipe/extractor/stream/StreamInfoItemExtractor;->getUploaderName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;->setUploaderName(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 61
    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/extractor/InfoItemsCollector;->addError(Ljava/lang/Exception;)V

    .line 64
    :goto_1
    :try_start_2
    invoke-interface {p1}, Lorg/schabi/newpipe/extractor/stream/StreamInfoItemExtractor;->getUploadDate()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;->setUploadDate(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v0

    .line 66
    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/extractor/InfoItemsCollector;->addError(Ljava/lang/Exception;)V

    .line 69
    :goto_2
    :try_start_3
    invoke-interface {p1}, Lorg/schabi/newpipe/extractor/stream/StreamInfoItemExtractor;->getViewCount()J

    move-result-wide v0

    invoke-virtual {v4, v0, v1}, Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;->setViewCount(J)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_3

    :catch_3
    move-exception v0

    .line 71
    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/extractor/InfoItemsCollector;->addError(Ljava/lang/Exception;)V

    .line 74
    :goto_3
    :try_start_4
    invoke-interface {p1}, Lorg/schabi/newpipe/extractor/InfoItemExtractor;->getThumbnailUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lorg/schabi/newpipe/extractor/InfoItem;->setThumbnailUrl(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_4

    :catch_4
    move-exception v0

    .line 76
    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/extractor/InfoItemsCollector;->addError(Ljava/lang/Exception;)V

    .line 79
    :goto_4
    :try_start_5
    invoke-interface {p1}, Lorg/schabi/newpipe/extractor/stream/StreamInfoItemExtractor;->getUploaderUrl()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;->setUploaderUrl(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    goto :goto_5

    :catch_5
    move-exception p1

    .line 81
    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/extractor/InfoItemsCollector;->addError(Ljava/lang/Exception;)V

    :goto_5
    return-object v4

    .line 40
    :cond_0
    new-instance p1, Lorg/schabi/newpipe/extractor/exceptions/FoundAdException;

    const-string v0, "Found ad"

    invoke-direct {p1, v0}, Lorg/schabi/newpipe/extractor/exceptions/FoundAdException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
