.class public Lcom/floatingtunes/youtubeplayer/topmusic/bus/busforplay/PlayVideoChangeEvent;
.super Ljava/lang/Object;
.source "PlayVideoChangeEvent.java"


# instance fields
.field mVideo:Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;


# direct methods
.method public constructor <init>(Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/bus/busforplay/PlayVideoChangeEvent;->mVideo:Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;

    return-void
.end method


# virtual methods
.method public getVideo()Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/bus/busforplay/PlayVideoChangeEvent;->mVideo:Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;

    return-object v0
.end method
