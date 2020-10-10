.class public Lorg/schabi/newpipe/extractor/utils/DashMpdParser$ParserResult;
.super Ljava/lang/Object;
.source "DashMpdParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/schabi/newpipe/extractor/utils/DashMpdParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ParserResult"
.end annotation


# instance fields
.field private final audioStreams:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/schabi/newpipe/extractor/stream/AudioStream;",
            ">;"
        }
    .end annotation
.end field

.field private final segmentedAudioStreams:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/schabi/newpipe/extractor/stream/AudioStream;",
            ">;"
        }
    .end annotation
.end field

.field private final segmentedVideoOnlyStreams:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/schabi/newpipe/extractor/stream/VideoStream;",
            ">;"
        }
    .end annotation
.end field

.field private final segmentedVideoStreams:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/schabi/newpipe/extractor/stream/VideoStream;",
            ">;"
        }
    .end annotation
.end field

.field private final videoOnlyStreams:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/schabi/newpipe/extractor/stream/VideoStream;",
            ">;"
        }
    .end annotation
.end field

.field private final videoStreams:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/schabi/newpipe/extractor/stream/VideoStream;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/schabi/newpipe/extractor/stream/VideoStream;",
            ">;",
            "Ljava/util/List<",
            "Lorg/schabi/newpipe/extractor/stream/AudioStream;",
            ">;",
            "Ljava/util/List<",
            "Lorg/schabi/newpipe/extractor/stream/VideoStream;",
            ">;",
            "Ljava/util/List<",
            "Lorg/schabi/newpipe/extractor/stream/VideoStream;",
            ">;",
            "Ljava/util/List<",
            "Lorg/schabi/newpipe/extractor/stream/AudioStream;",
            ">;",
            "Ljava/util/List<",
            "Lorg/schabi/newpipe/extractor/stream/VideoStream;",
            ">;)V"
        }
    .end annotation

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput-object p1, p0, Lorg/schabi/newpipe/extractor/utils/DashMpdParser$ParserResult;->videoStreams:Ljava/util/List;

    .line 74
    iput-object p2, p0, Lorg/schabi/newpipe/extractor/utils/DashMpdParser$ParserResult;->audioStreams:Ljava/util/List;

    .line 75
    iput-object p3, p0, Lorg/schabi/newpipe/extractor/utils/DashMpdParser$ParserResult;->videoOnlyStreams:Ljava/util/List;

    .line 76
    iput-object p4, p0, Lorg/schabi/newpipe/extractor/utils/DashMpdParser$ParserResult;->segmentedVideoStreams:Ljava/util/List;

    .line 77
    iput-object p5, p0, Lorg/schabi/newpipe/extractor/utils/DashMpdParser$ParserResult;->segmentedAudioStreams:Ljava/util/List;

    .line 78
    iput-object p6, p0, Lorg/schabi/newpipe/extractor/utils/DashMpdParser$ParserResult;->segmentedVideoOnlyStreams:Ljava/util/List;

    return-void
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

    .line 86
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/utils/DashMpdParser$ParserResult;->audioStreams:Ljava/util/List;

    return-object v0
.end method

.method public getSegmentedAudioStreams()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/schabi/newpipe/extractor/stream/AudioStream;",
            ">;"
        }
    .end annotation

    .line 98
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/utils/DashMpdParser$ParserResult;->segmentedAudioStreams:Ljava/util/List;

    return-object v0
.end method

.method public getSegmentedVideoOnlyStreams()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/schabi/newpipe/extractor/stream/VideoStream;",
            ">;"
        }
    .end annotation

    .line 102
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/utils/DashMpdParser$ParserResult;->segmentedVideoOnlyStreams:Ljava/util/List;

    return-object v0
.end method

.method public getSegmentedVideoStreams()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/schabi/newpipe/extractor/stream/VideoStream;",
            ">;"
        }
    .end annotation

    .line 94
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/utils/DashMpdParser$ParserResult;->segmentedVideoStreams:Ljava/util/List;

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

    .line 90
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/utils/DashMpdParser$ParserResult;->videoOnlyStreams:Ljava/util/List;

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

    .line 82
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/utils/DashMpdParser$ParserResult;->videoStreams:Ljava/util/List;

    return-object v0
.end method
