.class final Lcom/floatingtunes/youtubeplayer/topmusic/home/HomePlaylist$1;
.super Ljava/lang/Object;
.source "HomePlaylist.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/floatingtunes/youtubeplayer/topmusic/home/HomePlaylist;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/floatingtunes/youtubeplayer/topmusic/home/HomePlaylist;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/floatingtunes/youtubeplayer/topmusic/home/HomePlaylist;
    .locals 1

    .line 60
    new-instance v0, Lcom/floatingtunes/youtubeplayer/topmusic/home/HomePlaylist;

    invoke-direct {v0, p1}, Lcom/floatingtunes/youtubeplayer/topmusic/home/HomePlaylist;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 57
    invoke-virtual {p0, p1}, Lcom/floatingtunes/youtubeplayer/topmusic/home/HomePlaylist$1;->createFromParcel(Landroid/os/Parcel;)Lcom/floatingtunes/youtubeplayer/topmusic/home/HomePlaylist;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/floatingtunes/youtubeplayer/topmusic/home/HomePlaylist;
    .locals 0

    .line 65
    new-array p1, p1, [Lcom/floatingtunes/youtubeplayer/topmusic/home/HomePlaylist;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 57
    invoke-virtual {p0, p1}, Lcom/floatingtunes/youtubeplayer/topmusic/home/HomePlaylist$1;->newArray(I)[Lcom/floatingtunes/youtubeplayer/topmusic/home/HomePlaylist;

    move-result-object p1

    return-object p1
.end method
