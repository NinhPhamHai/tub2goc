.class public Lorg/schabi/newpipe/extractor/services/soundcloud/SoundcloudService;
.super Lorg/schabi/newpipe/extractor/StreamingService;
.source "SoundcloudService.java"


# direct methods
.method public constructor <init>(I)V
    .locals 2

    .line 28
    sget-object v0, Lorg/schabi/newpipe/extractor/StreamingService$ServiceInfo$MediaCapability;->AUDIO:Lorg/schabi/newpipe/extractor/StreamingService$ServiceInfo$MediaCapability;

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const-string v1, "SoundCloud"

    invoke-direct {p0, p1, v1, v0}, Lorg/schabi/newpipe/extractor/StreamingService;-><init>(ILjava/lang/String;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public getStreamExtractor(Lorg/schabi/newpipe/extractor/linkhandler/LinkHandler;Lorg/schabi/newpipe/extractor/utils/Localization;)Lorg/schabi/newpipe/extractor/stream/StreamExtractor;
    .locals 1

    .line 59
    new-instance v0, Lorg/schabi/newpipe/extractor/services/soundcloud/SoundcloudStreamExtractor;

    invoke-direct {v0, p0, p1, p2}, Lorg/schabi/newpipe/extractor/services/soundcloud/SoundcloudStreamExtractor;-><init>(Lorg/schabi/newpipe/extractor/StreamingService;Lorg/schabi/newpipe/extractor/linkhandler/LinkHandler;Lorg/schabi/newpipe/extractor/utils/Localization;)V

    return-object v0
.end method

.method public getStreamLHFactory()Lorg/schabi/newpipe/extractor/linkhandler/LinkHandlerFactory;
    .locals 1

    .line 43
    invoke-static {}, Lorg/schabi/newpipe/extractor/services/soundcloud/SoundcloudStreamLinkHandlerFactory;->getInstance()Lorg/schabi/newpipe/extractor/services/soundcloud/SoundcloudStreamLinkHandlerFactory;

    move-result-object v0

    return-object v0
.end method
