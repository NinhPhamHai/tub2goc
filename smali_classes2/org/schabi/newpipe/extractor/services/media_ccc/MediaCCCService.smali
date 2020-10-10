.class public Lorg/schabi/newpipe/extractor/services/media_ccc/MediaCCCService;
.super Lorg/schabi/newpipe/extractor/StreamingService;
.source "MediaCCCService.java"


# direct methods
.method public constructor <init>(I)V
    .locals 3

    const/4 v0, 0x2

    .line 38
    new-array v0, v0, [Lorg/schabi/newpipe/extractor/StreamingService$ServiceInfo$MediaCapability;

    sget-object v1, Lorg/schabi/newpipe/extractor/StreamingService$ServiceInfo$MediaCapability;->AUDIO:Lorg/schabi/newpipe/extractor/StreamingService$ServiceInfo$MediaCapability;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lorg/schabi/newpipe/extractor/StreamingService$ServiceInfo$MediaCapability;->VIDEO:Lorg/schabi/newpipe/extractor/StreamingService$ServiceInfo$MediaCapability;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const-string v1, "MediaCCC"

    invoke-direct {p0, p1, v1, v0}, Lorg/schabi/newpipe/extractor/StreamingService;-><init>(ILjava/lang/String;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public getStreamExtractor(Lorg/schabi/newpipe/extractor/linkhandler/LinkHandler;Lorg/schabi/newpipe/extractor/utils/Localization;)Lorg/schabi/newpipe/extractor/stream/StreamExtractor;
    .locals 1

    .line 68
    new-instance v0, Lorg/schabi/newpipe/extractor/services/media_ccc/extractors/MediaCCCStreamExtractor;

    invoke-direct {v0, p0, p1, p2}, Lorg/schabi/newpipe/extractor/services/media_ccc/extractors/MediaCCCStreamExtractor;-><init>(Lorg/schabi/newpipe/extractor/StreamingService;Lorg/schabi/newpipe/extractor/linkhandler/LinkHandler;Lorg/schabi/newpipe/extractor/utils/Localization;)V

    return-object v0
.end method

.method public getStreamLHFactory()Lorg/schabi/newpipe/extractor/linkhandler/LinkHandlerFactory;
    .locals 1

    .line 48
    new-instance v0, Lorg/schabi/newpipe/extractor/services/media_ccc/linkHandler/MediaCCCStreamLinkHandlerFactory;

    invoke-direct {v0}, Lorg/schabi/newpipe/extractor/services/media_ccc/linkHandler/MediaCCCStreamLinkHandlerFactory;-><init>()V

    return-object v0
.end method
