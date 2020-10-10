.class public Lcom/floatingtunes/youtubeplayer/topmusic/home/HomeChannel;
.super Ljava/lang/Object;
.source "HomeChannel.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/floatingtunes/youtubeplayer/topmusic/home/HomeChannel;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field mChannelId:Ljava/lang/String;

.field mChannelTitle:Ljava/lang/String;

.field mThumbnail:Ljava/lang/String;

.field mTitle:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 68
    new-instance v0, Lcom/floatingtunes/youtubeplayer/topmusic/home/HomeChannel$1;

    invoke-direct {v0}, Lcom/floatingtunes/youtubeplayer/topmusic/home/HomeChannel$1;-><init>()V

    sput-object v0, Lcom/floatingtunes/youtubeplayer/topmusic/home/HomeChannel;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 57
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

    iput-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/home/HomeChannel;->mTitle:Ljava/lang/String;

    .line 63
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/home/HomeChannel;->mThumbnail:Ljava/lang/String;

    .line 64
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/home/HomeChannel;->mChannelId:Ljava/lang/String;

    .line 65
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/home/HomeChannel;->mChannelTitle:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getChannelId()Ljava/lang/String;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/home/HomeChannel;->mChannelId:Ljava/lang/String;

    return-object v0
.end method

.method public getChannelTitle()Ljava/lang/String;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/home/HomeChannel;->mChannelTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getThumbnail()Ljava/lang/String;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/home/HomeChannel;->mThumbnail:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/home/HomeChannel;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 87
    iget-object p2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/home/HomeChannel;->mTitle:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 88
    iget-object p2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/home/HomeChannel;->mThumbnail:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 89
    iget-object p2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/home/HomeChannel;->mChannelId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 90
    iget-object p2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/home/HomeChannel;->mChannelTitle:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
