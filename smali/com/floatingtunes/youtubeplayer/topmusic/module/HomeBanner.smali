.class public Lcom/floatingtunes/youtubeplayer/topmusic/module/HomeBanner;
.super Ljava/lang/Object;
.source "HomeBanner.java"


# instance fields
.field hot_charts:Lcom/floatingtunes/youtubeplayer/topmusic/module/PlaylistBean;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getHot_charts()Lcom/floatingtunes/youtubeplayer/topmusic/module/PlaylistBean;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/module/HomeBanner;->hot_charts:Lcom/floatingtunes/youtubeplayer/topmusic/module/PlaylistBean;

    return-object v0
.end method
