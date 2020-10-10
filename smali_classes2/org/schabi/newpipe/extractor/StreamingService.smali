.class public abstract Lorg/schabi/newpipe/extractor/StreamingService;
.super Ljava/lang/Object;
.source "StreamingService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/schabi/newpipe/extractor/StreamingService$ServiceInfo;
    }
.end annotation


# instance fields
.field private final serviceId:I

.field private final serviceInfo:Lorg/schabi/newpipe/extractor/StreamingService$ServiceInfo;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lorg/schabi/newpipe/extractor/StreamingService$ServiceInfo$MediaCapability;",
            ">;)V"
        }
    .end annotation

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    iput p1, p0, Lorg/schabi/newpipe/extractor/StreamingService;->serviceId:I

    .line 99
    new-instance p1, Lorg/schabi/newpipe/extractor/StreamingService$ServiceInfo;

    invoke-direct {p1, p2, p3}, Lorg/schabi/newpipe/extractor/StreamingService$ServiceInfo;-><init>(Ljava/lang/String;Ljava/util/List;)V

    iput-object p1, p0, Lorg/schabi/newpipe/extractor/StreamingService;->serviceInfo:Lorg/schabi/newpipe/extractor/StreamingService$ServiceInfo;

    return-void
.end method


# virtual methods
.method public final getServiceId()I
    .locals 1

    .line 103
    iget v0, p0, Lorg/schabi/newpipe/extractor/StreamingService;->serviceId:I

    return v0
.end method

.method public getStreamExtractor(Ljava/lang/String;)Lorg/schabi/newpipe/extractor/stream/StreamExtractor;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/schabi/newpipe/extractor/exceptions/ExtractionException;
        }
    .end annotation

    .line 288
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/StreamingService;->getStreamLHFactory()Lorg/schabi/newpipe/extractor/linkhandler/LinkHandlerFactory;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/schabi/newpipe/extractor/linkhandler/LinkHandlerFactory;->fromUrl(Ljava/lang/String;)Lorg/schabi/newpipe/extractor/linkhandler/LinkHandler;

    move-result-object p1

    invoke-static {}, Lorg/schabi/newpipe/extractor/NewPipe;->getPreferredLocalization()Lorg/schabi/newpipe/extractor/utils/Localization;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/schabi/newpipe/extractor/StreamingService;->getStreamExtractor(Lorg/schabi/newpipe/extractor/linkhandler/LinkHandler;Lorg/schabi/newpipe/extractor/utils/Localization;)Lorg/schabi/newpipe/extractor/stream/StreamExtractor;

    move-result-object p1

    return-object p1
.end method

.method public abstract getStreamExtractor(Lorg/schabi/newpipe/extractor/linkhandler/LinkHandler;Lorg/schabi/newpipe/extractor/utils/Localization;)Lorg/schabi/newpipe/extractor/stream/StreamExtractor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/schabi/newpipe/extractor/exceptions/ExtractionException;
        }
    .end annotation
.end method

.method public abstract getStreamLHFactory()Lorg/schabi/newpipe/extractor/linkhandler/LinkHandlerFactory;
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 112
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lorg/schabi/newpipe/extractor/StreamingService;->serviceId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/schabi/newpipe/extractor/StreamingService;->serviceInfo:Lorg/schabi/newpipe/extractor/StreamingService$ServiceInfo;

    invoke-virtual {v1}, Lorg/schabi/newpipe/extractor/StreamingService$ServiceInfo;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
