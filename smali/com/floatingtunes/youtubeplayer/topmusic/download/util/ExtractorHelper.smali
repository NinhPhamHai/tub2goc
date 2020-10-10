.class public final Lcom/floatingtunes/youtubeplayer/topmusic/download/util/ExtractorHelper;
.super Ljava/lang/Object;
.source "ExtractorHelper.java"


# static fields
.field private static final cache:Lcom/floatingtunes/youtubeplayer/topmusic/download/InfoCache;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 50
    invoke-static {}, Lcom/floatingtunes/youtubeplayer/topmusic/download/InfoCache;->getInstance()Lcom/floatingtunes/youtubeplayer/topmusic/download/InfoCache;

    move-result-object v0

    sput-object v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/util/ExtractorHelper;->cache:Lcom/floatingtunes/youtubeplayer/topmusic/download/InfoCache;

    return-void
.end method

.method private static checkCache(ZILjava/lang/String;Lorg/schabi/newpipe/extractor/InfoItem$InfoType;Lio/reactivex/Single;)Lio/reactivex/Single;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<I:",
            "Lorg/schabi/newpipe/extractor/Info;",
            ">(ZI",
            "Ljava/lang/String;",
            "Lorg/schabi/newpipe/extractor/InfoItem$InfoType;",
            "Lio/reactivex/Single<",
            "TI;>;)",
            "Lio/reactivex/Single<",
            "TI;>;"
        }
    .end annotation

    .line 186
    invoke-static {p1}, Lcom/floatingtunes/youtubeplayer/topmusic/download/util/ExtractorHelper;->checkServiceId(I)V

    .line 187
    new-instance v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/util/-$$Lambda$ExtractorHelper$wbeu3y-pq771_GzePjr6RHoknGk;

    invoke-direct {v0, p1, p2, p3}, Lcom/floatingtunes/youtubeplayer/topmusic/download/util/-$$Lambda$ExtractorHelper$wbeu3y-pq771_GzePjr6RHoknGk;-><init>(ILjava/lang/String;Lorg/schabi/newpipe/extractor/InfoItem$InfoType;)V

    invoke-virtual {p4, v0}, Lio/reactivex/Single;->doOnSuccess(Lio/reactivex/functions/Consumer;)Lio/reactivex/Single;

    move-result-object p4

    if-eqz p0, :cond_0

    .line 191
    sget-object p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/util/ExtractorHelper;->cache:Lcom/floatingtunes/youtubeplayer/topmusic/download/InfoCache;

    invoke-virtual {p0, p1, p2, p3}, Lcom/floatingtunes/youtubeplayer/topmusic/download/InfoCache;->removeInfo(ILjava/lang/String;Lorg/schabi/newpipe/extractor/InfoItem$InfoType;)V

    goto :goto_0

    .line 194
    :cond_0
    invoke-static {p1, p2, p3}, Lcom/floatingtunes/youtubeplayer/topmusic/download/util/ExtractorHelper;->loadFromCache(ILjava/lang/String;Lorg/schabi/newpipe/extractor/InfoItem$InfoType;)Lio/reactivex/Maybe;

    move-result-object p0

    .line 195
    invoke-virtual {p4}, Lio/reactivex/Single;->toMaybe()Lio/reactivex/Maybe;

    move-result-object p1

    .line 194
    invoke-static {p0, p1}, Lio/reactivex/Maybe;->concat(Lio/reactivex/MaybeSource;Lio/reactivex/MaybeSource;)Lio/reactivex/Flowable;

    move-result-object p0

    .line 196
    invoke-virtual {p0}, Lio/reactivex/Flowable;->firstElement()Lio/reactivex/Maybe;

    move-result-object p0

    .line 197
    invoke-virtual {p0}, Lio/reactivex/Maybe;->toSingle()Lio/reactivex/Single;

    move-result-object p4

    :goto_0
    return-object p4
.end method

