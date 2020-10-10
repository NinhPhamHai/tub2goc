.class public abstract Lorg/schabi/newpipe/extractor/Extractor;
.super Ljava/lang/Object;
.source "Extractor.java"


# instance fields
.field private final downloader:Lorg/schabi/newpipe/extractor/Downloader;

.field private final linkHandler:Lorg/schabi/newpipe/extractor/linkhandler/LinkHandler;

.field private final localization:Lorg/schabi/newpipe/extractor/utils/Localization;

.field private pageFetched:Z

.field private final service:Lorg/schabi/newpipe/extractor/StreamingService;


# direct methods
.method public constructor <init>(Lorg/schabi/newpipe/extractor/StreamingService;Lorg/schabi/newpipe/extractor/linkhandler/LinkHandler;Lorg/schabi/newpipe/extractor/utils/Localization;)V
    .locals 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 23
    iput-boolean v0, p0, Lorg/schabi/newpipe/extractor/Extractor;->pageFetched:Z

    if-eqz p1, :cond_2

    if-eqz p2, :cond_1

    .line 30
    iput-object p1, p0, Lorg/schabi/newpipe/extractor/Extractor;->service:Lorg/schabi/newpipe/extractor/StreamingService;

    .line 31
    iput-object p2, p0, Lorg/schabi/newpipe/extractor/Extractor;->linkHandler:Lorg/schabi/newpipe/extractor/linkhandler/LinkHandler;

    .line 32
    invoke-static {}, Lorg/schabi/newpipe/extractor/NewPipe;->getDownloader()Lorg/schabi/newpipe/extractor/Downloader;

    move-result-object p1

    iput-object p1, p0, Lorg/schabi/newpipe/extractor/Extractor;->downloader:Lorg/schabi/newpipe/extractor/Downloader;

    .line 33
    iput-object p3, p0, Lorg/schabi/newpipe/extractor/Extractor;->localization:Lorg/schabi/newpipe/extractor/utils/Localization;

    .line 34
    iget-object p1, p0, Lorg/schabi/newpipe/extractor/Extractor;->downloader:Lorg/schabi/newpipe/extractor/Downloader;

    if-eqz p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "downloader is null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 29
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "LinkHandler is null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 28
    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "service is null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method protected assertPageFetched()V
    .locals 2

    .line 57
    iget-boolean v0, p0, Lorg/schabi/newpipe/extractor/Extractor;->pageFetched:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Page is not fetched. Make sure you call fetchPage()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public fetchPage()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/schabi/newpipe/extractor/exceptions/ExtractionException;
        }
    .end annotation

    .line 51
    iget-boolean v0, p0, Lorg/schabi/newpipe/extractor/Extractor;->pageFetched:Z

    if-eqz v0, :cond_0

    return-void

    .line 52
    :cond_0
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/Extractor;->downloader:Lorg/schabi/newpipe/extractor/Downloader;

    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/extractor/Extractor;->onFetchPage(Lorg/schabi/newpipe/extractor/Downloader;)V

    const/4 v0, 0x1

    .line 53
    iput-boolean v0, p0, Lorg/schabi/newpipe/extractor/Extractor;->pageFetched:Z

    return-void
.end method

.method public getId()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/schabi/newpipe/extractor/exceptions/ParsingException;
        }
    .end annotation

    .line 74
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/Extractor;->linkHandler:Lorg/schabi/newpipe/extractor/linkhandler/LinkHandler;

    invoke-virtual {v0}, Lorg/schabi/newpipe/extractor/linkhandler/LinkHandler;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLinkHandler()Lorg/schabi/newpipe/extractor/linkhandler/LinkHandler;
    .locals 1

    .line 42
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/Extractor;->linkHandler:Lorg/schabi/newpipe/extractor/linkhandler/LinkHandler;

    return-object v0
.end method

.method public abstract getName()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/schabi/newpipe/extractor/exceptions/ParsingException;
        }
    .end annotation
.end method

.method public getOriginalUrl()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/schabi/newpipe/extractor/exceptions/ParsingException;
        }
    .end annotation

    .line 87
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/Extractor;->linkHandler:Lorg/schabi/newpipe/extractor/linkhandler/LinkHandler;

    invoke-virtual {v0}, Lorg/schabi/newpipe/extractor/linkhandler/LinkHandler;->getOriginalUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getServiceId()I
    .locals 1

    .line 101
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/Extractor;->service:Lorg/schabi/newpipe/extractor/StreamingService;

    invoke-virtual {v0}, Lorg/schabi/newpipe/extractor/StreamingService;->getServiceId()I

    move-result v0

    return v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/schabi/newpipe/extractor/exceptions/ParsingException;
        }
    .end annotation

    .line 92
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/Extractor;->linkHandler:Lorg/schabi/newpipe/extractor/linkhandler/LinkHandler;

    invoke-virtual {v0}, Lorg/schabi/newpipe/extractor/linkhandler/LinkHandler;->getUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public abstract onFetchPage(Lorg/schabi/newpipe/extractor/Downloader;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/schabi/newpipe/extractor/exceptions/ExtractionException;
        }
    .end annotation
.end method
