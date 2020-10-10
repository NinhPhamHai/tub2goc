.class public Lcom/floatingtunes/youtubeplayer/topmusic/module/TopCountry;
.super Ljava/lang/Object;
.source "TopCountry.java"


# instance fields
.field private artist_list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/floatingtunes/youtubeplayer/topmusic/module/ArtistBean;",
            ">;"
        }
    .end annotation
.end field

.field private top_mv_list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;",
            ">;"
        }
    .end annotation
.end field

.field private top_songs_list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;",
            ">;"
        }
    .end annotation
.end field

.field private trending_mv_list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;",
            ">;"
        }
    .end annotation
.end field

.field private update_time:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/module/TopCountry;->top_songs_list:Ljava/util/List;

    .line 9
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/module/TopCountry;->top_mv_list:Ljava/util/List;

    .line 10
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/module/TopCountry;->trending_mv_list:Ljava/util/List;

    .line 11
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/module/TopCountry;->artist_list:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getArtist_list()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/floatingtunes/youtubeplayer/topmusic/module/ArtistBean;",
            ">;"
        }
    .end annotation

    .line 47
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/module/TopCountry;->artist_list:Ljava/util/List;

    return-object v0
.end method

.method public getTop_mv_list()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;",
            ">;"
        }
    .end annotation

    .line 31
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/module/TopCountry;->top_mv_list:Ljava/util/List;

    return-object v0
.end method

.method public getTop_songs_list()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;",
            ">;"
        }
    .end annotation

    .line 23
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/module/TopCountry;->top_songs_list:Ljava/util/List;

    return-object v0
.end method

.method public getTrending_mv_list()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;",
            ">;"
        }
    .end annotation

    .line 39
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/module/TopCountry;->trending_mv_list:Ljava/util/List;

    return-object v0
.end method

.method public getUpdate_time()Ljava/lang/String;
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/module/TopCountry;->update_time:Ljava/lang/String;

    return-object v0
.end method

.method public setArtist_list(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/floatingtunes/youtubeplayer/topmusic/module/ArtistBean;",
            ">;)V"
        }
    .end annotation

    .line 51
    iput-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/module/TopCountry;->artist_list:Ljava/util/List;

    return-void
.end method

.method public setTop_mv_list(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;",
            ">;)V"
        }
    .end annotation

    .line 35
    iput-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/module/TopCountry;->top_mv_list:Ljava/util/List;

    return-void
.end method

.method public setTop_songs_list(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;",
            ">;)V"
        }
    .end annotation

    .line 27
    iput-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/module/TopCountry;->top_songs_list:Ljava/util/List;

    return-void
.end method

.method public setTrending_mv_list(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;",
            ">;)V"
        }
    .end annotation

    .line 43
    iput-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/module/TopCountry;->trending_mv_list:Ljava/util/List;

    return-void
.end method

.method public setUpdate_time(Ljava/lang/String;)V
    .locals 0

    .line 19
    iput-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/module/TopCountry;->update_time:Ljava/lang/String;

    return-void
.end method
