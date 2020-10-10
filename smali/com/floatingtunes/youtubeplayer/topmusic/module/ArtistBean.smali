.class public Lcom/floatingtunes/youtubeplayer/topmusic/module/ArtistBean;
.super Ljava/lang/Object;
.source "ArtistBean.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/floatingtunes/youtubeplayer/topmusic/module/ArtistBean;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private country:Ljava/lang/String;

.field private currentRanks:Ljava/lang/String;

.field private id:Ljava/lang/String;

.field private musicList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;",
            ">;"
        }
    .end annotation
.end field

.field private periodsOnChart:Ljava/lang/String;

.field private previousRanks:Ljava/lang/String;

.field private thumbnail:Ljava/lang/String;

.field private title:Ljava/lang/String;

.field private viewCount:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 36
    new-instance v0, Lcom/floatingtunes/youtubeplayer/topmusic/module/ArtistBean$1;

    invoke-direct {v0}, Lcom/floatingtunes/youtubeplayer/topmusic/module/ArtistBean$1;-><init>()V

    sput-object v0, Lcom/floatingtunes/youtubeplayer/topmusic/module/ArtistBean;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/module/ArtistBean;->id:Ljava/lang/String;

    .line 26
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/module/ArtistBean;->title:Ljava/lang/String;

    .line 27
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/module/ArtistBean;->viewCount:Ljava/lang/String;

    .line 28
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/module/ArtistBean;->thumbnail:Ljava/lang/String;

    .line 29
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/module/ArtistBean;->currentRanks:Ljava/lang/String;

    .line 30
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/module/ArtistBean;->previousRanks:Ljava/lang/String;

    .line 31
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/module/ArtistBean;->periodsOnChart:Ljava/lang/String;

    .line 32
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/module/ArtistBean;->country:Ljava/lang/String;

    .line 33
    sget-object v0, Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/module/ArtistBean;->musicList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getCurrentRanks()Ljava/lang/String;
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/module/ArtistBean;->currentRanks:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/module/ArtistBean;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getMusicList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;",
            ">;"
        }
    .end annotation

    .line 113
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/module/ArtistBean;->musicList:Ljava/util/List;

    return-object v0
.end method

.method public getPeriodsOnChart()Ljava/lang/String;
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/module/ArtistBean;->periodsOnChart:Ljava/lang/String;

    return-object v0
.end method

.method public getPreviousRanks()Ljava/lang/String;
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/module/ArtistBean;->previousRanks:Ljava/lang/String;

    return-object v0
.end method

.method public getThumbnail()Ljava/lang/String;
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/module/ArtistBean;->thumbnail:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/module/ArtistBean;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getViewCount()Ljava/lang/String;
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/module/ArtistBean;->viewCount:Ljava/lang/String;

    return-object v0
.end method

.method public setCountry(Ljava/lang/String;)V
    .locals 0

    .line 109
    iput-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/module/ArtistBean;->country:Ljava/lang/String;

    return-void
.end method

.method public setCurrentRanks(Ljava/lang/String;)V
    .locals 0

    .line 85
    iput-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/module/ArtistBean;->currentRanks:Ljava/lang/String;

    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/module/ArtistBean;->id:Ljava/lang/String;

    return-void
.end method

.method public setMusicList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;",
            ">;)V"
        }
    .end annotation

    .line 117
    iput-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/module/ArtistBean;->musicList:Ljava/util/List;

    return-void
.end method

.method public setPeriodsOnChart(Ljava/lang/String;)V
    .locals 0

    .line 101
    iput-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/module/ArtistBean;->periodsOnChart:Ljava/lang/String;

    return-void
.end method

.method public setPreviousRanks(Ljava/lang/String;)V
    .locals 0

    .line 93
    iput-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/module/ArtistBean;->previousRanks:Ljava/lang/String;

    return-void
.end method

.method public setThumbnail(Ljava/lang/String;)V
    .locals 0

    .line 77
    iput-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/module/ArtistBean;->thumbnail:Ljava/lang/String;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/module/ArtistBean;->title:Ljava/lang/String;

    return-void
.end method

.method public setViewCount(Ljava/lang/String;)V
    .locals 0

    .line 69
    iput-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/module/ArtistBean;->viewCount:Ljava/lang/String;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 127
    iget-object p2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/module/ArtistBean;->id:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 128
    iget-object p2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/module/ArtistBean;->title:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 129
    iget-object p2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/module/ArtistBean;->viewCount:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 130
    iget-object p2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/module/ArtistBean;->thumbnail:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 131
    iget-object p2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/module/ArtistBean;->currentRanks:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 132
    iget-object p2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/module/ArtistBean;->previousRanks:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 133
    iget-object p2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/module/ArtistBean;->periodsOnChart:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 134
    iget-object p2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/module/ArtistBean;->country:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 135
    iget-object p2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/module/ArtistBean;->musicList:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    return-void
.end method
