.class public Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;
.super Ljava/lang/Object;
.source "MusicBean.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mChannelTitle:Ljava/lang/String;

.field private mCurrentRanks:Ljava/lang/String;

.field private mDate:Ljava/lang/String;

.field private mDuration:Ljava/lang/String;

.field private mPeriodsOnChart:Ljava/lang/String;

.field private mPlaylistId:Ljava/lang/String;

.field private mPreviousRanks:Ljava/lang/String;

.field private mThumbnails:Ljava/lang/String;

.field private mTitle:Ljava/lang/String;

.field private mVideoId:Ljava/lang/String;

.field private mViewCount:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 75
    new-instance v0, Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean$1;

    invoke-direct {v0}, Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean$1;-><init>()V

    sput-object v0, Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;->mVideoId:Ljava/lang/String;

    .line 63
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;->mTitle:Ljava/lang/String;

    .line 64
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;->mThumbnails:Ljava/lang/String;

    .line 65
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;->mChannelTitle:Ljava/lang/String;

    .line 66
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;->mDuration:Ljava/lang/String;

    .line 67
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;->mViewCount:Ljava/lang/String;

    .line 68
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;->mPlaylistId:Ljava/lang/String;

    .line 69
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;->mDate:Ljava/lang/String;

    .line 70
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;->mCurrentRanks:Ljava/lang/String;

    .line 71
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;->mPreviousRanks:Ljava/lang/String;

    .line 72
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;->mPeriodsOnChart:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/VideoCache;)V
    .locals 1

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    invoke-virtual {p1}, Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/VideoCache;->getMVideoId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;->mVideoId:Ljava/lang/String;

    .line 52
    invoke-virtual {p1}, Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/VideoCache;->getMTitle()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;->mTitle:Ljava/lang/String;

    .line 53
    invoke-virtual {p1}, Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/VideoCache;->getMThumbnails()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;->mThumbnails:Ljava/lang/String;

    .line 54
    invoke-virtual {p1}, Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/VideoCache;->getMChannelTitle()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;->mChannelTitle:Ljava/lang/String;

    .line 55
    invoke-virtual {p1}, Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/VideoCache;->getMDuration()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;->mDuration:Ljava/lang/String;

    .line 56
    invoke-virtual {p1}, Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/VideoCache;->getMViewCount()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;->mViewCount:Ljava/lang/String;

    .line 57
    invoke-virtual {p1}, Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/VideoCache;->getMPlaylistId()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;->mPlaylistId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 208
    check-cast p1, Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;

    .line 209
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;->mVideoId:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;->getVideoId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public getChannelTitle()Ljava/lang/String;
    .locals 1

    .line 126
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;->mChannelTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrentRanks()Ljava/lang/String;
    .locals 1

    .line 162
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;->mCurrentRanks:Ljava/lang/String;

    return-object v0
.end method

.method public getDate()Ljava/lang/String;
    .locals 1

    .line 178
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;->mDate:Ljava/lang/String;

    return-object v0
.end method

.method public getDuration()Ljava/lang/String;
    .locals 1

    .line 134
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;->mDuration:Ljava/lang/String;

    return-object v0
.end method

.method public getPlaylistId()Ljava/lang/String;
    .locals 1

    .line 150
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;->mPlaylistId:Ljava/lang/String;

    return-object v0
.end method

.method public getPreviousRanks()Ljava/lang/String;
    .locals 1

    .line 170
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;->mPreviousRanks:Ljava/lang/String;

    return-object v0
.end method

.method public getThumbnails()Ljava/lang/String;
    .locals 1

    .line 118
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;->mThumbnails:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getVideoId()Ljava/lang/String;
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;->mVideoId:Ljava/lang/String;

    return-object v0
.end method

.method public getViewCount()Ljava/lang/String;
    .locals 1

    .line 142
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;->mViewCount:Ljava/lang/String;

    return-object v0
.end method

.method public setChannelTitle(Ljava/lang/String;)V
    .locals 0

    .line 130
    iput-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;->mChannelTitle:Ljava/lang/String;

    return-void
.end method

.method public setCurrentRanks(Ljava/lang/String;)V
    .locals 0

    .line 166
    iput-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;->mCurrentRanks:Ljava/lang/String;

    return-void
.end method

.method public setDuration(Ljava/lang/String;)V
    .locals 0

    .line 138
    iput-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;->mDuration:Ljava/lang/String;

    return-void
.end method

.method public setPeriodsOnChart(Ljava/lang/String;)V
    .locals 0

    .line 92
    iput-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;->mPeriodsOnChart:Ljava/lang/String;

    return-void
.end method

.method public setPreviousRanks(Ljava/lang/String;)V
    .locals 0

    .line 174
    iput-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;->mPreviousRanks:Ljava/lang/String;

    return-void
.end method

.method public setThumbnails(Ljava/lang/String;)V
    .locals 0

    .line 122
    iput-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;->mThumbnails:Ljava/lang/String;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 114
    iput-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;->mTitle:Ljava/lang/String;

    return-void
.end method

.method public setVideoId(Ljava/lang/String;)V
    .locals 0

    .line 158
    iput-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;->mVideoId:Ljava/lang/String;

    return-void
.end method

.method public setViewCount(Ljava/lang/String;)V
    .locals 0

    .line 146
    iput-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;->mViewCount:Ljava/lang/String;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 193
    iget-object p2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;->mVideoId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 194
    iget-object p2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;->mTitle:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 195
    iget-object p2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;->mThumbnails:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 196
    iget-object p2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;->mChannelTitle:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 197
    iget-object p2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;->mDuration:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 198
    iget-object p2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;->mViewCount:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 199
    iget-object p2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;->mPlaylistId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 200
    iget-object p2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;->mDate:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 201
    iget-object p2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;->mCurrentRanks:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 202
    iget-object p2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;->mPreviousRanks:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 203
    iget-object p2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;->mPeriodsOnChart:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
