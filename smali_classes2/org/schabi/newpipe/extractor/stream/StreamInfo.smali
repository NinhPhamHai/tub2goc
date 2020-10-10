.class public Lorg/schabi/newpipe/extractor/stream/StreamInfo;
.super Lorg/schabi/newpipe/extractor/Info;
.source "StreamInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/schabi/newpipe/extractor/stream/StreamInfo$StreamExtractException;
    }
.end annotation


# instance fields
.field private ageLimit:I

.field private audioStreams:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/schabi/newpipe/extractor/stream/AudioStream;",
            ">;"
        }
    .end annotation
.end field

.field private dashMpdUrl:Ljava/lang/String;

.field private description:Ljava/lang/String;

.field private dislikeCount:J

.field private duration:J

.field private hlsUrl:Ljava/lang/String;

.field private likeCount:J

.field private nextVideo:Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;

.field private relatedStreams:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/schabi/newpipe/extractor/InfoItem;",
            ">;"
        }
    .end annotation
.end field

.field private segmentedAudioStreams:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/schabi/newpipe/extractor/stream/AudioStream;",
            ">;"
        }
    .end annotation
.end field

.field private segmentedVideoOnlyStreams:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/schabi/newpipe/extractor/stream/VideoStream;",
            ">;"
        }
    .end annotation
.end field

.field private segmentedVideoStreams:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/schabi/newpipe/extractor/stream/VideoStream;",
            ">;"
        }
    .end annotation
.end field

.field private startPosition:J

.field private streamType:Lorg/schabi/newpipe/extractor/stream/StreamType;

.field private subtitles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/schabi/newpipe/extractor/stream/SubtitlesStream;",
            ">;"
        }
    .end annotation
.end field

.field private thumbnailUrl:Ljava/lang/String;

.field private uploadDate:Ljava/lang/String;

.field private uploaderAvatarUrl:Ljava/lang/String;

.field private uploaderName:Ljava/lang/String;

.field private uploaderUrl:Ljava/lang/String;

.field private videoOnlyStreams:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/schabi/newpipe/extractor/stream/VideoStream;",
            ">;"
        }
    .end annotation
.end field

.field private videoStreams:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/schabi/newpipe/extractor/stream/VideoStream;",
            ">;"
        }
    .end annotation
.end field

.field private viewCount:J


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Lorg/schabi/newpipe/extractor/stream/StreamType;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 6

    move-object v0, p0

    move v1, p1

    move-object v2, p5

    move-object v3, p2

    move-object v4, p3

    move-object v5, p6

    .line 49
    invoke-direct/range {v0 .. v5}, Lorg/schabi/newpipe/extractor/Info;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, ""

    .line 273
    iput-object p1, p0, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->thumbnailUrl:Ljava/lang/String;

    .line 274
    iput-object p1, p0, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->uploadDate:Ljava/lang/String;

    const-wide/16 p2, -0x1

    .line 275
    iput-wide p2, p0, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->duration:J

    const/4 p5, -0x1

    .line 276
    iput p5, p0, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->ageLimit:I

    .line 279
    iput-wide p2, p0, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->viewCount:J

    .line 280
    iput-wide p2, p0, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->likeCount:J

    .line 281
    iput-wide p2, p0, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->dislikeCount:J

    .line 283
    iput-object p1, p0, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->uploaderName:Ljava/lang/String;

    .line 284
    iput-object p1, p0, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->uploaderUrl:Ljava/lang/String;

    .line 285
    iput-object p1, p0, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->uploaderAvatarUrl:Ljava/lang/String;

    .line 287
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->videoStreams:Ljava/util/List;

    .line 288
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->audioStreams:Ljava/util/List;

    .line 289
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->videoOnlyStreams:Ljava/util/List;

    .line 291
    iput-object p1, p0, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->dashMpdUrl:Ljava/lang/String;

    .line 292
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->segmentedVideoStreams:Ljava/util/List;

    .line 293
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->segmentedAudioStreams:Ljava/util/List;

    .line 294
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->segmentedVideoOnlyStreams:Ljava/util/List;

    .line 297
    iput-object p1, p0, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->hlsUrl:Ljava/lang/String;

    .line 299
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->relatedStreams:Ljava/util/List;

    const-wide/16 p1, 0x0

    .line 301
    iput-wide p1, p0, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->startPosition:J

    .line 302
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->subtitles:Ljava/util/List;

    .line 50
    iput-object p4, p0, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->streamType:Lorg/schabi/newpipe/extractor/stream/StreamType;

    .line 51
    iput p7, p0, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->ageLimit:I

    return-void
