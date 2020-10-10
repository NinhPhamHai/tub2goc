.class public Lcom/floatingtunes/youtubeplayer/topmusic/module/ChannelPlaylistModule$ChannelPlaylist;
.super Ljava/lang/Object;
.source "ChannelPlaylistModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/floatingtunes/youtubeplayer/topmusic/module/ChannelPlaylistModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ChannelPlaylist"
.end annotation


# instance fields
.field id:Ljava/lang/String;

.field snippet:Lcom/floatingtunes/youtubeplayer/topmusic/module/ChannelPlaylistModule$Snippet;


# virtual methods
.method public getId()Ljava/lang/String;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/module/ChannelPlaylistModule$ChannelPlaylist;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getSnippet()Lcom/floatingtunes/youtubeplayer/topmusic/module/ChannelPlaylistModule$Snippet;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/module/ChannelPlaylistModule$ChannelPlaylist;->snippet:Lcom/floatingtunes/youtubeplayer/topmusic/module/ChannelPlaylistModule$Snippet;

    return-object v0
.end method
