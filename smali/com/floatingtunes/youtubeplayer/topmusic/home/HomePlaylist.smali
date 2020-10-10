.class public Lcom/floatingtunes/youtubeplayer/topmusic/home/HomePlaylist;
.super Ljava/lang/Object;
.source "HomePlaylist.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/floatingtunes/youtubeplayer/topmusic/home/HomePlaylist;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private channelTitle:Ljava/lang/String;

.field private date:Ljava/lang/Long;

.field private playlistId:Ljava/lang/String;

.field private rank:Ljava/lang/Integer;

.field private thumbnail:Ljava/lang/String;

.field private title:Ljava/lang/String;

.field private uniqueId:Ljava/lang/String;

.field private videoListId:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 57
    new-instance v0, Lcom/floatingtunes/youtubeplayer/topmusic/home/HomePlaylist$1;

    invoke-direct {v0}, Lcom/floatingtunes/youtubeplayer/topmusic/home/HomePlaylist$1;-><init>()V

    sput-object v0, Lcom/floatingtunes/youtubeplayer/topmusic/home/HomePlaylist;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 4

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/home/HomePlaylist;->uniqueId:Ljava/lang/String;

    .line 40
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 41
    iput-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/home/HomePlaylist;->date:Ljava/lang/Long;

    goto :goto_0

    .line 43
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/home/HomePlaylist;->date:Ljava/lang/Long;

    .line 45
    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/home/HomePlaylist;->title:Ljava/lang/String;

    .line 46
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/home/HomePlaylist;->thumbnail:Ljava/lang/String;

    .line 47
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/home/HomePlaylist;->channelTitle:Ljava/lang/String;

    .line 48
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-nez v0, :cond_1

    .line 49
    iput-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/home/HomePlaylist;->rank:Ljava/lang/Integer;

    goto :goto_1

    .line 51
    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/home/HomePlaylist;->rank:Ljava/lang/Integer;

    .line 53
    :goto_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/home/HomePlaylist;->playlistId:Ljava/lang/String;

    .line 54
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/home/HomePlaylist;->videoListId:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getRank()Ljava/lang/Integer;
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/home/HomePlaylist;->rank:Ljava/lang/Integer;

    return-object v0
.end method

.method public getThumbnail()Ljava/lang/String;
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/home/HomePlaylist;->thumbnail:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/home/HomePlaylist;->title:Ljava/lang/String;

    return-object v0
.end method

.method public setPlaylistId(Ljava/lang/String;)V
    .locals 0

    .line 122
    iput-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/home/HomePlaylist;->playlistId:Ljava/lang/String;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    .line 140
    iget-object p2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/home/HomePlaylist;->uniqueId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 141
    iget-object p2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/home/HomePlaylist;->date:Ljava/lang/Long;

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p2, :cond_0

    .line 142
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    goto :goto_0

    .line 144
    :cond_0
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    .line 145
    iget-object p2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/home/HomePlaylist;->date:Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 147
    :goto_0
    iget-object p2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/home/HomePlaylist;->title:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 148
    iget-object p2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/home/HomePlaylist;->thumbnail:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 149
    iget-object p2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/home/HomePlaylist;->channelTitle:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 150
    iget-object p2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/home/HomePlaylist;->rank:Ljava/lang/Integer;

    if-nez p2, :cond_1

    .line 151
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    goto :goto_1

    .line 153
    :cond_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    .line 154
    iget-object p2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/home/HomePlaylist;->rank:Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 156
    :goto_1
    iget-object p2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/home/HomePlaylist;->playlistId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 157
    iget-object p2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/home/HomePlaylist;->videoListId:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    return-void
.end method