.end method

.method private static extractImportantData(Lorg/schabi/newpipe/extractor/stream/StreamExtractor;)Lorg/schabi/newpipe/extractor/stream/StreamInfo;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/schabi/newpipe/extractor/exceptions/ExtractionException;
        }
    .end annotation

    .line 95
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/Extractor;->getServiceId()I

    move-result v1

    .line 96
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/Extractor;->getUrl()Ljava/lang/String;

    move-result-object v2

    .line 97
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/Extractor;->getOriginalUrl()Ljava/lang/String;

    move-result-object v3

    .line 98
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/stream/StreamExtractor;->getStreamType()Lorg/schabi/newpipe/extractor/stream/StreamType;

    move-result-object v4

    .line 99
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/Extractor;->getId()Ljava/lang/String;

    move-result-object v5

    .line 100
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/Extractor;->getName()Ljava/lang/String;

    move-result-object v6

    .line 101
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/stream/StreamExtractor;->getAgeLimit()I

    move-result v7

    .line 103
    sget-object p0, Lorg/schabi/newpipe/extractor/stream/StreamType;->NONE:Lorg/schabi/newpipe/extractor/stream/StreamType;

    if-eq v4, p0, :cond_0

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_0

    if-eqz v5, :cond_0

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_0

    if-eqz v6, :cond_0

    const/4 p0, -0x1

    if-eq v7, p0, :cond_0

    .line 108
    new-instance p0, Lorg/schabi/newpipe/extractor/stream/StreamInfo;

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;-><init>(ILjava/lang/String;Ljava/lang/String;Lorg/schabi/newpipe/extractor/stream/StreamType;Ljava/lang/String;Ljava/lang/String;I)V

    return-object p0

    .line 105
    :cond_0
    new-instance p0, Lorg/schabi/newpipe/extractor/exceptions/ExtractionException;

    const-string v0, "Some important stream information was not given."

    invoke-direct {p0, v0}, Lorg/schabi/newpipe/extractor/exceptions/ExtractionException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static extractOptionalData(Lorg/schabi/newpipe/extractor/stream/StreamInfo;Lorg/schabi/newpipe/extractor/stream/StreamExtractor;)Lorg/schabi/newpipe/extractor/stream/StreamInfo;
    .locals 2

    .line 202
    :try_start_0
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/stream/StreamExtractor;->getThumbnailUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->setThumbnailUrl(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 204
    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/extractor/Info;->addError(Ljava/lang/Throwable;)V

    .line 207
    :goto_0
    :try_start_1
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/stream/StreamExtractor;->getLength()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->setDuration(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 209
    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/extractor/Info;->addError(Ljava/lang/Throwable;)V

    .line 212
    :goto_1
    :try_start_2
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/stream/StreamExtractor;->getUploaderName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->setUploaderName(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v0

    .line 214
    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/extractor/Info;->addError(Ljava/lang/Throwable;)V

    .line 217
    :goto_2
    :try_start_3
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/stream/StreamExtractor;->getUploaderUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->setUploaderUrl(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_3

    :catch_3
    move-exception v0

    .line 219
    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/extractor/Info;->addError(Ljava/lang/Throwable;)V

    .line 222
    :goto_3
    :try_start_4
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/stream/StreamExtractor;->getDescription()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->setDescription(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_4

    :catch_4
    move-exception v0

    .line 224
    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/extractor/Info;->addError(Ljava/lang/Throwable;)V

    .line 227
    :goto_4
    :try_start_5
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/stream/StreamExtractor;->getViewCount()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->setViewCount(J)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    goto :goto_5

    :catch_5
    move-exception v0

    .line 229
    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/extractor/Info;->addError(Ljava/lang/Throwable;)V

    .line 232
    :goto_5
    :try_start_6
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/stream/StreamExtractor;->getUploadDate()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->setUploadDate(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    goto :goto_6

    :catch_6
    move-exception v0

    .line 234
    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/extractor/Info;->addError(Ljava/lang/Throwable;)V

    .line 237
    :goto_6
    :try_start_7
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/stream/StreamExtractor;->getUploaderAvatarUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->setUploaderAvatarUrl(Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_7

    goto :goto_7

    :catch_7
    move-exception v0

    .line 239
    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/extractor/Info;->addError(Ljava/lang/Throwable;)V

    .line 242
    :goto_7
    :try_start_8
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/stream/StreamExtractor;->getTimeStamp()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->setStartPosition(J)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_8

    goto :goto_8

    :catch_8
    move-exception v0

    .line 244
    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/extractor/Info;->addError(Ljava/lang/Throwable;)V

    .line 247
    :goto_8
    :try_start_9
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/stream/StreamExtractor;->getLikeCount()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->setLikeCount(J)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_9

    goto :goto_9

    :catch_9
    move-exception v0

    .line 249
    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/extractor/Info;->addError(Ljava/lang/Throwable;)V

    .line 252
    :goto_9
    :try_start_a
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/stream/StreamExtractor;->getDislikeCount()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->setDislikeCount(J)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_a

    goto :goto_a

    :catch_a
    move-exception v0

    .line 254
    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/extractor/Info;->addError(Ljava/lang/Throwable;)V

    .line 257
    :goto_a
    :try_start_b
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/stream/StreamExtractor;->getNextStream()Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->setNextVideo(Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_b

    goto :goto_b

    :catch_b
    move-exception v0

    .line 259
    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/extractor/Info;->addError(Ljava/lang/Throwable;)V

    .line 262
    :goto_b
    :try_start_c
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/stream/StreamExtractor;->getSubtitlesDefault()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->setSubtitles(Ljava/util/List;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_c

    goto :goto_c

    :catch_c
    move-exception v0

    .line 264
    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/extractor/Info;->addError(Ljava/lang/Throwable;)V

    .line 267
    :goto_c
    invoke-static {p0, p1}, Lorg/schabi/newpipe/extractor/utils/ExtractorHelper;->getRelatedVideosOrLogError(Lorg/schabi/newpipe/extractor/stream/StreamInfo;Lorg/schabi/newpipe/extractor/stream/StreamExtractor;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->setRelatedStreams(Ljava/util/List;)V

    return-object p0
.end method

.method private static extractStreams(Lorg/schabi/newpipe/extractor/stream/StreamInfo;Lorg/schabi/newpipe/extractor/stream/StreamExtractor;)Lorg/schabi/newpipe/extractor/stream/StreamInfo;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/schabi/newpipe/extractor/exceptions/ExtractionException;
        }
    .end annotation

    .line 118
    :try_start_0
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/stream/StreamExtractor;->getDashMpdUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->setDashMpdUrl(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 120
    new-instance v1, Lorg/schabi/newpipe/extractor/exceptions/ExtractionException;

    const-string v2, "Couldn\'t get Dash manifest"

    invoke-direct {v1, v2, v0}, Lorg/schabi/newpipe/extractor/exceptions/ExtractionException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0, v1}, Lorg/schabi/newpipe/extractor/Info;->addError(Ljava/lang/Throwable;)V

    .line 124
    :goto_0
    :try_start_1
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/stream/StreamExtractor;->getHlsUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->setHlsUrl(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 126
    new-instance v1, Lorg/schabi/newpipe/extractor/exceptions/ExtractionException;

    const-string v2, "Couldn\'t get HLS manifest"

    invoke-direct {v1, v2, v0}, Lorg/schabi/newpipe/extractor/exceptions/ExtractionException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0, v1}, Lorg/schabi/newpipe/extractor/Info;->addError(Ljava/lang/Throwable;)V

    .line 131
    :goto_1
    :try_start_2
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/stream/StreamExtractor;->getAudioStreams()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->setAudioStreams(Ljava/util/List;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v0

    .line 133
    new-instance v1, Lorg/schabi/newpipe/extractor/exceptions/ExtractionException;

    const-string v2, "Couldn\'t get audio streams"

    invoke-direct {v1, v2, v0}, Lorg/schabi/newpipe/extractor/exceptions/ExtractionException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0, v1}, Lorg/schabi/newpipe/extractor/Info;->addError(Ljava/lang/Throwable;)V

    .line 137
    :goto_2
    :try_start_3
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/stream/StreamExtractor;->getVideoStreams()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->setVideoStreams(Ljava/util/List;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_3

    :catch_3
    move-exception v0

    .line 139
    new-instance v1, Lorg/schabi/newpipe/extractor/exceptions/ExtractionException;

    const-string v2, "Couldn\'t get video streams"

    invoke-direct {v1, v2, v0}, Lorg/schabi/newpipe/extractor/exceptions/ExtractionException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0, v1}, Lorg/schabi/newpipe/extractor/Info;->addError(Ljava/lang/Throwable;)V

    .line 143
    :goto_3
    :try_start_4
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/stream/StreamExtractor;->getVideoOnlyStreams()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->setVideoOnlyStreams(Ljava/util/List;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_4

    :catch_4
    move-exception p1

    .line 145
    new-instance v0, Lorg/schabi/newpipe/extractor/exceptions/ExtractionException;

    const-string v1, "Couldn\'t get video only streams"

    invoke-direct {v0, v1, p1}, Lorg/schabi/newpipe/extractor/exceptions/ExtractionException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/extractor/Info;->addError(Ljava/lang/Throwable;)V

    .line 149
    :goto_4
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->getVideoStreams()Ljava/util/List;

    move-result-object p1

    if-nez p1, :cond_0

    .line 150
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->setVideoStreams(Ljava/util/List;)V

    .line 151
    :cond_0
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->getVideoOnlyStreams()Ljava/util/List;

    move-result-object p1

    if-nez p1, :cond_1

    .line 152
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->setVideoOnlyStreams(Ljava/util/List;)V

    .line 153
    :cond_1
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->getAudioStreams()Ljava/util/List;

    move-result-object p1

    if-nez p1, :cond_2

    .line 154
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->setAudioStreams(Ljava/util/List;)V

    :cond_2
    const/4 p1, 0x0

    .line 157
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->getDashMpdUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->getDashMpdUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 159
    :try_start_5
    invoke-static {p0}, Lorg/schabi/newpipe/extractor/utils/DashMpdParser;->getStreams(Lorg/schabi/newpipe/extractor/stream/StreamInfo;)Lorg/schabi/newpipe/extractor/utils/DashMpdParser$ParserResult;

    move-result-object v0

    .line 160
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->getVideoOnlyStreams()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0}, Lorg/schabi/newpipe/extractor/utils/DashMpdParser$ParserResult;->getVideoOnlyStreams()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 161
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->getAudioStreams()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0}, Lorg/schabi/newpipe/extractor/utils/DashMpdParser$ParserResult;->getAudioStreams()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 162
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->getVideoStreams()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0}, Lorg/schabi/newpipe/extractor/utils/DashMpdParser$ParserResult;->getVideoStreams()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 163
    invoke-virtual {v0}, Lorg/schabi/newpipe/extractor/utils/DashMpdParser$ParserResult;->getSegmentedVideoOnlyStreams()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->segmentedVideoOnlyStreams:Ljava/util/List;

    .line 164
    invoke-virtual {v0}, Lorg/schabi/newpipe/extractor/utils/DashMpdParser$ParserResult;->getSegmentedAudioStreams()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->segmentedAudioStreams:Ljava/util/List;

    .line 165
    invoke-virtual {v0}, Lorg/schabi/newpipe/extractor/utils/DashMpdParser$ParserResult;->getSegmentedVideoStreams()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->segmentedVideoStreams:Ljava/util/List;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    goto :goto_5

    :catch_5
    move-exception p1

    .line 177
    :cond_3
    :goto_5
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->videoStreams:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->audioStreams:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    if-eqz p1, :cond_4

    .line 184
    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/extractor/Info;->addError(Ljava/lang/Throwable;)V

    .line 187
    :cond_4
    new-instance p0, Lorg/schabi/newpipe/extractor/stream/StreamInfo$StreamExtractException;

    const-string p1, "Could not get any stream. See error variable to get further details."

    invoke-direct {p0, p1}, Lorg/schabi/newpipe/extractor/stream/StreamInfo$StreamExtractException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    return-object p0
.end method

.method public static getInfo(Lorg/schabi/newpipe/extractor/StreamingService;Ljava/lang/String;)Lorg/schabi/newpipe/extractor/stream/StreamInfo;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/schabi/newpipe/extractor/exceptions/ExtractionException;
        }
    .end annotation

    .line 59
    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/extractor/StreamingService;->getStreamExtractor(Ljava/lang/String;)Lorg/schabi/newpipe/extractor/stream/StreamExtractor;

    move-result-object p0

    invoke-static {p0}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->getInfo(Lorg/schabi/newpipe/extractor/stream/StreamExtractor;)Lorg/schabi/newpipe/extractor/stream/StreamInfo;

    move-result-object p0

    return-object p0
.end method

.method private static getInfo(Lorg/schabi/newpipe/extractor/stream/StreamExtractor;)Lorg/schabi/newpipe/extractor/stream/StreamInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/schabi/newpipe/extractor/exceptions/ExtractionException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 63
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/Extractor;->fetchPage()V

    .line 66
    :try_start_0
    invoke-static {p0}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->extractImportantData(Lorg/schabi/newpipe/extractor/stream/StreamExtractor;)Lorg/schabi/newpipe/extractor/stream/StreamInfo;

    move-result-object v0

    .line 67
    invoke-static {v0, p0}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->extractStreams(Lorg/schabi/newpipe/extractor/stream/StreamInfo;Lorg/schabi/newpipe/extractor/stream/StreamExtractor;)Lorg/schabi/newpipe/extractor/stream/StreamInfo;

    .line 68
    invoke-static {v0, p0}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->extractOptionalData(Lorg/schabi/newpipe/extractor/stream/StreamInfo;Lorg/schabi/newpipe/extractor/stream/StreamExtractor;)Lorg/schabi/newpipe/extractor/stream/StreamInfo;
    :try_end_0
    .catch Lorg/schabi/newpipe/extractor/exceptions/ExtractionException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 78
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/stream/StreamExtractor;->getErrorMessage()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 81
    new-instance v0, Lorg/schabi/newpipe/extractor/exceptions/ContentNotAvailableException;

    invoke-direct {v0, p0}, Lorg/schabi/newpipe/extractor/exceptions/ContentNotAvailableException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 83
    :cond_0
    throw v0
.end method


# virtual methods
.method public getAudioStreams()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/schabi/newpipe/extractor/stream/AudioStream;",
            ">;"
        }
    .end annotation

    .line 434
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->audioStreams:Ljava/util/List;

    return-object v0
.end method

.method public getDashMpdUrl()Ljava/lang/String;
    .locals 1

    .line 450
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->dashMpdUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getSubtitles()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/schabi/newpipe/extractor/stream/SubtitlesStream;",
            ">;"
        }
    .end annotation

    .line 514
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->subtitles:Ljava/util/List;

    return-object v0
.end method

.method public getVideoOnlyStreams()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/schabi/newpipe/extractor/stream/VideoStream;",
            ">;"
        }
    .end annotation

    .line 442
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->videoOnlyStreams:Ljava/util/List;

    return-object v0
.end method

.method public getVideoStreams()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/schabi/newpipe/extractor/stream/VideoStream;",
            ">;"
        }
    .end annotation

    .line 426
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->videoStreams:Ljava/util/List;

    return-object v0
.end method

.method public setAudioStreams(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/schabi/newpipe/extractor/stream/AudioStream;",
            ">;)V"
        }
    .end annotation

    .line 438
    iput-object p1, p0, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->audioStreams:Ljava/util/List;

    return-void
.end method

.method public setDashMpdUrl(Ljava/lang/String;)V
    .locals 0

    .line 454
    iput-object p1, p0, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->dashMpdUrl:Ljava/lang/String;

    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0

    .line 364
    iput-object p1, p0, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->description:Ljava/lang/String;

    return-void
.end method

.method public setDislikeCount(J)V
    .locals 0

    .line 398
    iput-wide p1, p0, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->dislikeCount:J

    return-void
.end method

.method public setDuration(J)V
    .locals 0

    .line 348
    iput-wide p1, p0, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->duration:J

    return-void
.end method

.method public setHlsUrl(Ljava/lang/String;)V
    .locals 0

    .line 486
    iput-object p1, p0, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->hlsUrl:Ljava/lang/String;

    return-void
.end method

.method public setLikeCount(J)V
    .locals 0

    .line 385
    iput-wide p1, p0, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->likeCount:J

    return-void
.end method

.method public setNextVideo(Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;)V
    .locals 0

    .line 494
    iput-object p1, p0, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->nextVideo:Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;

    return-void
.end method

.method public setRelatedStreams(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/schabi/newpipe/extractor/InfoItem;",
            ">;)V"
        }
    .end annotation

    .line 502
    iput-object p1, p0, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->relatedStreams:Ljava/util/List;

    return-void
.end method

.method public setStartPosition(J)V
    .locals 0

    .line 510
    iput-wide p1, p0, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->startPosition:J

    return-void
.end method

.method public setSubtitles(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/schabi/newpipe/extractor/stream/SubtitlesStream;",
            ">;)V"
        }
    .end annotation

    .line 518
    iput-object p1, p0, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->subtitles:Ljava/util/List;

    return-void
.end method

.method public setThumbnailUrl(Ljava/lang/String;)V
    .locals 0

    .line 327
    iput-object p1, p0, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->thumbnailUrl:Ljava/lang/String;

    return-void
.end method

.method public setUploadDate(Ljava/lang/String;)V
    .locals 0

    .line 335
    iput-object p1, p0, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->uploadDate:Ljava/lang/String;

    return-void
.end method

.method public setUploaderAvatarUrl(Ljava/lang/String;)V
    .locals 0

    .line 422
    iput-object p1, p0, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->uploaderAvatarUrl:Ljava/lang/String;

    return-void
.end method

.method public setUploaderName(Ljava/lang/String;)V
    .locals 0

    .line 406
    iput-object p1, p0, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->uploaderName:Ljava/lang/String;

    return-void
.end method

.method public setUploaderUrl(Ljava/lang/String;)V
    .locals 0

    .line 414
    iput-object p1, p0, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->uploaderUrl:Ljava/lang/String;

    return-void
.end method

.method public setVideoOnlyStreams(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/schabi/newpipe/extractor/stream/VideoStream;",
            ">;)V"
        }
    .end annotation

    .line 446
    iput-object p1, p0, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->videoOnlyStreams:Ljava/util/List;

    return-void
.end method

.method public setVideoStreams(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/schabi/newpipe/extractor/stream/VideoStream;",
            ">;)V"
        }
    .end annotation

    .line 430
    iput-object p1, p0, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->videoStreams:Ljava/util/List;

    return-void
.end method

.method public setViewCount(J)V
    .locals 0

    .line 372
    iput-wide p1, p0, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->viewCount:J

    return-void
.end method
