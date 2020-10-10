.class public final Lorg/schabi/newpipe/extractor/ServiceList;
.super Ljava/lang/Object;
.source "ServiceList.java"


# static fields
.field public static final MediaCCC:Lorg/schabi/newpipe/extractor/services/media_ccc/MediaCCCService;

.field private static final SERVICES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/schabi/newpipe/extractor/StreamingService;",
            ">;"
        }
    .end annotation
.end field

.field public static final SoundCloud:Lorg/schabi/newpipe/extractor/services/soundcloud/SoundcloudService;

.field public static final YouTube:Lorg/schabi/newpipe/extractor/services/youtube/YoutubeService;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x3

    .line 46
    new-array v0, v0, [Lorg/schabi/newpipe/extractor/StreamingService;

    new-instance v1, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeService;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeService;-><init>(I)V

    sput-object v1, Lorg/schabi/newpipe/extractor/ServiceList;->YouTube:Lorg/schabi/newpipe/extractor/services/youtube/YoutubeService;

    aput-object v1, v0, v2

    new-instance v1, Lorg/schabi/newpipe/extractor/services/soundcloud/SoundcloudService;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lorg/schabi/newpipe/extractor/services/soundcloud/SoundcloudService;-><init>(I)V

    sput-object v1, Lorg/schabi/newpipe/extractor/ServiceList;->SoundCloud:Lorg/schabi/newpipe/extractor/services/soundcloud/SoundcloudService;

    aput-object v1, v0, v2

    new-instance v1, Lorg/schabi/newpipe/extractor/services/media_ccc/MediaCCCService;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Lorg/schabi/newpipe/extractor/services/media_ccc/MediaCCCService;-><init>(I)V

    sput-object v1, Lorg/schabi/newpipe/extractor/ServiceList;->MediaCCC:Lorg/schabi/newpipe/extractor/services/media_ccc/MediaCCCService;

    aput-object v1, v0, v2

    .line 47
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 46
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lorg/schabi/newpipe/extractor/ServiceList;->SERVICES:Ljava/util/List;

    return-void
.end method

.method public static all()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/schabi/newpipe/extractor/StreamingService;",
            ">;"
        }
    .end annotation

    .line 59
    sget-object v0, Lorg/schabi/newpipe/extractor/ServiceList;->SERVICES:Ljava/util/List;

    return-object v0
.end method
