.class public Lorg/schabi/newpipe/extractor/NewPipe;
.super Ljava/lang/Object;
.source "NewPipe.java"


# static fields
.field private static downloader:Lorg/schabi/newpipe/extractor/Downloader;

.field private static localization:Lorg/schabi/newpipe/extractor/utils/Localization;


# direct methods
.method public static getDownloader()Lorg/schabi/newpipe/extractor/Downloader;
    .locals 1

    .line 44
    sget-object v0, Lorg/schabi/newpipe/extractor/NewPipe;->downloader:Lorg/schabi/newpipe/extractor/Downloader;

    return-object v0
.end method

.method public static getPreferredLocalization()Lorg/schabi/newpipe/extractor/utils/Localization;
    .locals 1

    .line 107
    sget-object v0, Lorg/schabi/newpipe/extractor/NewPipe;->localization:Lorg/schabi/newpipe/extractor/utils/Localization;

    return-object v0
.end method

.method public static getService(I)Lorg/schabi/newpipe/extractor/StreamingService;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/schabi/newpipe/extractor/exceptions/ExtractionException;
        }
    .end annotation

    .line 56
    invoke-static {}, Lorg/schabi/newpipe/extractor/ServiceList;->all()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/schabi/newpipe/extractor/StreamingService;

    .line 57
    invoke-virtual {v1}, Lorg/schabi/newpipe/extractor/StreamingService;->getServiceId()I

    move-result v2

    if-ne v2, p0, :cond_0

    return-object v1

    .line 61
    :cond_1
    new-instance v0, Lorg/schabi/newpipe/extractor/exceptions/ExtractionException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "There\'s no service with the id = \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "\""

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/schabi/newpipe/extractor/exceptions/ExtractionException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static init(Lorg/schabi/newpipe/extractor/Downloader;Lorg/schabi/newpipe/extractor/utils/Localization;)V
    .locals 0

    .line 39
    sput-object p0, Lorg/schabi/newpipe/extractor/NewPipe;->downloader:Lorg/schabi/newpipe/extractor/Downloader;

    .line 40
    sput-object p1, Lorg/schabi/newpipe/extractor/NewPipe;->localization:Lorg/schabi/newpipe/extractor/utils/Localization;

    return-void
.end method
