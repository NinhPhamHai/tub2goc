.class public Lcom/floatingtunes/youtubeplayer/topmusic/module/PlaylistBean;
.super Ljava/lang/Object;
.source "PlaylistBean.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/floatingtunes/youtubeplayer/topmusic/module/PlaylistBean;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private count:Ljava/lang/String;

.field private create_date:Ljava/lang/String;

.field private description:Ljava/lang/String;

.field private id:Ljava/lang/String;

.field private mMusicBeanList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;",
            ">;"
        }
    .end annotation
.end field

.field private thumbnail:Ljava/lang/String;

.field private title:Ljava/lang/String;

.field private type:Ljava/lang/String;

.field private update_date:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 33
    new-instance v0, Lcom/floatingtunes/youtubeplayer/topmusic/module/PlaylistBean$1;

    invoke-direct {v0}, Lcom/floatingtunes/youtubeplayer/topmusic/module/PlaylistBean$1;-><init>()V

    sput-object v0, Lcom/floatingtunes/youtubeplayer/topmusic/module/PlaylistBean;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/module/PlaylistBean;->mMusicBeanList:Ljava/util/List;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/module/PlaylistBean;->mMusicBeanList:Ljava/util/List;

    .line 22
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/module/PlaylistBean;->id:Ljava/lang/String;

    .line 23
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/module/PlaylistBean;->title:Ljava/lang/String;

    .line 24
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/module/PlaylistBean;->description:Ljava/lang/String;

    .line 25
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/module/PlaylistBean;->thumbnail:Ljava/lang/String;

    .line 26
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/module/PlaylistBean;->create_date:Ljava/lang/String;

    .line 27
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/module/PlaylistBean;->update_date:Ljava/lang/String;

    .line 28
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/module/PlaylistBean;->type:Ljava/lang/String;

    .line 29
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/module/PlaylistBean;->count:Ljava/lang/String;

    .line 30
    sget-object v0, Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/module/PlaylistBean;->mMusicBeanList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getCount()Ljava/lang/String;
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/module/PlaylistBean;->count:Ljava/lang/String;

    return-object v0
.end method

.method public getCreate_date()Ljava/lang/String;
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/module/PlaylistBean;->create_date:Ljava/lang/String;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/module/PlaylistBean;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/module/PlaylistBean;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getMusicBeanList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;",
            ">;"
        }
    .end annotation

    .line 62
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/module/PlaylistBean;->mMusicBeanList:Ljava/util/List;

    return-object v0
.end method

.method public getThumbnail()Ljava/lang/String;
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/module/PlaylistBean;->thumbnail:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/module/PlaylistBean;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .line 121
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/module/PlaylistBean;->type:Ljava/lang/String;

    return-object v0
.end method

.method public getUpdate_date()Ljava/lang/String;
    .locals 1

    .line 113
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/module/PlaylistBean;->update_date:Ljava/lang/String;

    return-object v0
.end method

.method public setCount(Ljava/lang/String;)V
    .locals 0

    .line 58
    iput-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/module/PlaylistBean;->count:Ljava/lang/String;

    return-void
.end method

.method public setCreate_date(Ljava/lang/String;)V
    .locals 0

    .line 109
    iput-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/module/PlaylistBean;->create_date:Ljava/lang/String;

    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/module/PlaylistBean;->description:Ljava/lang/String;

    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    .line 85
    iput-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/module/PlaylistBean;->id:Ljava/lang/String;

    return-void
.end method

.method public setMusicBeanList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;",
            ">;)V"
        }
    .end annotation

    .line 66
    iput-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/module/PlaylistBean;->mMusicBeanList:Ljava/util/List;

    return-void
.end method

.method public setThumbnail(Ljava/lang/String;)V
    .locals 0

    .line 101
    iput-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/module/PlaylistBean;->thumbnail:Ljava/lang/String;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 93
    iput-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/module/PlaylistBean;->title:Ljava/lang/String;

    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0

    .line 125
    iput-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/module/PlaylistBean;->type:Ljava/lang/String;

    return-void
.end method

.method public setUpdate_date(Ljava/lang/String;)V
    .locals 0

    .line 117
    iput-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/module/PlaylistBean;->update_date:Ljava/lang/String;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 136
    iget-object p2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/module/PlaylistBean;->id:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 137
    iget-object p2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/module/PlaylistBean;->title:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 138
    iget-object p2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/module/PlaylistBean;->description:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 139
    iget-object p2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/module/PlaylistBean;->thumbnail:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 140
    iget-object p2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/module/PlaylistBean;->create_date:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 141
    iget-object p2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/module/PlaylistBean;->update_date:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 142
    iget-object p2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/module/PlaylistBean;->type:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 143
    iget-object p2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/module/PlaylistBean;->count:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 144
    iget-object p2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/module/PlaylistBean;->mMusicBeanList:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    return-void
.end method
