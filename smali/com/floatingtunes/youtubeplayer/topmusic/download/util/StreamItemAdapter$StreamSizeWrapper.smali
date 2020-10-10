.class public Lcom/floatingtunes/youtubeplayer/topmusic/download/util/StreamItemAdapter$StreamSizeWrapper;
.super Ljava/lang/Object;
.source "StreamItemAdapter.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/floatingtunes/youtubeplayer/topmusic/download/util/StreamItemAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StreamSizeWrapper"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lorg/schabi/newpipe/extractor/stream/Stream;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final EMPTY:Lcom/floatingtunes/youtubeplayer/topmusic/download/util/StreamItemAdapter$StreamSizeWrapper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/floatingtunes/youtubeplayer/topmusic/download/util/StreamItemAdapter$StreamSizeWrapper<",
            "Lorg/schabi/newpipe/extractor/stream/Stream;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final streamSizes:[J

.field private final streamsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final unknownSize:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 157
    new-instance v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/util/StreamItemAdapter$StreamSizeWrapper;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/floatingtunes/youtubeplayer/topmusic/download/util/StreamItemAdapter$StreamSizeWrapper;-><init>(Ljava/util/List;Landroid/content/Context;)V

    sput-object v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/util/StreamItemAdapter$StreamSizeWrapper;->EMPTY:Lcom/floatingtunes/youtubeplayer/topmusic/download/util/StreamItemAdapter$StreamSizeWrapper;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Landroid/content/Context;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .line 162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    goto :goto_0

    .line 165
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/util/StreamItemAdapter$StreamSizeWrapper;->streamsList:Ljava/util/List;

    .line 166
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/util/StreamItemAdapter$StreamSizeWrapper;->streamsList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [J

    iput-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/util/StreamItemAdapter$StreamSizeWrapper;->streamSizes:[J

    if-nez p2, :cond_1

    const-string p1, "--.-"

    goto :goto_1

    :cond_1
    const p1, 0x7f110301

    .line 167
    invoke-virtual {p2, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    :goto_1
    iput-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/util/StreamItemAdapter$StreamSizeWrapper;->unknownSize:Ljava/lang/String;

    const/4 p1, 0x0

    .line 169
    :goto_2
    iget-object p2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/util/StreamItemAdapter$StreamSizeWrapper;->streamSizes:[J

    array-length v0, p2

    if-ge p1, v0, :cond_2

    const-wide/16 v0, -0x2

    aput-wide v0, p2, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method

.method public static empty()Lcom/floatingtunes/youtubeplayer/topmusic/download/util/StreamItemAdapter$StreamSizeWrapper;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Lorg/schabi/newpipe/extractor/stream/Stream;",
            ">()",
            "Lcom/floatingtunes/youtubeplayer/topmusic/download/util/StreamItemAdapter$StreamSizeWrapper<",
            "TX;>;"
        }
    .end annotation

    .line 240
    sget-object v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/util/StreamItemAdapter$StreamSizeWrapper;->EMPTY:Lcom/floatingtunes/youtubeplayer/topmusic/download/util/StreamItemAdapter$StreamSizeWrapper;

    return-object v0
.end method

.method public static fetchSizeForWrapper(Lcom/floatingtunes/youtubeplayer/topmusic/download/util/StreamItemAdapter$StreamSizeWrapper;)Lio/reactivex/Single;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Lorg/schabi/newpipe/extractor/stream/Stream;",
            ">(",
            "Lcom/floatingtunes/youtubeplayer/topmusic/download/util/StreamItemAdapter$StreamSizeWrapper<",
            "TX;>;)",
            "Lio/reactivex/Single<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 179
    new-instance v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/util/-$$Lambda$StreamItemAdapter$StreamSizeWrapper$E5LIp1ecLiLkRswb4nDt1Z607t0;

    invoke-direct {v0, p0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/util/-$$Lambda$StreamItemAdapter$StreamSizeWrapper$E5LIp1ecLiLkRswb4nDt1Z607t0;-><init>(Lcom/floatingtunes/youtubeplayer/topmusic/download/util/StreamItemAdapter$StreamSizeWrapper;)V

    .line 197
    invoke-static {v0}, Lio/reactivex/Single;->fromCallable(Ljava/util/concurrent/Callable;)Lio/reactivex/Single;

    move-result-object p0

    .line 198
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/reactivex/Single;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object p0

    .line 199
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/reactivex/Single;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object p0

    const/4 v0, 0x1

    .line 200
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/reactivex/Single;->onErrorReturnItem(Ljava/lang/Object;)Lio/reactivex/Single;

    move-result-object p0

    return-object p0
.end method

.method private formatSize(J)Ljava/lang/String;
    .locals 3

    const-wide/16 v0, -0x1

    cmp-long v2, p1, v0

    if-lez v2, :cond_0

    .line 225
    invoke-static {p1, p2}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/util/Utility;->formatBytes(J)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 227
    :cond_0
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/util/StreamItemAdapter$StreamSizeWrapper;->unknownSize:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic lambda$fetchSizeForWrapper$0(Lcom/floatingtunes/youtubeplayer/topmusic/download/util/StreamItemAdapter$StreamSizeWrapper;)Ljava/lang/Boolean;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 181
    invoke-virtual {p0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/util/StreamItemAdapter$StreamSizeWrapper;->getStreamsList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/schabi/newpipe/extractor/stream/Stream;

    .line 183
    :try_start_0
    invoke-virtual {p0, v2}, Lcom/floatingtunes/youtubeplayer/topmusic/download/util/StreamItemAdapter$StreamSizeWrapper;->getSizeInBytes(Lorg/schabi/newpipe/extractor/stream/Stream;)J

    move-result-wide v3

    const-wide/16 v5, -0x2

    cmp-long v7, v3, v5

    if-lez v7, :cond_0

    goto :goto_0

    .line 187
    :cond_0
    invoke-static {}, Lcom/floatingtunes/youtubeplayer/topmusic/download/Downloader;->getInstance()Lcom/floatingtunes/youtubeplayer/topmusic/download/Downloader;

    move-result-object v3

    invoke-virtual {v2}, Lorg/schabi/newpipe/extractor/stream/Stream;->getUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/floatingtunes/youtubeplayer/topmusic/download/Downloader;->getContentLength(Ljava/lang/String;)J

    move-result-wide v3

    .line 188
    invoke-virtual {p0, v2, v3, v4}, Lcom/floatingtunes/youtubeplayer/topmusic/download/util/StreamItemAdapter$StreamSizeWrapper;->setSize(Lorg/schabi/newpipe/extractor/stream/Stream;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    goto :goto_0

    :catch_0
    move-exception v2

    .line 191
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 194
    :cond_1
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getFormattedSize(I)Ljava/lang/String;
    .locals 2

    .line 216
    invoke-virtual {p0, p1}, Lcom/floatingtunes/youtubeplayer/topmusic/download/util/StreamItemAdapter$StreamSizeWrapper;->getSizeInBytes(I)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/floatingtunes/youtubeplayer/topmusic/download/util/StreamItemAdapter$StreamSizeWrapper;->formatSize(J)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getSizeInBytes(I)J
    .locals 3

    .line 208
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/util/StreamItemAdapter$StreamSizeWrapper;->streamSizes:[J

    aget-wide v1, v0, p1

    return-wide v1
.end method

.method public getSizeInBytes(Lorg/schabi/newpipe/extractor/stream/Stream;)J
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)J"
        }
    .end annotation

    .line 212
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/util/StreamItemAdapter$StreamSizeWrapper;->streamSizes:[J

    iget-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/util/StreamItemAdapter$StreamSizeWrapper;->streamsList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    aget-wide v1, v0, p1

    return-wide v1
.end method

.method public getStreamsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 204
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/util/StreamItemAdapter$StreamSizeWrapper;->streamsList:Ljava/util/List;

    return-object v0
.end method

.method public setSize(Lorg/schabi/newpipe/extractor/stream/Stream;J)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;J)V"
        }
    .end annotation

    .line 235
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/util/StreamItemAdapter$StreamSizeWrapper;->streamSizes:[J

    iget-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/util/StreamItemAdapter$StreamSizeWrapper;->streamsList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    aput-wide p2, v0, p1

    return-void
.end method
