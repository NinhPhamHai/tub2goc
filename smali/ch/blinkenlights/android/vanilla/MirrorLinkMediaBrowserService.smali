.class public Lch/blinkenlights/android/vanilla/MirrorLinkMediaBrowserService;
.super Landroid/service/media/MediaBrowserService;
.source "MirrorLinkMediaBrowserService.java"

# interfaces
.implements Landroid/os/Handler$Callback;
.implements Lch/blinkenlights/android/vanilla/TimelineCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lch/blinkenlights/android/vanilla/MirrorLinkMediaBrowserService$MediaSessionCallback;,
        Lch/blinkenlights/android/vanilla/MirrorLinkMediaBrowserService$MediaID;
    }
.end annotation


# static fields
.field private static final FINISH_ICONS:[I

.field private static final SHUFFLE_ICONS:[I


# instance fields
.field private mAlbumAdapter:Lch/blinkenlights/android/vanilla/MediaAdapter;

.field private mArtistAdapter:Lch/blinkenlights/android/vanilla/MediaAdapter;

.field private mGenreAdapter:Lch/blinkenlights/android/vanilla/MediaAdapter;

.field private mHandler:Landroid/os/Handler;

.field private mLooper:Landroid/os/Looper;

.field private mMediaAdapters:[Lch/blinkenlights/android/vanilla/MediaAdapter;

.field private final mMediaRoot:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/media/browse/MediaBrowser$MediaItem;",
            ">;"
        }
    .end annotation
.end field

.field private mPlaylistAdapter:Lch/blinkenlights/android/vanilla/MediaAdapter;

.field private mQueryResult:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/media/browse/MediaBrowser$MediaItem;",
            ">;"
        }
    .end annotation
.end field

.field private mServiceStarted:Z

.field private mSession:Landroid/media/session/MediaSession;

.field private mSessionExtras:Landroid/os/Bundle;

.field private mSongAdapter:Lch/blinkenlights/android/vanilla/MediaAdapter;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v0, 0x5

    .line 692
    new-array v0, v0, [I

    sget v1, Lch/blinkenlights/android/vanilla/R$drawable;->repeat_inactive_service:I

    const/4 v2, 0x0

    aput v1, v0, v2

    sget v1, Lch/blinkenlights/android/vanilla/R$drawable;->repeat_active:I

    const/4 v3, 0x1

    aput v1, v0, v3

    sget v1, Lch/blinkenlights/android/vanilla/R$drawable;->repeat_current_active:I

    const/4 v4, 0x2

    aput v1, v0, v4

    sget v1, Lch/blinkenlights/android/vanilla/R$drawable;->stop_current_active:I

    const/4 v5, 0x3

    aput v1, v0, v5

    sget v1, Lch/blinkenlights/android/vanilla/R$drawable;->random_active:I

    const/4 v6, 0x4

    aput v1, v0, v6

    sput-object v0, Lch/blinkenlights/android/vanilla/MirrorLinkMediaBrowserService;->FINISH_ICONS:[I

    .line 699
    new-array v0, v5, [I

    sget v1, Lch/blinkenlights/android/vanilla/R$drawable;->shuffle_inactive_service:I

    aput v1, v0, v2

    sget v1, Lch/blinkenlights/android/vanilla/R$drawable;->shuffle_active:I

    aput v1, v0, v3

    sget v1, Lch/blinkenlights/android/vanilla/R$drawable;->shuffle_album_active:I

    aput v1, v0, v4

    sput-object v0, Lch/blinkenlights/android/vanilla/MirrorLinkMediaBrowserService;->SHUFFLE_ICONS:[I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 57
    invoke-direct {p0}, Landroid/service/media/MediaBrowserService;-><init>()V

    const/4 v0, 0x5

    .line 73
    new-array v0, v0, [Lch/blinkenlights/android/vanilla/MediaAdapter;

    iput-object v0, p0, Lch/blinkenlights/android/vanilla/MirrorLinkMediaBrowserService;->mMediaAdapters:[Lch/blinkenlights/android/vanilla/MediaAdapter;

    .line 74
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lch/blinkenlights/android/vanilla/MirrorLinkMediaBrowserService;->mQueryResult:Ljava/util/List;

    .line 76
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lch/blinkenlights/android/vanilla/MirrorLinkMediaBrowserService;->mMediaRoot:Ljava/util/List;

    return-void
.end method

.method static synthetic access$100(Lch/blinkenlights/android/vanilla/MirrorLinkMediaBrowserService;)Ljava/util/List;
    .locals 0

    .line 57
    iget-object p0, p0, Lch/blinkenlights/android/vanilla/MirrorLinkMediaBrowserService;->mQueryResult:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$200(Lch/blinkenlights/android/vanilla/MirrorLinkMediaBrowserService;)V
    .locals 0

    .line 57
    invoke-direct {p0}, Lch/blinkenlights/android/vanilla/MirrorLinkMediaBrowserService;->clearLimiters()V

    return-void
.end method

.method static synthetic access$300(Lch/blinkenlights/android/vanilla/MirrorLinkMediaBrowserService;)[Lch/blinkenlights/android/vanilla/MediaAdapter;
    .locals 0

    .line 57
    iget-object p0, p0, Lch/blinkenlights/android/vanilla/MirrorLinkMediaBrowserService;->mMediaAdapters:[Lch/blinkenlights/android/vanilla/MediaAdapter;

    return-object p0
.end method

.method static synthetic access$400(Lch/blinkenlights/android/vanilla/MirrorLinkMediaBrowserService;Ljava/util/List;ILch/blinkenlights/android/vanilla/MediaAdapter;)V
    .locals 0

    .line 57
    invoke-direct {p0, p1, p2, p3}, Lch/blinkenlights/android/vanilla/MirrorLinkMediaBrowserService;->runQuery(Ljava/util/List;ILch/blinkenlights/android/vanilla/MediaAdapter;)V

    return-void
.end method

.method static synthetic access$500(Lch/blinkenlights/android/vanilla/MirrorLinkMediaBrowserService;)Lch/blinkenlights/android/vanilla/MediaAdapter;
    .locals 0

    .line 57
    iget-object p0, p0, Lch/blinkenlights/android/vanilla/MirrorLinkMediaBrowserService;->mSongAdapter:Lch/blinkenlights/android/vanilla/MediaAdapter;

    return-object p0
.end method

.method static synthetic access$600(Lch/blinkenlights/android/vanilla/MirrorLinkMediaBrowserService;)Lch/blinkenlights/android/vanilla/MediaAdapter;
    .locals 0

    .line 57
    iget-object p0, p0, Lch/blinkenlights/android/vanilla/MirrorLinkMediaBrowserService;->mAlbumAdapter:Lch/blinkenlights/android/vanilla/MediaAdapter;

    return-object p0
.end method

.method static synthetic access$700(Lch/blinkenlights/android/vanilla/MirrorLinkMediaBrowserService;)Lch/blinkenlights/android/vanilla/MediaAdapter;
    .locals 0

    .line 57
    iget-object p0, p0, Lch/blinkenlights/android/vanilla/MirrorLinkMediaBrowserService;->mPlaylistAdapter:Lch/blinkenlights/android/vanilla/MediaAdapter;

    return-object p0
.end method

.method static synthetic access$800(Lch/blinkenlights/android/vanilla/MirrorLinkMediaBrowserService;)Landroid/os/Handler;
    .locals 0

    .line 57
    iget-object p0, p0, Lch/blinkenlights/android/vanilla/MirrorLinkMediaBrowserService;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method private static buildLimiterFromMediaID(Lch/blinkenlights/android/vanilla/MirrorLinkMediaBrowserService$MediaID;)Lch/blinkenlights/android/vanilla/Limiter;
    .locals 8

    .line 279
    invoke-virtual {p0}, Lch/blinkenlights/android/vanilla/MirrorLinkMediaBrowserService$MediaID;->isInvalid()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lch/blinkenlights/android/vanilla/MirrorLinkMediaBrowserService$MediaID;->isTopAdapter()Z

    move-result v0

    if-nez v0, :cond_3

    .line 280
    iget v0, p0, Lch/blinkenlights/android/vanilla/MirrorLinkMediaBrowserService$MediaID;->mType:I

    const-string v1, "%s=%d"

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v0, :cond_2

    if-eq v0, v4, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 295
    :cond_0
    new-array v0, v4, [Ljava/lang/String;

    iget-object v2, p0, Lch/blinkenlights/android/vanilla/MirrorLinkMediaBrowserService$MediaID;->mLabel:Ljava/lang/String;

    aput-object v2, v0, v3

    .line 296
    iget-wide v2, p0, Lch/blinkenlights/android/vanilla/MirrorLinkMediaBrowserService$MediaID;->mId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    .line 297
    new-instance v2, Lch/blinkenlights/android/vanilla/Limiter;

    invoke-direct {v2, v1, v0, p0}, Lch/blinkenlights/android/vanilla/Limiter;-><init>(I[Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    .line 289
    :cond_1
    new-array v0, v4, [Ljava/lang/String;

    iget-object v5, p0, Lch/blinkenlights/android/vanilla/MirrorLinkMediaBrowserService$MediaID;->mLabel:Ljava/lang/String;

    aput-object v5, v0, v3

    .line 290
    new-array v5, v2, [Ljava/lang/Object;

    const-string v6, "album_id"

    aput-object v6, v5, v3

    iget-wide v6, p0, Lch/blinkenlights/android/vanilla/MirrorLinkMediaBrowserService$MediaID;->mId:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    aput-object p0, v5, v4

    invoke-static {v1, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 291
    new-instance v1, Lch/blinkenlights/android/vanilla/Limiter;

    invoke-direct {v1, v2, v0, p0}, Lch/blinkenlights/android/vanilla/Limiter;-><init>(I[Ljava/lang/String;Ljava/lang/Object;)V

    move-object v2, v1

    goto :goto_1

    .line 283
    :cond_2
    new-array v0, v4, [Ljava/lang/String;

    iget-object v5, p0, Lch/blinkenlights/android/vanilla/MirrorLinkMediaBrowserService$MediaID;->mLabel:Ljava/lang/String;

    aput-object v5, v0, v3

    .line 284
    new-array v2, v2, [Ljava/lang/Object;

    const-string v5, "artist_id"

    aput-object v5, v2, v3

    iget-wide v5, p0, Lch/blinkenlights/android/vanilla/MirrorLinkMediaBrowserService$MediaID;->mId:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    aput-object p0, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 285
    new-instance v2, Lch/blinkenlights/android/vanilla/Limiter;

    invoke-direct {v2, v3, v0, p0}, Lch/blinkenlights/android/vanilla/Limiter;-><init>(I[Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v2, 0x0

    :goto_1
    return-object v2
.end method

.method private buildQueryFromMediaID(Lch/blinkenlights/android/vanilla/MirrorLinkMediaBrowserService$MediaID;ZZ)Lch/blinkenlights/android/vanilla/QueryTask;
    .locals 2

    .line 314
    iget v0, p1, Lch/blinkenlights/android/vanilla/MirrorLinkMediaBrowserService$MediaID;->mType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    if-eqz p2, :cond_0

    .line 315
    sget-object p2, Lch/blinkenlights/android/vanilla/Song;->EMPTY_PLAYLIST_PROJECTION:[Ljava/lang/String;

    goto :goto_0

    :cond_0
    sget-object p2, Lch/blinkenlights/android/vanilla/Song;->FILLED_PLAYLIST_PROJECTION:[Ljava/lang/String;

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    .line 317
    sget-object p2, Lch/blinkenlights/android/vanilla/Song;->EMPTY_PROJECTION:[Ljava/lang/String;

    goto :goto_0

    :cond_2
    sget-object p2, Lch/blinkenlights/android/vanilla/Song;->FILLED_PROJECTION:[Ljava/lang/String;

    :goto_0
    if-eqz p3, :cond_3

    .line 321
    iget p3, p1, Lch/blinkenlights/android/vanilla/MirrorLinkMediaBrowserService$MediaID;->mType:I

    if-eq p3, v1, :cond_3

    .line 322
    iget-object v0, p0, Lch/blinkenlights/android/vanilla/MirrorLinkMediaBrowserService;->mMediaAdapters:[Lch/blinkenlights/android/vanilla/MediaAdapter;

    aget-object p3, v0, p3

    invoke-virtual {p3, p2}, Lch/blinkenlights/android/vanilla/MediaAdapter;->buildSongQuery([Ljava/lang/String;)Lch/blinkenlights/android/vanilla/QueryTask;

    move-result-object p2

    .line 323
    iget-wide v0, p1, Lch/blinkenlights/android/vanilla/MirrorLinkMediaBrowserService$MediaID;->mId:J

    iput-wide v0, p2, Lch/blinkenlights/android/vanilla/QueryTask;->data:J

    const/4 p1, 0x4

    .line 324
    iput p1, p2, Lch/blinkenlights/android/vanilla/QueryTask;->mode:I

    goto :goto_1

    .line 326
    :cond_3
    iget p3, p1, Lch/blinkenlights/android/vanilla/MirrorLinkMediaBrowserService$MediaID;->mType:I

    iget-wide v0, p1, Lch/blinkenlights/android/vanilla/MirrorLinkMediaBrowserService$MediaID;->mId:J

    const/4 p1, 0x0

    invoke-static {p3, v0, v1, p2, p1}, Lch/blinkenlights/android/vanilla/MediaUtils;->buildQuery(IJ[Ljava/lang/String;Ljava/lang/String;)Lch/blinkenlights/android/vanilla/QueryTask;

    move-result-object p2

    const/4 p1, 0x0

    .line 327
    iput p1, p2, Lch/blinkenlights/android/vanilla/QueryTask;->mode:I

    :goto_1
    return-object p2
.end method

.method private clearLimiters()V
    .locals 5

    .line 401
    iget-object v0, p0, Lch/blinkenlights/android/vanilla/MirrorLinkMediaBrowserService;->mMediaAdapters:[Lch/blinkenlights/android/vanilla/MediaAdapter;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    const/4 v4, 0x0

    .line 402
    invoke-virtual {v3, v4}, Lch/blinkenlights/android/vanilla/MediaAdapter;->setLimiter(Lch/blinkenlights/android/vanilla/Limiter;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private getAvailableActions()J
    .locals 2

    .line 729
    invoke-static {}, Lch/blinkenlights/android/vanilla/PlaybackService;->hasInstance()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 730
    invoke-static {p0}, Lch/blinkenlights/android/vanilla/PlaybackService;->get(Landroid/content/Context;)Lch/blinkenlights/android/vanilla/PlaybackService;

    move-result-object v0

    invoke-virtual {v0}, Lch/blinkenlights/android/vanilla/PlaybackService;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 v0, 0xc7e

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0xc34

    :goto_0
    return-wide v0
.end method

.method private loadChildrenAsync(Lch/blinkenlights/android/vanilla/MirrorLinkMediaBrowserService$MediaID;Landroid/service/media/MediaBrowserService$Result;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lch/blinkenlights/android/vanilla/MirrorLinkMediaBrowserService$MediaID;",
            "Landroid/service/media/MediaBrowserService$Result<",
            "Ljava/util/List<",
            "Landroid/media/browse/MediaBrowser$MediaItem;",
            ">;>;)V"
        }
    .end annotation

    .line 337
    invoke-static {p1}, Lch/blinkenlights/android/vanilla/MirrorLinkMediaBrowserService;->buildLimiterFromMediaID(Lch/blinkenlights/android/vanilla/MirrorLinkMediaBrowserService$MediaID;)Lch/blinkenlights/android/vanilla/Limiter;

    move-result-object v0

    .line 338
    new-instance v1, Lch/blinkenlights/android/vanilla/MirrorLinkMediaBrowserService$2;

    invoke-direct {v1, p0, p1, v0, p2}, Lch/blinkenlights/android/vanilla/MirrorLinkMediaBrowserService$2;-><init>(Lch/blinkenlights/android/vanilla/MirrorLinkMediaBrowserService;Lch/blinkenlights/android/vanilla/MirrorLinkMediaBrowserService$MediaID;Lch/blinkenlights/android/vanilla/Limiter;Landroid/service/media/MediaBrowserService$Result;)V

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Void;

    .line 397
    invoke-virtual {v1, p1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private runQuery(Ljava/util/List;ILch/blinkenlights/android/vanilla/MediaAdapter;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/browse/MediaBrowser$MediaItem;",
            ">;I",
            "Lch/blinkenlights/android/vanilla/MediaAdapter;",
            ")V"
        }
    .end annotation

    .line 424
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 426
    :try_start_0
    invoke-virtual {p3}, Lch/blinkenlights/android/vanilla/MediaAdapter;->query()Landroid/database/Cursor;

    move-result-object p3

    .line 427
    invoke-virtual {p0}, Landroid/service/media/MediaBrowserService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-nez p3, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x2

    if-eq p2, v1, :cond_2

    const/4 v2, 0x3

    if-ne p2, v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v2, 0x2

    .line 434
    :goto_1
    invoke-interface {p3}, Landroid/database/Cursor;->getCount()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_2
    if-eq v5, v3, :cond_3

    .line 436
    invoke-interface {p3, v5}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 437
    invoke-interface {p3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 438
    invoke-interface {p3, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 439
    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    .line 441
    invoke-static {v0, p2, v8, v9}, Lch/blinkenlights/android/vanilla/MediaUtils;->getSongByTypeId(Landroid/content/Context;IJ)Lch/blinkenlights/android/vanilla/Song;

    move-result-object v6

    .line 442
    new-instance v10, Landroid/media/browse/MediaBrowser$MediaItem;

    new-instance v11, Landroid/media/MediaDescription$Builder;

    invoke-direct {v11}, Landroid/media/MediaDescription$Builder;-><init>()V

    .line 444
    invoke-static {p2, v8, v9, v7}, Lch/blinkenlights/android/vanilla/MirrorLinkMediaBrowserService$MediaID;->toString(IJLjava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v11, v8}, Landroid/media/MediaDescription$Builder;->setMediaId(Ljava/lang/String;)Landroid/media/MediaDescription$Builder;

    move-result-object v8

    .line 445
    invoke-virtual {v8, v7}, Landroid/media/MediaDescription$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/media/MediaDescription$Builder;

    move-result-object v7

    .line 446
    invoke-direct {p0, p2}, Lch/blinkenlights/android/vanilla/MirrorLinkMediaBrowserService;->subtitleForMediaType(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/media/MediaDescription$Builder;->setSubtitle(Ljava/lang/CharSequence;)Landroid/media/MediaDescription$Builder;

    move-result-object v7

    .line 447
    invoke-virtual {v6, v0}, Lch/blinkenlights/android/vanilla/Song;->getSmallCover(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-virtual {v7, v6}, Landroid/media/MediaDescription$Builder;->setIconBitmap(Landroid/graphics/Bitmap;)Landroid/media/MediaDescription$Builder;

    move-result-object v6

    .line 448
    invoke-virtual {v6}, Landroid/media/MediaDescription$Builder;->build()Landroid/media/MediaDescription;

    move-result-object v6

    invoke-direct {v10, v6, v2}, Landroid/media/browse/MediaBrowser$MediaItem;-><init>(Landroid/media/MediaDescription;I)V

    .line 450
    invoke-interface {p1, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 453
    :cond_3
    invoke-interface {p3}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    const-string p1, "VanillaMusic"

    const-string p2, "Failed retrieving Media"

    .line 455
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    return-void
.end method

.method private setCustomAction(Landroid/media/session/PlaybackState$Builder;)V
    .locals 6

    .line 705
    invoke-static {}, Lch/blinkenlights/android/vanilla/PlaybackService;->hasInstance()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 706
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 707
    invoke-static {p0}, Lch/blinkenlights/android/vanilla/PlaybackService;->get(Landroid/content/Context;)Lch/blinkenlights/android/vanilla/PlaybackService;

    move-result-object v1

    invoke-virtual {v1}, Lch/blinkenlights/android/vanilla/PlaybackService;->getState()I

    move-result v1

    invoke-static {v1}, Lch/blinkenlights/android/vanilla/PlaybackService;->finishAction(I)I

    move-result v1

    .line 708
    invoke-static {p0}, Lch/blinkenlights/android/vanilla/PlaybackService;->get(Landroid/content/Context;)Lch/blinkenlights/android/vanilla/PlaybackService;

    move-result-object v2

    invoke-virtual {v2}, Lch/blinkenlights/android/vanilla/PlaybackService;->getState()I

    move-result v2

    invoke-static {v2}, Lch/blinkenlights/android/vanilla/PlaybackService;->shuffleMode(I)I

    move-result v2

    .line 710
    new-instance v3, Landroid/media/session/PlaybackState$CustomAction$Builder;

    sget v4, Lch/blinkenlights/android/vanilla/R$string;->cycle_repeat_mode:I

    .line 711
    invoke-virtual {p0, v4}, Landroid/service/media/MediaBrowserService;->getString(I)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lch/blinkenlights/android/vanilla/MirrorLinkMediaBrowserService;->FINISH_ICONS:[I

    aget v1, v5, v1

    const-string v5, "ch.blinkenlights.android.vanilla.REPEAT"

    invoke-direct {v3, v5, v4, v1}, Landroid/media/session/PlaybackState$CustomAction$Builder;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 712
    invoke-virtual {v3, v0}, Landroid/media/session/PlaybackState$CustomAction$Builder;->setExtras(Landroid/os/Bundle;)Landroid/media/session/PlaybackState$CustomAction$Builder;

    move-result-object v1

    .line 713
    invoke-virtual {v1}, Landroid/media/session/PlaybackState$CustomAction$Builder;->build()Landroid/media/session/PlaybackState$CustomAction;

    move-result-object v1

    .line 710
    invoke-virtual {p1, v1}, Landroid/media/session/PlaybackState$Builder;->addCustomAction(Landroid/media/session/PlaybackState$CustomAction;)Landroid/media/session/PlaybackState$Builder;

    .line 715
    new-instance v1, Landroid/media/session/PlaybackState$CustomAction$Builder;

    sget v3, Lch/blinkenlights/android/vanilla/R$string;->cycle_shuffle_mode:I

    .line 716
    invoke-virtual {p0, v3}, Landroid/service/media/MediaBrowserService;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lch/blinkenlights/android/vanilla/MirrorLinkMediaBrowserService;->SHUFFLE_ICONS:[I

    aget v2, v4, v2

    const-string v4, "ch.blinkenlights.android.vanilla.SHUFFLE"

    invoke-direct {v1, v4, v3, v2}, Landroid/media/session/PlaybackState$CustomAction$Builder;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 717
    invoke-virtual {v1, v0}, Landroid/media/session/PlaybackState$CustomAction$Builder;->setExtras(Landroid/os/Bundle;)Landroid/media/session/PlaybackState$CustomAction$Builder;

    move-result-object v0

    .line 718
    invoke-virtual {v0}, Landroid/media/session/PlaybackState$CustomAction$Builder;->build()Landroid/media/session/PlaybackState$CustomAction;

    move-result-object v0

    .line 715
    invoke-virtual {p1, v0}, Landroid/media/session/PlaybackState$Builder;->addCustomAction(Landroid/media/session/PlaybackState$CustomAction;)Landroid/media/session/PlaybackState$Builder;

    :cond_0
    return-void
.end method

.method private setSessionActive()V
    .locals 4

    .line 480
    iget-boolean v0, p0, Lch/blinkenlights/android/vanilla/MirrorLinkMediaBrowserService;->mServiceStarted:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 484
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/service/media/MediaBrowserService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lch/blinkenlights/android/vanilla/MirrorLinkMediaBrowserService;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/service/media/MediaBrowserService;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 485
    iput-boolean v1, p0, Lch/blinkenlights/android/vanilla/MirrorLinkMediaBrowserService;->mServiceStarted:Z

    .line 488
    :cond_0
    iget-object v0, p0, Lch/blinkenlights/android/vanilla/MirrorLinkMediaBrowserService;->mSession:Landroid/media/session/MediaSession;

    invoke-virtual {v0}, Landroid/media/session/MediaSession;->isActive()Z

    move-result v0

    if-nez v0, :cond_1

    .line 489
    iget-object v0, p0, Lch/blinkenlights/android/vanilla/MirrorLinkMediaBrowserService;->mSession:Landroid/media/session/MediaSession;

    invoke-virtual {v0, v1}, Landroid/media/session/MediaSession;->setActive(Z)V

    :cond_1
    return-void
.end method

.method private setSessionInactive()V
    .locals 2

    .line 494
    iget-boolean v0, p0, Lch/blinkenlights/android/vanilla/MirrorLinkMediaBrowserService;->mServiceStarted:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 496
    invoke-virtual {p0}, Landroid/service/media/MediaBrowserService;->stopSelf()V

    .line 497
    iput-boolean v1, p0, Lch/blinkenlights/android/vanilla/MirrorLinkMediaBrowserService;->mServiceStarted:Z

    .line 500
    :cond_0
    iget-object v0, p0, Lch/blinkenlights/android/vanilla/MirrorLinkMediaBrowserService;->mSession:Landroid/media/session/MediaSession;

    invoke-virtual {v0}, Landroid/media/session/MediaSession;->isActive()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 501
    iget-object v0, p0, Lch/blinkenlights/android/vanilla/MirrorLinkMediaBrowserService;->mSession:Landroid/media/session/MediaSession;

    invoke-virtual {v0, v1}, Landroid/media/session/MediaSession;->setActive(Z)V

    :cond_1
    return-void
.end method

.method private subtitleForMediaType(I)Ljava/lang/String;
    .locals 1

    if-eqz p1, :cond_4

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const-string p1, ""

    return-object p1

    .line 416
    :cond_0
    sget p1, Lch/blinkenlights/android/vanilla/R$string;->genres:I

    invoke-virtual {p0, p1}, Landroid/service/media/MediaBrowserService;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 414
    :cond_1
    sget p1, Lch/blinkenlights/android/vanilla/R$string;->playlists:I

    invoke-virtual {p0, p1}, Landroid/service/media/MediaBrowserService;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 412
    :cond_2
    sget p1, Lch/blinkenlights/android/vanilla/R$string;->songs:I

    invoke-virtual {p0, p1}, Landroid/service/media/MediaBrowserService;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 418
    :cond_3
    sget p1, Lch/blinkenlights/android/vanilla/R$string;->albums:I

    invoke-virtual {p0, p1}, Landroid/service/media/MediaBrowserService;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 410
    :cond_4
    sget p1, Lch/blinkenlights/android/vanilla/R$string;->artists:I

    invoke-virtual {p0, p1}, Landroid/service/media/MediaBrowserService;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private updatePlaybackState(Ljava/lang/String;)V
    .locals 9

    .line 665
    invoke-static {}, Lch/blinkenlights/android/vanilla/PlaybackService;->hasInstance()Z

    move-result v0

    const/4 v1, 0x2

    if-eqz v0, :cond_1

    .line 666
    invoke-static {p0}, Lch/blinkenlights/android/vanilla/PlaybackService;->get(Landroid/content/Context;)Lch/blinkenlights/android/vanilla/PlaybackService;

    move-result-object v0

    invoke-virtual {v0}, Lch/blinkenlights/android/vanilla/PlaybackService;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    const/4 v1, 0x3

    .line 669
    :cond_0
    invoke-static {p0}, Lch/blinkenlights/android/vanilla/PlaybackService;->get(Landroid/content/Context;)Lch/blinkenlights/android/vanilla/PlaybackService;

    move-result-object v0

    invoke-virtual {v0}, Lch/blinkenlights/android/vanilla/PlaybackService;->getPosition()I

    move-result v0

    int-to-long v2, v0

    goto :goto_0

    :cond_1
    const-wide/16 v2, -0x1

    :goto_0
    move-wide v4, v2

    .line 672
    new-instance v0, Landroid/media/session/PlaybackState$Builder;

    invoke-direct {v0}, Landroid/media/session/PlaybackState$Builder;-><init>()V

    .line 673
    invoke-direct {p0}, Lch/blinkenlights/android/vanilla/MirrorLinkMediaBrowserService;->getAvailableActions()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/media/session/PlaybackState$Builder;->setActions(J)Landroid/media/session/PlaybackState$Builder;

    move-result-object v0

    .line 675
    invoke-direct {p0, v0}, Lch/blinkenlights/android/vanilla/MirrorLinkMediaBrowserService;->setCustomAction(Landroid/media/session/PlaybackState$Builder;)V

    if-eqz p1, :cond_2

    .line 681
    invoke-virtual {v0, p1}, Landroid/media/session/PlaybackState$Builder;->setErrorMessage(Ljava/lang/CharSequence;)Landroid/media/session/PlaybackState$Builder;

    const/4 v1, 0x7

    const/4 v3, 0x7

    goto :goto_1

    :cond_2
    move v3, v1

    :goto_1
    const/high16 v6, 0x3f800000    # 1.0f

    .line 684
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    move-object v2, v0

    invoke-virtual/range {v2 .. v8}, Landroid/media/session/PlaybackState$Builder;->setState(IJFJ)Landroid/media/session/PlaybackState$Builder;

    .line 685
    iget-object p1, p0, Lch/blinkenlights/android/vanilla/MirrorLinkMediaBrowserService;->mSession:Landroid/media/session/MediaSession;

    invoke-virtual {v0}, Landroid/media/session/PlaybackState$Builder;->build()Landroid/media/session/PlaybackState;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/media/session/MediaSession;->setPlaybackState(Landroid/media/session/PlaybackState;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 4

    .line 521
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    packed-switch v0, :pswitch_data_0

    return v2

    .line 583
    :pswitch_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-direct {p0, p1}, Lch/blinkenlights/android/vanilla/MirrorLinkMediaBrowserService;->updatePlaybackState(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 578
    :pswitch_1
    invoke-static {}, Lch/blinkenlights/android/vanilla/PlaybackService;->hasInstance()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 579
    invoke-static {p0}, Lch/blinkenlights/android/vanilla/PlaybackService;->get(Landroid/content/Context;)Lch/blinkenlights/android/vanilla/PlaybackService;

    move-result-object p1

    sget-object v0, Lch/blinkenlights/android/vanilla/Action;->Shuffle:Lch/blinkenlights/android/vanilla/Action;

    invoke-virtual {p1, v0, v3}, Lch/blinkenlights/android/vanilla/PlaybackService;->performAction(Lch/blinkenlights/android/vanilla/Action;Lch/blinkenlights/android/vanilla/PlaybackActivity;)V

    goto/16 :goto_0

    .line 573
    :pswitch_2
    invoke-static {}, Lch/blinkenlights/android/vanilla/PlaybackService;->hasInstance()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 574
    invoke-static {p0}, Lch/blinkenlights/android/vanilla/PlaybackService;->get(Landroid/content/Context;)Lch/blinkenlights/android/vanilla/PlaybackService;

    move-result-object p1

    sget-object v0, Lch/blinkenlights/android/vanilla/Action;->Repeat:Lch/blinkenlights/android/vanilla/Action;

    invoke-virtual {p1, v0, v3}, Lch/blinkenlights/android/vanilla/PlaybackService;->performAction(Lch/blinkenlights/android/vanilla/Action;Lch/blinkenlights/android/vanilla/PlaybackActivity;)V

    goto/16 :goto_0

    .line 568
    :pswitch_3
    invoke-static {}, Lch/blinkenlights/android/vanilla/PlaybackService;->hasInstance()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 569
    invoke-static {p0}, Lch/blinkenlights/android/vanilla/PlaybackService;->get(Landroid/content/Context;)Lch/blinkenlights/android/vanilla/PlaybackService;

    move-result-object p1

    sget-object v0, Lch/blinkenlights/android/vanilla/Action;->SeekBackward:Lch/blinkenlights/android/vanilla/Action;

    invoke-virtual {p1, v0, v3}, Lch/blinkenlights/android/vanilla/PlaybackService;->performAction(Lch/blinkenlights/android/vanilla/Action;Lch/blinkenlights/android/vanilla/PlaybackActivity;)V

    goto/16 :goto_0

    .line 563
    :pswitch_4
    invoke-static {}, Lch/blinkenlights/android/vanilla/PlaybackService;->hasInstance()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 564
    invoke-static {p0}, Lch/blinkenlights/android/vanilla/PlaybackService;->get(Landroid/content/Context;)Lch/blinkenlights/android/vanilla/PlaybackService;

    move-result-object p1

    sget-object v0, Lch/blinkenlights/android/vanilla/Action;->SeekForward:Lch/blinkenlights/android/vanilla/Action;

    invoke-virtual {p1, v0, v3}, Lch/blinkenlights/android/vanilla/PlaybackService;->performAction(Lch/blinkenlights/android/vanilla/Action;Lch/blinkenlights/android/vanilla/PlaybackActivity;)V

    goto/16 :goto_0

    .line 558
    :pswitch_5
    invoke-static {}, Lch/blinkenlights/android/vanilla/PlaybackService;->hasInstance()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 559
    invoke-static {p0}, Lch/blinkenlights/android/vanilla/PlaybackService;->get(Landroid/content/Context;)Lch/blinkenlights/android/vanilla/PlaybackService;

    move-result-object p1

    sget-object v0, Lch/blinkenlights/android/vanilla/Action;->PreviousSong:Lch/blinkenlights/android/vanilla/Action;

    invoke-virtual {p1, v0, v3}, Lch/blinkenlights/android/vanilla/PlaybackService;->performAction(Lch/blinkenlights/android/vanilla/Action;Lch/blinkenlights/android/vanilla/PlaybackActivity;)V

    goto/16 :goto_0

    .line 553
    :pswitch_6
    invoke-static {}, Lch/blinkenlights/android/vanilla/PlaybackService;->hasInstance()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 554
    invoke-static {p0}, Lch/blinkenlights/android/vanilla/PlaybackService;->get(Landroid/content/Context;)Lch/blinkenlights/android/vanilla/PlaybackService;

    move-result-object p1

    sget-object v0, Lch/blinkenlights/android/vanilla/Action;->NextSong:Lch/blinkenlights/android/vanilla/Action;

    invoke-virtual {p1, v0, v3}, Lch/blinkenlights/android/vanilla/PlaybackService;->performAction(Lch/blinkenlights/android/vanilla/Action;Lch/blinkenlights/android/vanilla/PlaybackActivity;)V

    goto :goto_0

    .line 548
    :pswitch_7
    invoke-static {}, Lch/blinkenlights/android/vanilla/PlaybackService;->hasInstance()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 549
    invoke-static {p0}, Lch/blinkenlights/android/vanilla/PlaybackService;->get(Landroid/content/Context;)Lch/blinkenlights/android/vanilla/PlaybackService;

    move-result-object v0

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, p1}, Lch/blinkenlights/android/vanilla/PlaybackService;->seekToProgress(I)V

    goto :goto_0

    .line 542
    :pswitch_8
    invoke-static {}, Lch/blinkenlights/android/vanilla/PlaybackService;->hasInstance()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 543
    invoke-static {p0}, Lch/blinkenlights/android/vanilla/PlaybackService;->get(Landroid/content/Context;)Lch/blinkenlights/android/vanilla/PlaybackService;

    move-result-object p1

    invoke-virtual {p1}, Lch/blinkenlights/android/vanilla/PlaybackService;->pause()I

    .line 545
    :cond_0
    invoke-direct {p0}, Lch/blinkenlights/android/vanilla/MirrorLinkMediaBrowserService;->setSessionInactive()V

    goto :goto_0

    .line 537
    :pswitch_9
    invoke-static {}, Lch/blinkenlights/android/vanilla/PlaybackService;->hasInstance()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 538
    invoke-static {p0}, Lch/blinkenlights/android/vanilla/PlaybackService;->get(Landroid/content/Context;)Lch/blinkenlights/android/vanilla/PlaybackService;

    move-result-object p1

    invoke-virtual {p1}, Lch/blinkenlights/android/vanilla/PlaybackService;->pause()I

    goto :goto_0

    .line 530
    :pswitch_a
    invoke-direct {p0}, Lch/blinkenlights/android/vanilla/MirrorLinkMediaBrowserService;->setSessionActive()V

    .line 531
    invoke-static {}, Lch/blinkenlights/android/vanilla/PlaybackService;->hasInstance()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 532
    new-instance v0, Lch/blinkenlights/android/vanilla/MirrorLinkMediaBrowserService$MediaID;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-direct {v0, p1}, Lch/blinkenlights/android/vanilla/MirrorLinkMediaBrowserService$MediaID;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0, v2, v1}, Lch/blinkenlights/android/vanilla/MirrorLinkMediaBrowserService;->buildQueryFromMediaID(Lch/blinkenlights/android/vanilla/MirrorLinkMediaBrowserService$MediaID;ZZ)Lch/blinkenlights/android/vanilla/QueryTask;

    move-result-object p1

    .line 533
    invoke-static {p0}, Lch/blinkenlights/android/vanilla/PlaybackService;->get(Landroid/content/Context;)Lch/blinkenlights/android/vanilla/PlaybackService;

    move-result-object v0

    invoke-virtual {v0, p1}, Lch/blinkenlights/android/vanilla/PlaybackService;->addSongs(Lch/blinkenlights/android/vanilla/QueryTask;)V

    goto :goto_0

    .line 523
    :pswitch_b
    invoke-direct {p0}, Lch/blinkenlights/android/vanilla/MirrorLinkMediaBrowserService;->setSessionActive()V

    .line 525
    invoke-static {}, Lch/blinkenlights/android/vanilla/PlaybackService;->hasInstance()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 526
    invoke-static {p0}, Lch/blinkenlights/android/vanilla/PlaybackService;->get(Landroid/content/Context;)Lch/blinkenlights/android/vanilla/PlaybackService;

    move-result-object p1

    invoke-virtual {p1}, Lch/blinkenlights/android/vanilla/PlaybackService;->play()I

    :cond_1
    :goto_0
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate()V
    .locals 11

    const-string v0, "VanillaMusic"

    const-string v1, "MediaBrowserService#onCreate"

    .line 90
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    invoke-super {p0}, Landroid/service/media/MediaBrowserService;->onCreate()V

    .line 93
    new-instance v0, Landroid/os/HandlerThread;

    const/4 v1, 0x0

    const-string v2, "MediaBrowserService"

    invoke-direct {v0, v2, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 94
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 97
    new-instance v2, Lch/blinkenlights/android/vanilla/MediaAdapter;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v1, v3, v3}, Lch/blinkenlights/android/vanilla/MediaAdapter;-><init>(Landroid/content/Context;ILch/blinkenlights/android/vanilla/Limiter;Lch/blinkenlights/android/vanilla/LibraryActivity;)V

    iput-object v2, p0, Lch/blinkenlights/android/vanilla/MirrorLinkMediaBrowserService;->mArtistAdapter:Lch/blinkenlights/android/vanilla/MediaAdapter;

    .line 98
    new-instance v2, Lch/blinkenlights/android/vanilla/MediaAdapter;

    const/4 v4, 0x1

    invoke-direct {v2, p0, v4, v3, v3}, Lch/blinkenlights/android/vanilla/MediaAdapter;-><init>(Landroid/content/Context;ILch/blinkenlights/android/vanilla/Limiter;Lch/blinkenlights/android/vanilla/LibraryActivity;)V

    iput-object v2, p0, Lch/blinkenlights/android/vanilla/MirrorLinkMediaBrowserService;->mAlbumAdapter:Lch/blinkenlights/android/vanilla/MediaAdapter;

    .line 99
    new-instance v2, Lch/blinkenlights/android/vanilla/MediaAdapter;

    const/4 v5, 0x2

    invoke-direct {v2, p0, v5, v3, v3}, Lch/blinkenlights/android/vanilla/MediaAdapter;-><init>(Landroid/content/Context;ILch/blinkenlights/android/vanilla/Limiter;Lch/blinkenlights/android/vanilla/LibraryActivity;)V

    iput-object v2, p0, Lch/blinkenlights/android/vanilla/MirrorLinkMediaBrowserService;->mSongAdapter:Lch/blinkenlights/android/vanilla/MediaAdapter;

    .line 100
    new-instance v2, Lch/blinkenlights/android/vanilla/MediaAdapter;

    const/4 v6, 0x3

    invoke-direct {v2, p0, v6, v3, v3}, Lch/blinkenlights/android/vanilla/MediaAdapter;-><init>(Landroid/content/Context;ILch/blinkenlights/android/vanilla/Limiter;Lch/blinkenlights/android/vanilla/LibraryActivity;)V

    iput-object v2, p0, Lch/blinkenlights/android/vanilla/MirrorLinkMediaBrowserService;->mPlaylistAdapter:Lch/blinkenlights/android/vanilla/MediaAdapter;

    .line 101
    new-instance v2, Lch/blinkenlights/android/vanilla/MediaAdapter;

    const/4 v7, 0x4

    invoke-direct {v2, p0, v7, v3, v3}, Lch/blinkenlights/android/vanilla/MediaAdapter;-><init>(Landroid/content/Context;ILch/blinkenlights/android/vanilla/Limiter;Lch/blinkenlights/android/vanilla/LibraryActivity;)V

    iput-object v2, p0, Lch/blinkenlights/android/vanilla/MirrorLinkMediaBrowserService;->mGenreAdapter:Lch/blinkenlights/android/vanilla/MediaAdapter;

    .line 102
    iget-object v2, p0, Lch/blinkenlights/android/vanilla/MirrorLinkMediaBrowserService;->mMediaAdapters:[Lch/blinkenlights/android/vanilla/MediaAdapter;

    iget-object v8, p0, Lch/blinkenlights/android/vanilla/MirrorLinkMediaBrowserService;->mArtistAdapter:Lch/blinkenlights/android/vanilla/MediaAdapter;

    aput-object v8, v2, v1

    .line 103
    iget-object v8, p0, Lch/blinkenlights/android/vanilla/MirrorLinkMediaBrowserService;->mAlbumAdapter:Lch/blinkenlights/android/vanilla/MediaAdapter;

    aput-object v8, v2, v4

    .line 104
    iget-object v8, p0, Lch/blinkenlights/android/vanilla/MirrorLinkMediaBrowserService;->mSongAdapter:Lch/blinkenlights/android/vanilla/MediaAdapter;

    aput-object v8, v2, v5

    .line 105
    iget-object v8, p0, Lch/blinkenlights/android/vanilla/MirrorLinkMediaBrowserService;->mPlaylistAdapter:Lch/blinkenlights/android/vanilla/MediaAdapter;

    aput-object v8, v2, v6

    .line 106
    iget-object v8, p0, Lch/blinkenlights/android/vanilla/MirrorLinkMediaBrowserService;->mGenreAdapter:Lch/blinkenlights/android/vanilla/MediaAdapter;

    aput-object v8, v2, v7

    .line 110
    iget-object v2, p0, Lch/blinkenlights/android/vanilla/MirrorLinkMediaBrowserService;->mMediaRoot:Ljava/util/List;

    new-instance v8, Landroid/media/browse/MediaBrowser$MediaItem;

    new-instance v9, Landroid/media/MediaDescription$Builder;

    invoke-direct {v9}, Landroid/media/MediaDescription$Builder;-><init>()V

    .line 112
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Landroid/media/MediaDescription$Builder;->setMediaId(Ljava/lang/String;)Landroid/media/MediaDescription$Builder;

    move-result-object v1

    sget v9, Lch/blinkenlights/android/vanilla/R$string;->artists:I

    .line 113
    invoke-virtual {p0, v9}, Landroid/service/media/MediaBrowserService;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Landroid/media/MediaDescription$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/media/MediaDescription$Builder;

    move-result-object v1

    const-string v9, "android.resource://ch.blinkenlights.android.vanilla/drawable/ic_menu_music_library"

    .line 114
    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    invoke-virtual {v1, v10}, Landroid/media/MediaDescription$Builder;->setIconUri(Landroid/net/Uri;)Landroid/media/MediaDescription$Builder;

    move-result-object v1

    sget v10, Lch/blinkenlights/android/vanilla/R$string;->artists:I

    .line 116
    invoke-virtual {p0, v10}, Landroid/service/media/MediaBrowserService;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Landroid/media/MediaDescription$Builder;->setSubtitle(Ljava/lang/CharSequence;)Landroid/media/MediaDescription$Builder;

    move-result-object v1

    .line 117
    invoke-virtual {v1}, Landroid/media/MediaDescription$Builder;->build()Landroid/media/MediaDescription;

    move-result-object v1

    invoke-direct {v8, v1, v4}, Landroid/media/browse/MediaBrowser$MediaItem;-><init>(Landroid/media/MediaDescription;I)V

    .line 110
    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 120
    iget-object v1, p0, Lch/blinkenlights/android/vanilla/MirrorLinkMediaBrowserService;->mMediaRoot:Ljava/util/List;

    new-instance v2, Landroid/media/browse/MediaBrowser$MediaItem;

    new-instance v8, Landroid/media/MediaDescription$Builder;

    invoke-direct {v8}, Landroid/media/MediaDescription$Builder;-><init>()V

    .line 122
    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Landroid/media/MediaDescription$Builder;->setMediaId(Ljava/lang/String;)Landroid/media/MediaDescription$Builder;

    move-result-object v8

    sget v10, Lch/blinkenlights/android/vanilla/R$string;->albums:I

    .line 123
    invoke-virtual {p0, v10}, Landroid/service/media/MediaBrowserService;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Landroid/media/MediaDescription$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/media/MediaDescription$Builder;

    move-result-object v8

    .line 124
    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    invoke-virtual {v8, v10}, Landroid/media/MediaDescription$Builder;->setIconUri(Landroid/net/Uri;)Landroid/media/MediaDescription$Builder;

    move-result-object v8

    sget v10, Lch/blinkenlights/android/vanilla/R$string;->albums:I

    .line 126
    invoke-virtual {p0, v10}, Landroid/service/media/MediaBrowserService;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Landroid/media/MediaDescription$Builder;->setSubtitle(Ljava/lang/CharSequence;)Landroid/media/MediaDescription$Builder;

    move-result-object v8

    .line 127
    invoke-virtual {v8}, Landroid/media/MediaDescription$Builder;->build()Landroid/media/MediaDescription;

    move-result-object v8

    invoke-direct {v2, v8, v4}, Landroid/media/browse/MediaBrowser$MediaItem;-><init>(Landroid/media/MediaDescription;I)V

    .line 120
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 130
    iget-object v1, p0, Lch/blinkenlights/android/vanilla/MirrorLinkMediaBrowserService;->mMediaRoot:Ljava/util/List;

    new-instance v2, Landroid/media/browse/MediaBrowser$MediaItem;

    new-instance v8, Landroid/media/MediaDescription$Builder;

    invoke-direct {v8}, Landroid/media/MediaDescription$Builder;-><init>()V

    .line 132
    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Landroid/media/MediaDescription$Builder;->setMediaId(Ljava/lang/String;)Landroid/media/MediaDescription$Builder;

    move-result-object v5

    sget v8, Lch/blinkenlights/android/vanilla/R$string;->songs:I

    .line 133
    invoke-virtual {p0, v8}, Landroid/service/media/MediaBrowserService;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/media/MediaDescription$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/media/MediaDescription$Builder;

    move-result-object v5

    .line 134
    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/media/MediaDescription$Builder;->setIconUri(Landroid/net/Uri;)Landroid/media/MediaDescription$Builder;

    move-result-object v5

    sget v8, Lch/blinkenlights/android/vanilla/R$string;->songs:I

    .line 136
    invoke-virtual {p0, v8}, Landroid/service/media/MediaBrowserService;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/media/MediaDescription$Builder;->setSubtitle(Ljava/lang/CharSequence;)Landroid/media/MediaDescription$Builder;

    move-result-object v5

    .line 137
    invoke-virtual {v5}, Landroid/media/MediaDescription$Builder;->build()Landroid/media/MediaDescription;

    move-result-object v5

    invoke-direct {v2, v5, v4}, Landroid/media/browse/MediaBrowser$MediaItem;-><init>(Landroid/media/MediaDescription;I)V

    .line 130
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 140
    iget-object v1, p0, Lch/blinkenlights/android/vanilla/MirrorLinkMediaBrowserService;->mMediaRoot:Ljava/util/List;

    new-instance v2, Landroid/media/browse/MediaBrowser$MediaItem;

    new-instance v5, Landroid/media/MediaDescription$Builder;

    invoke-direct {v5}, Landroid/media/MediaDescription$Builder;-><init>()V

    .line 142
    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/media/MediaDescription$Builder;->setMediaId(Ljava/lang/String;)Landroid/media/MediaDescription$Builder;

    move-result-object v5

    sget v7, Lch/blinkenlights/android/vanilla/R$string;->genres:I

    .line 143
    invoke-virtual {p0, v7}, Landroid/service/media/MediaBrowserService;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/media/MediaDescription$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/media/MediaDescription$Builder;

    move-result-object v5

    .line 144
    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/media/MediaDescription$Builder;->setIconUri(Landroid/net/Uri;)Landroid/media/MediaDescription$Builder;

    move-result-object v5

    sget v7, Lch/blinkenlights/android/vanilla/R$string;->genres:I

    .line 146
    invoke-virtual {p0, v7}, Landroid/service/media/MediaBrowserService;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/media/MediaDescription$Builder;->setSubtitle(Ljava/lang/CharSequence;)Landroid/media/MediaDescription$Builder;

    move-result-object v5

    .line 147
    invoke-virtual {v5}, Landroid/media/MediaDescription$Builder;->build()Landroid/media/MediaDescription;

    move-result-object v5

    invoke-direct {v2, v5, v4}, Landroid/media/browse/MediaBrowser$MediaItem;-><init>(Landroid/media/MediaDescription;I)V

    .line 140
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 150
    iget-object v1, p0, Lch/blinkenlights/android/vanilla/MirrorLinkMediaBrowserService;->mMediaRoot:Ljava/util/List;

    new-instance v2, Landroid/media/browse/MediaBrowser$MediaItem;

    new-instance v5, Landroid/media/MediaDescription$Builder;

    invoke-direct {v5}, Landroid/media/MediaDescription$Builder;-><init>()V

    .line 152
    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/media/MediaDescription$Builder;->setMediaId(Ljava/lang/String;)Landroid/media/MediaDescription$Builder;

    move-result-object v5

    sget v7, Lch/blinkenlights/android/vanilla/R$string;->playlists:I

    .line 153
    invoke-virtual {p0, v7}, Landroid/service/media/MediaBrowserService;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/media/MediaDescription$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/media/MediaDescription$Builder;

    move-result-object v5

    .line 154
    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/media/MediaDescription$Builder;->setIconUri(Landroid/net/Uri;)Landroid/media/MediaDescription$Builder;

    move-result-object v5

    sget v7, Lch/blinkenlights/android/vanilla/R$string;->playlists:I

    .line 156
    invoke-virtual {p0, v7}, Landroid/service/media/MediaBrowserService;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/media/MediaDescription$Builder;->setSubtitle(Ljava/lang/CharSequence;)Landroid/media/MediaDescription$Builder;

    move-result-object v5

    .line 157
    invoke-virtual {v5}, Landroid/media/MediaDescription$Builder;->build()Landroid/media/MediaDescription;

    move-result-object v5

    invoke-direct {v2, v5, v4}, Landroid/media/browse/MediaBrowser$MediaItem;-><init>(Landroid/media/MediaDescription;I)V

    .line 150
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 162
    new-instance v1, Landroid/media/session/MediaSession;

    const-string v2, "VanillaMediaBrowserService"

    invoke-direct {v1, p0, v2}, Landroid/media/session/MediaSession;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v1, p0, Lch/blinkenlights/android/vanilla/MirrorLinkMediaBrowserService;->mSession:Landroid/media/session/MediaSession;

    .line 163
    iget-object v1, p0, Lch/blinkenlights/android/vanilla/MirrorLinkMediaBrowserService;->mSession:Landroid/media/session/MediaSession;

    invoke-virtual {v1}, Landroid/media/session/MediaSession;->getSessionToken()Landroid/media/session/MediaSession$Token;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/service/media/MediaBrowserService;->setSessionToken(Landroid/media/session/MediaSession$Token;)V

    .line 164
    iget-object v1, p0, Lch/blinkenlights/android/vanilla/MirrorLinkMediaBrowserService;->mSession:Landroid/media/session/MediaSession;

    new-instance v2, Lch/blinkenlights/android/vanilla/MirrorLinkMediaBrowserService$MediaSessionCallback;

    invoke-direct {v2, p0, v3}, Lch/blinkenlights/android/vanilla/MirrorLinkMediaBrowserService$MediaSessionCallback;-><init>(Lch/blinkenlights/android/vanilla/MirrorLinkMediaBrowserService;Lch/blinkenlights/android/vanilla/MirrorLinkMediaBrowserService$1;)V

    invoke-virtual {v1, v2}, Landroid/media/session/MediaSession;->setCallback(Landroid/media/session/MediaSession$Callback;)V

    .line 165
    iget-object v1, p0, Lch/blinkenlights/android/vanilla/MirrorLinkMediaBrowserService;->mSession:Landroid/media/session/MediaSession;

    invoke-virtual {v1, v6}, Landroid/media/session/MediaSession;->setFlags(I)V

    .line 166
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iput-object v1, p0, Lch/blinkenlights/android/vanilla/MirrorLinkMediaBrowserService;->mSessionExtras:Landroid/os/Bundle;

    .line 167
    iget-object v1, p0, Lch/blinkenlights/android/vanilla/MirrorLinkMediaBrowserService;->mSession:Landroid/media/session/MediaSession;

    iget-object v2, p0, Lch/blinkenlights/android/vanilla/MirrorLinkMediaBrowserService;->mSessionExtras:Landroid/os/Bundle;

    invoke-virtual {v1, v2}, Landroid/media/session/MediaSession;->setExtras(Landroid/os/Bundle;)V

    .line 170
    invoke-static {p0}, Lch/blinkenlights/android/vanilla/PlaybackService;->addTimelineCallback(Lch/blinkenlights/android/vanilla/TimelineCallback;)V

    .line 173
    invoke-static {}, Lch/blinkenlights/android/vanilla/PlaybackService;->hasInstance()Z

    move-result v1

    if-nez v1, :cond_0

    .line 174
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lch/blinkenlights/android/vanilla/MirrorLinkMediaBrowserService$1;

    invoke-direct {v2, p0}, Lch/blinkenlights/android/vanilla/MirrorLinkMediaBrowserService$1;-><init>(Lch/blinkenlights/android/vanilla/MirrorLinkMediaBrowserService;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 180
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 183
    :cond_0
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Lch/blinkenlights/android/vanilla/MirrorLinkMediaBrowserService;->mLooper:Landroid/os/Looper;

    .line 184
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lch/blinkenlights/android/vanilla/MirrorLinkMediaBrowserService;->mLooper:Landroid/os/Looper;

    invoke-direct {v0, v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lch/blinkenlights/android/vanilla/MirrorLinkMediaBrowserService;->mHandler:Landroid/os/Handler;

    .line 186
    invoke-direct {p0, v3}, Lch/blinkenlights/android/vanilla/MirrorLinkMediaBrowserService;->updatePlaybackState(Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    .line 187
    invoke-virtual {p0, v0, v1, v3}, Lch/blinkenlights/android/vanilla/MirrorLinkMediaBrowserService;->setSong(JLch/blinkenlights/android/vanilla/Song;)V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    const-string v0, "VanillaMusic"

    const-string v1, "MediaBrowserService#onDestroy"

    .line 198
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 199
    iput-boolean v0, p0, Lch/blinkenlights/android/vanilla/MirrorLinkMediaBrowserService;->mServiceStarted:Z

    .line 200
    invoke-static {p0}, Lch/blinkenlights/android/vanilla/PlaybackService;->removeTimelineCallback(Lch/blinkenlights/android/vanilla/TimelineCallback;)V

    .line 201
    iget-object v0, p0, Lch/blinkenlights/android/vanilla/MirrorLinkMediaBrowserService;->mSession:Landroid/media/session/MediaSession;

    invoke-virtual {v0}, Landroid/media/session/MediaSession;->release()V

    return-void
.end method

.method public onError(Ljava/lang/String;)V
    .locals 2

    .line 792
    iget-object v0, p0, Lch/blinkenlights/android/vanilla/MirrorLinkMediaBrowserService;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xc

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onGetRoot(Ljava/lang/String;ILandroid/os/Bundle;)Landroid/service/media/MediaBrowserService$BrowserRoot;
    .locals 0

    .line 465
    new-instance p1, Landroid/service/media/MediaBrowserService$BrowserRoot;

    sget-object p2, Lch/blinkenlights/android/vanilla/MirrorLinkMediaBrowserService$MediaID;->ID_TYPE_ROOT:Ljava/lang/String;

    const/4 p3, 0x0

    invoke-direct {p1, p2, p3}, Landroid/service/media/MediaBrowserService$BrowserRoot;-><init>(Ljava/lang/String;Landroid/os/Bundle;)V

    return-object p1
.end method

.method public onLoadChildren(Ljava/lang/String;Landroid/service/media/MediaBrowserService$Result;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/service/media/MediaBrowserService$Result<",
            "Ljava/util/List<",
            "Landroid/media/browse/MediaBrowser$MediaItem;",
            ">;>;)V"
        }
    .end annotation

    .line 471
    invoke-virtual {p2}, Landroid/service/media/MediaBrowserService$Result;->detach()V

    .line 472
    sget-object v0, Lch/blinkenlights/android/vanilla/MirrorLinkMediaBrowserService$MediaID;->ID_TYPE_ROOT:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 473
    new-instance v0, Lch/blinkenlights/android/vanilla/MirrorLinkMediaBrowserService$MediaID;

    invoke-direct {v0, p1}, Lch/blinkenlights/android/vanilla/MirrorLinkMediaBrowserService$MediaID;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0, p2}, Lch/blinkenlights/android/vanilla/MirrorLinkMediaBrowserService;->loadChildrenAsync(Lch/blinkenlights/android/vanilla/MirrorLinkMediaBrowserService$MediaID;Landroid/service/media/MediaBrowserService$Result;)V

    goto :goto_0

    .line 475
    :cond_0
    iget-object p1, p0, Lch/blinkenlights/android/vanilla/MirrorLinkMediaBrowserService;->mMediaRoot:Ljava/util/List;

    invoke-virtual {p2, p1}, Landroid/service/media/MediaBrowserService$Result;->sendResult(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public onMediaChange()V
    .locals 3

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    .line 754
    invoke-virtual {p0, v0, v1, v2}, Lch/blinkenlights/android/vanilla/MirrorLinkMediaBrowserService;->setSong(JLch/blinkenlights/android/vanilla/Song;)V

    return-void
.end method

.method public onPositionInfoChanged()V
    .locals 3

    .line 787
    iget-object v0, p0, Lch/blinkenlights/android/vanilla/MirrorLinkMediaBrowserService;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xc

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 0

    const-string p1, "VanillaMusic"

    const-string p2, "MediaBrowserService#onStartCommand"

    .line 192
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    return p1
.end method

.method public onTimelineChanged()V
    .locals 3

    .line 743
    iget-object v0, p0, Lch/blinkenlights/android/vanilla/MirrorLinkMediaBrowserService;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xc

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public recreate()V
    .locals 0

    return-void
.end method

.method public replaceSong(ILch/blinkenlights/android/vanilla/Song;)V
    .locals 0

    return-void
.end method

.method public setSong(JLch/blinkenlights/android/vanilla/Song;)V
    .locals 4

    .line 761
    iget-object p1, p0, Lch/blinkenlights/android/vanilla/MirrorLinkMediaBrowserService;->mHandler:Landroid/os/Handler;

    const/16 p2, 0xc

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    const/4 p1, 0x0

    if-nez p3, :cond_0

    .line 763
    invoke-static {}, Lch/blinkenlights/android/vanilla/PlaybackService;->hasInstance()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 764
    invoke-static {p0}, Lch/blinkenlights/android/vanilla/PlaybackService;->get(Landroid/content/Context;)Lch/blinkenlights/android/vanilla/PlaybackService;

    move-result-object p2

    invoke-virtual {p2, p1}, Lch/blinkenlights/android/vanilla/PlaybackService;->getSong(I)Lch/blinkenlights/android/vanilla/Song;

    move-result-object p3

    :cond_0
    if-eqz p3, :cond_1

    .line 769
    invoke-virtual {p0}, Landroid/service/media/MediaBrowserService;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, p3}, Lch/blinkenlights/android/vanilla/MediaUtils;->getAndroidMediaIds(Landroid/content/Context;Lch/blinkenlights/android/vanilla/Song;)[J

    move-result-object p2

    .line 770
    aget-wide p1, p2, p1

    const-wide/16 v0, -0x1

    cmp-long v2, p1, v0

    if-eqz v2, :cond_1

    .line 772
    new-instance v0, Landroid/media/MediaMetadata$Builder;

    invoke-direct {v0}, Landroid/media/MediaMetadata$Builder;-><init>()V

    .line 773
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.media.metadata.MEDIA_ID"

    invoke-virtual {v0, v2, v1}, Landroid/media/MediaMetadata$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/media/MediaMetadata$Builder;

    move-result-object v0

    iget-object v1, p3, Lch/blinkenlights/android/vanilla/Song;->album:Ljava/lang/String;

    const-string v2, "android.media.metadata.ALBUM"

    .line 774
    invoke-virtual {v0, v2, v1}, Landroid/media/MediaMetadata$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/media/MediaMetadata$Builder;

    move-result-object v0

    iget-object v1, p3, Lch/blinkenlights/android/vanilla/Song;->artist:Ljava/lang/String;

    const-string v2, "android.media.metadata.ARTIST"

    .line 775
    invoke-virtual {v0, v2, v1}, Landroid/media/MediaMetadata$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/media/MediaMetadata$Builder;

    move-result-object v0

    iget-wide v1, p3, Lch/blinkenlights/android/vanilla/Song;->duration:J

    const-string v3, "android.media.metadata.DURATION"

    .line 776
    invoke-virtual {v0, v3, v1, v2}, Landroid/media/MediaMetadata$Builder;->putLong(Ljava/lang/String;J)Landroid/media/MediaMetadata$Builder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "content://media/external/audio/media/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 777
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/albumart"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.media.metadata.ALBUM_ART_URI"

    invoke-virtual {v0, p2, p1}, Landroid/media/MediaMetadata$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/media/MediaMetadata$Builder;

    move-result-object p1

    iget-object p2, p3, Lch/blinkenlights/android/vanilla/Song;->title:Ljava/lang/String;

    const-string v0, "android.media.metadata.TITLE"

    .line 778
    invoke-virtual {p1, v0, p2}, Landroid/media/MediaMetadata$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/media/MediaMetadata$Builder;

    move-result-object p1

    iget p2, p3, Lch/blinkenlights/android/vanilla/Song;->trackNumber:I

    int-to-long p2, p2

    const-string v0, "android.media.metadata.TRACK_NUMBER"

    .line 779
    invoke-virtual {p1, v0, p2, p3}, Landroid/media/MediaMetadata$Builder;->putLong(Ljava/lang/String;J)Landroid/media/MediaMetadata$Builder;

    move-result-object p1

    .line 780
    invoke-virtual {p1}, Landroid/media/MediaMetadata$Builder;->build()Landroid/media/MediaMetadata;

    move-result-object p1

    .line 781
    iget-object p2, p0, Lch/blinkenlights/android/vanilla/MirrorLinkMediaBrowserService;->mSession:Landroid/media/session/MediaSession;

    invoke-virtual {p2, p1}, Landroid/media/session/MediaSession;->setMetadata(Landroid/media/MediaMetadata;)V

    :cond_1
    return-void
.end method

.method public setState(JI)V
    .locals 0

    .line 747
    iget-object p1, p0, Lch/blinkenlights/android/vanilla/MirrorLinkMediaBrowserService;->mHandler:Landroid/os/Handler;

    const/16 p2, 0xc

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
