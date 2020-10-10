.class public Lcom/floatingtunes/youtubeplayer/topmusic/download/DownloadDialog$$Icepick;
.super Licepick/Injector$Object;
.source "DownloadDialog$$Icepick.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/floatingtunes/youtubeplayer/topmusic/download/DownloadDialog;",
        ">",
        "Licepick/Injector$Object<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final BUNDLERS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Licepick/Bundler<",
            "*>;>;"
        }
    .end annotation
.end field

.field private static final H:Licepick/Injector$Helper;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 13
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/DownloadDialog$$Icepick;->BUNDLERS:Ljava/util/Map;

    .line 18
    new-instance v0, Licepick/Injector$Helper;

    sget-object v1, Lcom/floatingtunes/youtubeplayer/topmusic/download/DownloadDialog$$Icepick;->BUNDLERS:Ljava/util/Map;

    const-string v2, "com.floatingtunes.youtubeplayer.topmusic.download.DownloadDialog$$Icepick."

    invoke-direct {v0, v2, v1}, Licepick/Injector$Helper;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    sput-object v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/DownloadDialog$$Icepick;->H:Licepick/Injector$Helper;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Licepick/Injector$Object;-><init>()V

    return-void
.end method


# virtual methods
.method public restore(Lcom/floatingtunes/youtubeplayer/topmusic/download/DownloadDialog;Landroid/os/Bundle;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    if-nez p2, :cond_0

    return-void

    .line 22
    :cond_0
    sget-object v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/DownloadDialog$$Icepick;->H:Licepick/Injector$Helper;

    const-string v1, "currentInfo"

    invoke-virtual {v0, p2, v1}, Licepick/Injector$Helper;->getSerializable(Landroid/os/Bundle;Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lorg/schabi/newpipe/extractor/stream/StreamInfo;

    iput-object v0, p1, Lcom/floatingtunes/youtubeplayer/topmusic/download/DownloadDialog;->currentInfo:Lorg/schabi/newpipe/extractor/stream/StreamInfo;

    .line 23
    sget-object v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/DownloadDialog$$Icepick;->H:Licepick/Injector$Helper;

    const-string v1, "wrappedAudioStreams"

    invoke-virtual {v0, p2, v1}, Licepick/Injector$Helper;->getSerializable(Landroid/os/Bundle;Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/util/StreamItemAdapter$StreamSizeWrapper;

    iput-object v0, p1, Lcom/floatingtunes/youtubeplayer/topmusic/download/DownloadDialog;->wrappedAudioStreams:Lcom/floatingtunes/youtubeplayer/topmusic/download/util/StreamItemAdapter$StreamSizeWrapper;

    .line 24
    sget-object v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/DownloadDialog$$Icepick;->H:Licepick/Injector$Helper;

    const-string v1, "wrappedVideoStreams"

    invoke-virtual {v0, p2, v1}, Licepick/Injector$Helper;->getSerializable(Landroid/os/Bundle;Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/util/StreamItemAdapter$StreamSizeWrapper;

    iput-object v0, p1, Lcom/floatingtunes/youtubeplayer/topmusic/download/DownloadDialog;->wrappedVideoStreams:Lcom/floatingtunes/youtubeplayer/topmusic/download/util/StreamItemAdapter$StreamSizeWrapper;

    .line 25
    sget-object v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/DownloadDialog$$Icepick;->H:Licepick/Injector$Helper;

    const-string v1, "wrappedSubtitleStreams"

    invoke-virtual {v0, p2, v1}, Licepick/Injector$Helper;->getSerializable(Landroid/os/Bundle;Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/util/StreamItemAdapter$StreamSizeWrapper;

    iput-object v0, p1, Lcom/floatingtunes/youtubeplayer/topmusic/download/DownloadDialog;->wrappedSubtitleStreams:Lcom/floatingtunes/youtubeplayer/topmusic/download/util/StreamItemAdapter$StreamSizeWrapper;

    .line 26
    sget-object v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/DownloadDialog$$Icepick;->H:Licepick/Injector$Helper;

    const-string v1, "selectedVideoIndex"

    invoke-virtual {v0, p2, v1}, Licepick/Injector$Helper;->getInt(Landroid/os/Bundle;Ljava/lang/String;)I

    move-result v0

    iput v0, p1, Lcom/floatingtunes/youtubeplayer/topmusic/download/DownloadDialog;->selectedVideoIndex:I

    .line 27
    sget-object v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/DownloadDialog$$Icepick;->H:Licepick/Injector$Helper;

    const-string v1, "selectedAudioIndex"

    invoke-virtual {v0, p2, v1}, Licepick/Injector$Helper;->getInt(Landroid/os/Bundle;Ljava/lang/String;)I

    move-result v0

    iput v0, p1, Lcom/floatingtunes/youtubeplayer/topmusic/download/DownloadDialog;->selectedAudioIndex:I

    .line 28
    sget-object v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/DownloadDialog$$Icepick;->H:Licepick/Injector$Helper;

    const-string v1, "selectedSubtitleIndex"

    invoke-virtual {v0, p2, v1}, Licepick/Injector$Helper;->getInt(Landroid/os/Bundle;Ljava/lang/String;)I

    move-result v0

    iput v0, p1, Lcom/floatingtunes/youtubeplayer/topmusic/download/DownloadDialog;->selectedSubtitleIndex:I

    .line 29
    invoke-super {p0, p1, p2}, Licepick/Injector$Object;->restore(Ljava/lang/Object;Landroid/os/Bundle;)V

    return-void
.end method

.method public bridge synthetic restore(Ljava/lang/Object;Landroid/os/Bundle;)V
    .locals 0

    .line 11
    check-cast p1, Lcom/floatingtunes/youtubeplayer/topmusic/download/DownloadDialog;

    invoke-virtual {p0, p1, p2}, Lcom/floatingtunes/youtubeplayer/topmusic/download/DownloadDialog$$Icepick;->restore(Lcom/floatingtunes/youtubeplayer/topmusic/download/DownloadDialog;Landroid/os/Bundle;)V

    return-void
.end method

.method public save(Lcom/floatingtunes/youtubeplayer/topmusic/download/DownloadDialog;Landroid/os/Bundle;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .line 33
    invoke-super {p0, p1, p2}, Licepick/Injector$Object;->save(Ljava/lang/Object;Landroid/os/Bundle;)V

    .line 34
    sget-object v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/DownloadDialog$$Icepick;->H:Licepick/Injector$Helper;

    iget-object v1, p1, Lcom/floatingtunes/youtubeplayer/topmusic/download/DownloadDialog;->currentInfo:Lorg/schabi/newpipe/extractor/stream/StreamInfo;

    const-string v2, "currentInfo"

    invoke-virtual {v0, p2, v2, v1}, Licepick/Injector$Helper;->putSerializable(Landroid/os/Bundle;Ljava/lang/String;Ljava/io/Serializable;)V

    .line 35
    sget-object v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/DownloadDialog$$Icepick;->H:Licepick/Injector$Helper;

    iget-object v1, p1, Lcom/floatingtunes/youtubeplayer/topmusic/download/DownloadDialog;->wrappedAudioStreams:Lcom/floatingtunes/youtubeplayer/topmusic/download/util/StreamItemAdapter$StreamSizeWrapper;

    const-string v2, "wrappedAudioStreams"

    invoke-virtual {v0, p2, v2, v1}, Licepick/Injector$Helper;->putSerializable(Landroid/os/Bundle;Ljava/lang/String;Ljava/io/Serializable;)V

    .line 36
    sget-object v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/DownloadDialog$$Icepick;->H:Licepick/Injector$Helper;

    iget-object v1, p1, Lcom/floatingtunes/youtubeplayer/topmusic/download/DownloadDialog;->wrappedVideoStreams:Lcom/floatingtunes/youtubeplayer/topmusic/download/util/StreamItemAdapter$StreamSizeWrapper;

    const-string v2, "wrappedVideoStreams"

    invoke-virtual {v0, p2, v2, v1}, Licepick/Injector$Helper;->putSerializable(Landroid/os/Bundle;Ljava/lang/String;Ljava/io/Serializable;)V

    .line 37
    sget-object v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/DownloadDialog$$Icepick;->H:Licepick/Injector$Helper;

    iget-object v1, p1, Lcom/floatingtunes/youtubeplayer/topmusic/download/DownloadDialog;->wrappedSubtitleStreams:Lcom/floatingtunes/youtubeplayer/topmusic/download/util/StreamItemAdapter$StreamSizeWrapper;

    const-string v2, "wrappedSubtitleStreams"

    invoke-virtual {v0, p2, v2, v1}, Licepick/Injector$Helper;->putSerializable(Landroid/os/Bundle;Ljava/lang/String;Ljava/io/Serializable;)V

    .line 38
    sget-object v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/DownloadDialog$$Icepick;->H:Licepick/Injector$Helper;

    iget v1, p1, Lcom/floatingtunes/youtubeplayer/topmusic/download/DownloadDialog;->selectedVideoIndex:I

    const-string v2, "selectedVideoIndex"

    invoke-virtual {v0, p2, v2, v1}, Licepick/Injector$Helper;->putInt(Landroid/os/Bundle;Ljava/lang/String;I)V

    .line 39
    sget-object v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/DownloadDialog$$Icepick;->H:Licepick/Injector$Helper;

    iget v1, p1, Lcom/floatingtunes/youtubeplayer/topmusic/download/DownloadDialog;->selectedAudioIndex:I

    const-string v2, "selectedAudioIndex"

    invoke-virtual {v0, p2, v2, v1}, Licepick/Injector$Helper;->putInt(Landroid/os/Bundle;Ljava/lang/String;I)V

    .line 40
    sget-object v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/DownloadDialog$$Icepick;->H:Licepick/Injector$Helper;

    iget p1, p1, Lcom/floatingtunes/youtubeplayer/topmusic/download/DownloadDialog;->selectedSubtitleIndex:I

    const-string v1, "selectedSubtitleIndex"

    invoke-virtual {v0, p2, v1, p1}, Licepick/Injector$Helper;->putInt(Landroid/os/Bundle;Ljava/lang/String;I)V

    return-void
.end method

.method public bridge synthetic save(Ljava/lang/Object;Landroid/os/Bundle;)V
    .locals 0

    .line 11
    check-cast p1, Lcom/floatingtunes/youtubeplayer/topmusic/download/DownloadDialog;

    invoke-virtual {p0, p1, p2}, Lcom/floatingtunes/youtubeplayer/topmusic/download/DownloadDialog$$Icepick;->save(Lcom/floatingtunes/youtubeplayer/topmusic/download/DownloadDialog;Landroid/os/Bundle;)V

    return-void
.end method
