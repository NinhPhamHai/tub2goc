.class public Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/VideoCache;
.super Ljava/lang/Object;
.source "VideoCache.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/VideoCache;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private ID:Ljava/lang/Long;

.field private mChannelTitle:Ljava/lang/String;

.field private mDuration:Ljava/lang/String;

.field private mFolderId:Ljava/lang/String;

.field private mPlaylistId:Ljava/lang/String;

.field private mThumbnails:Ljava/lang/String;

.field private mTitle:Ljava/lang/String;

.field private mVideoId:Ljava/lang/String;

.field private mViewCount:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 101
    new-instance v0, Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/VideoCache$1;

    invoke-direct {v0}, Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/VideoCache$1;-><init>()V

    sput-object v0, Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/VideoCache;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 45
    iput-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/VideoCache;->ID:Ljava/lang/Long;

    goto :goto_0

    .line 47
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/VideoCache;->ID:Ljava/lang/Long;

    .line 49
    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/VideoCache;->mFolderId:Ljava/lang/String;

    .line 50
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/VideoCache;->mVideoId:Ljava/lang/String;

    .line 51
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/VideoCache;->mTitle:Ljava/lang/String;

    .line 52
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/VideoCache;->mThumbnails:Ljava/lang/String;

    .line 53
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/VideoCache;->mChannelTitle:Ljava/lang/String;

    .line 54
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/VideoCache;->mDuration:Ljava/lang/String;

    .line 55
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/VideoCache;->mViewCount:Ljava/lang/String;

    .line 56
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/VideoCache;->mPlaylistId:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;)V
    .locals 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    invoke-virtual {p1}, Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;->getVideoId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/VideoCache;->mVideoId:Ljava/lang/String;

    .line 34
    invoke-virtual {p1}, Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;->getTitle()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/VideoCache;->mTitle:Ljava/lang/String;

    .line 35
    invoke-virtual {p1}, Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;->getThumbnails()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/VideoCache;->mThumbnails:Ljava/lang/String;

    .line 36
    invoke-virtual {p1}, Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;->getChannelTitle()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/VideoCache;->mChannelTitle:Ljava/lang/String;

    .line 37
    invoke-virtual {p1}, Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;->getDuration()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/VideoCache;->mDuration:Ljava/lang/String;

    .line 38
    invoke-virtual {p1}, Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;->getViewCount()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/VideoCache;->mViewCount:Ljava/lang/String;

    .line 39
    invoke-virtual {p1}, Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;->getPlaylistId()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/VideoCache;->mPlaylistId:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/VideoCache;->ID:Ljava/lang/Long;

    .line 64
    iput-object p2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/VideoCache;->mFolderId:Ljava/lang/String;

    .line 65
    iput-object p3, p0, Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/VideoCache;->mVideoId:Ljava/lang/String;

    .line 66
    iput-object p4, p0, Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/VideoCache;->mTitle:Ljava/lang/String;

    .line 67
    iput-object p5, p0, Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/VideoCache;->mThumbnails:Ljava/lang/String;

    .line 68
    iput-object p6, p0, Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/VideoCache;->mChannelTitle:Ljava/lang/String;

    .line 69
    iput-object p7, p0, Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/VideoCache;->mDuration:Ljava/lang/String;

    .line 70
    iput-object p8, p0, Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/VideoCache;->mViewCount:Ljava/lang/String;

    .line 71
    iput-object p9, p0, Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/VideoCache;->mPlaylistId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getID()Ljava/lang/Long;
    .locals 1

    .line 114
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/VideoCache;->ID:Ljava/lang/Long;

    return-object v0
.end method

.method public getMChannelTitle()Ljava/lang/String;
    .locals 1

    .line 218
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/VideoCache;->mChannelTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getMDuration()Ljava/lang/String;
    .locals 1

    .line 226
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/VideoCache;->mDuration:Ljava/lang/String;

    return-object v0
.end method

.method public getMFolderId()Ljava/lang/String;
    .locals 1

    .line 186
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/VideoCache;->mFolderId:Ljava/lang/String;

    return-object v0
.end method

.method public getMPlaylistId()Ljava/lang/String;
    .locals 1

    .line 242
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/VideoCache;->mPlaylistId:Ljava/lang/String;

    return-object v0
.end method

.method public getMThumbnails()Ljava/lang/String;
    .locals 1

    .line 210
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/VideoCache;->mThumbnails:Ljava/lang/String;

    return-object v0
.end method

.method public getMTitle()Ljava/lang/String;
    .locals 1

    .line 202
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/VideoCache;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getMVideoId()Ljava/lang/String;
    .locals 1

    .line 194
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/VideoCache;->mVideoId:Ljava/lang/String;

    return-object v0
.end method

.method public getMViewCount()Ljava/lang/String;
    .locals 1

    .line 234
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/VideoCache;->mViewCount:Ljava/lang/String;

    return-object v0
.end method

.method public setID(Ljava/lang/Long;)V
    .locals 0

    .line 118
    iput-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/VideoCache;->ID:Ljava/lang/Long;

    return-void
.end method

.method public setMFolderId(Ljava/lang/String;)V
    .locals 0

    .line 190
    iput-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/VideoCache;->mFolderId:Ljava/lang/String;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 80
    iget-object p2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/VideoCache;->ID:Ljava/lang/Long;

    if-nez p2, :cond_0

    const/4 p2, 0x0

    .line 81
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    goto :goto_0

    :cond_0
    const/4 p2, 0x1

    .line 83
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 84
    iget-object p2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/VideoCache;->ID:Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 86
    :goto_0
    iget-object p2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/VideoCache;->mFolderId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 87
    iget-object p2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/VideoCache;->mVideoId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 88
    iget-object p2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/VideoCache;->mTitle:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 89
    iget-object p2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/VideoCache;->mThumbnails:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 90
    iget-object p2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/VideoCache;->mChannelTitle:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 91
    iget-object p2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/VideoCache;->mDuration:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 92
    iget-object p2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/VideoCache;->mViewCount:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 93
    iget-object p2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/VideoCache;->mPlaylistId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
