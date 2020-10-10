.class public Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicConfig;
.super Ljava/lang/Object;
.source "MusicConfig.java"


# instance fields
.field private data_update_time:J

.field private hot_search_keys:Ljava/lang/String;

.field private musicBean:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getData_update_time()J
    .locals 2

    .line 46
    iget-wide v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicConfig;->data_update_time:J

    return-wide v0
.end method

.method public getHot_search_keys()Ljava/lang/String;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicConfig;->hot_search_keys:Ljava/lang/String;

    return-object v0
.end method

.method public getMusicBean()Ljava/lang/String;
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicConfig;->musicBean:Ljava/lang/String;

    return-object v0
.end method
