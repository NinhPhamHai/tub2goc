.class final Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean$1;
.super Ljava/lang/Object;
.source "MusicBean.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;
    .locals 1

    .line 78
    new-instance v0, Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;

    invoke-direct {v0, p1}, Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 75
    invoke-virtual {p0, p1}, Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean$1;->createFromParcel(Landroid/os/Parcel;)Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;
    .locals 0

    .line 83
    new-array p1, p1, [Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 75
    invoke-virtual {p0, p1}, Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean$1;->newArray(I)[Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;

    move-result-object p1

    return-object p1
.end method
