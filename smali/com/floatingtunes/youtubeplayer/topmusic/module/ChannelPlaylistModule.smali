.class public Lcom/floatingtunes/youtubeplayer/topmusic/module/ChannelPlaylistModule;
.super Ljava/lang/Object;
.source "ChannelPlaylistModule.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/floatingtunes/youtubeplayer/topmusic/module/ChannelPlaylistModule$Snippet;,
        Lcom/floatingtunes/youtubeplayer/topmusic/module/ChannelPlaylistModule$ChannelPlaylist;
    }
.end annotation


# instance fields
.field private items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/floatingtunes/youtubeplayer/topmusic/module/ChannelPlaylistModule$ChannelPlaylist;",
            ">;"
        }
    .end annotation
.end field

.field private nextPageToken:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/floatingtunes/youtubeplayer/topmusic/module/ChannelPlaylistModule$ChannelPlaylist;",
            ">;"
        }
    .end annotation

    .line 35
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/module/ChannelPlaylistModule;->items:Ljava/util/List;

    return-object v0
.end method

.method public getNextPageToken()Ljava/lang/String;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/module/ChannelPlaylistModule;->nextPageToken:Ljava/lang/String;

    return-object v0
.end method