.method private static checkServiceId(I)V
    .locals 1

    const/4 v0, -0x1

    if-eq p0, v0, :cond_0

    return-void

    .line 58
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "serviceId is NO_SERVICE_ID"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getStreamInfo(ILjava/lang/String;Z)Lio/reactivex/Single;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Z)",
            "Lio/reactivex/Single<",
            "Lorg/schabi/newpipe/extractor/stream/StreamInfo;",
            ">;"
        }
    .end annotation

    .line 104
    invoke-static {p0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/util/ExtractorHelper;->checkServiceId(I)V

    .line 105
    sget-object v0, Lorg/schabi/newpipe/extractor/InfoItem$InfoType;->STREAM:Lorg/schabi/newpipe/extractor/InfoItem$InfoType;

    new-instance v1, Lcom/floatingtunes/youtubeplayer/topmusic/download/util/-$$Lambda$ExtractorHelper$GzumpEoWedDOQYZiBWTqYhmfLlE;

    invoke-direct {v1, p0, p1}, Lcom/floatingtunes/youtubeplayer/topmusic/download/util/-$$Lambda$ExtractorHelper$GzumpEoWedDOQYZiBWTqYhmfLlE;-><init>(ILjava/lang/String;)V

    invoke-static {v1}, Lio/reactivex/Single;->fromCallable(Ljava/util/concurrent/Callable;)Lio/reactivex/Single;

    move-result-object v1

    invoke-static {p2, p0, p1, v0, v1}, Lcom/floatingtunes/youtubeplayer/topmusic/download/util/ExtractorHelper;->checkCache(ZILjava/lang/String;Lorg/schabi/newpipe/extractor/InfoItem$InfoType;Lio/reactivex/Single;)Lio/reactivex/Single;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$checkCache$12(ILjava/lang/String;Lorg/schabi/newpipe/extractor/InfoItem$InfoType;Lorg/schabi/newpipe/extractor/Info;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 187
    sget-object v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/util/ExtractorHelper;->cache:Lcom/floatingtunes/youtubeplayer/topmusic/download/InfoCache;

    invoke-virtual {v0, p0, p1, p3, p2}, Lcom/floatingtunes/youtubeplayer/topmusic/download/InfoCache;->putInfo(ILjava/lang/String;Lorg/schabi/newpipe/extractor/Info;Lorg/schabi/newpipe/extractor/InfoItem$InfoType;)V

    return-void
.end method

.method static synthetic lambda$getStreamInfo$3(ILjava/lang/String;)Lorg/schabi/newpipe/extractor/stream/StreamInfo;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 106
    invoke-static {p0}, Lorg/schabi/newpipe/extractor/NewPipe;->getService(I)Lorg/schabi/newpipe/extractor/StreamingService;

    move-result-object p0

    invoke-static {p0, p1}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->getInfo(Lorg/schabi/newpipe/extractor/StreamingService;Ljava/lang/String;)Lorg/schabi/newpipe/extractor/stream/StreamInfo;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$loadFromCache$13(ILjava/lang/String;Lorg/schabi/newpipe/extractor/InfoItem$InfoType;)Lio/reactivex/MaybeSource;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 210
    sget-object v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/util/ExtractorHelper;->cache:Lcom/floatingtunes/youtubeplayer/topmusic/download/InfoCache;

    invoke-virtual {v0, p0, p1, p2}, Lcom/floatingtunes/youtubeplayer/topmusic/download/InfoCache;->getFromKey(ILjava/lang/String;Lorg/schabi/newpipe/extractor/InfoItem$InfoType;)Lorg/schabi/newpipe/extractor/Info;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 215
    invoke-static {p0}, Lio/reactivex/Maybe;->just(Ljava/lang/Object;)Lio/reactivex/Maybe;

    move-result-object p0

    return-object p0

    .line 218
    :cond_0
    invoke-static {}, Lio/reactivex/Maybe;->empty()Lio/reactivex/Maybe;

    move-result-object p0

    return-object p0
.end method

.method public static loadFromCache(ILjava/lang/String;Lorg/schabi/newpipe/extractor/InfoItem$InfoType;)Lio/reactivex/Maybe;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<I:",
            "Lorg/schabi/newpipe/extractor/Info;",
            ">(I",
            "Ljava/lang/String;",
            "Lorg/schabi/newpipe/extractor/InfoItem$InfoType;",
            ")",
            "Lio/reactivex/Maybe<",
            "TI;>;"
        }
    .end annotation

    .line 207
    invoke-static {p0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/util/ExtractorHelper;->checkServiceId(I)V

    .line 208
    new-instance v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/util/-$$Lambda$ExtractorHelper$X1Zufbkfea8Sc1P79WitGedrPec;

    invoke-direct {v0, p0, p1, p2}, Lcom/floatingtunes/youtubeplayer/topmusic/download/util/-$$Lambda$ExtractorHelper$X1Zufbkfea8Sc1P79WitGedrPec;-><init>(ILjava/lang/String;Lorg/schabi/newpipe/extractor/InfoItem$InfoType;)V

    invoke-static {v0}, Lio/reactivex/Maybe;->defer(Ljava/util/concurrent/Callable;)Lio/reactivex/Maybe;

    move-result-object p0

    return-object p0
.end method
