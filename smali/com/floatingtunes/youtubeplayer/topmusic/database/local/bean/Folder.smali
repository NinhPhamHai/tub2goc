.class public Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/Folder;
.super Ljava/lang/Object;
.source "Folder.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/Folder;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private ID:Ljava/lang/String;

.field private create_time:Ljava/lang/String;

.field private db_type:Ljava/lang/String;

.field private folder_name:Ljava/lang/String;

.field private folder_type:Ljava/lang/String;

.field private thumbnail:Ljava/lang/String;

.field private unique_id:Ljava/lang/String;

.field private update_time:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 127
    new-instance v0, Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/Folder$1;

    invoke-direct {v0}, Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/Folder$1;-><init>()V

    sput-object v0, Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/Folder;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/Folder;->ID:Ljava/lang/String;

    .line 105
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/Folder;->folder_name:Ljava/lang/String;

    .line 106
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/Folder;->folder_type:Ljava/lang/String;

    .line 107
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/Folder;->thumbnail:Ljava/lang/String;

    .line 108
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/Folder;->unique_id:Ljava/lang/String;

    .line 109
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/Folder;->db_type:Ljava/lang/String;

    .line 110
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/Folder;->update_time:Ljava/lang/String;

    .line 111
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/Folder;->create_time:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    iput-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/Folder;->ID:Ljava/lang/String;

    .line 118
    iput-object p2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/Folder;->folder_name:Ljava/lang/String;

    .line 119
    iput-object p3, p0, Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/Folder;->folder_type:Ljava/lang/String;

    .line 120
    iput-object p4, p0, Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/Folder;->update_time:Ljava/lang/String;

    .line 121
    iput-object p5, p0, Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/Folder;->create_time:Ljava/lang/String;

    .line 122
    iput-object p6, p0, Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/Folder;->thumbnail:Ljava/lang/String;

    .line 123
    iput-object p7, p0, Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/Folder;->unique_id:Ljava/lang/String;

    .line 124
    iput-object p8, p0, Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/Folder;->db_type:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getCreate_time()Ljava/lang/String;
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/Folder;->create_time:Ljava/lang/String;

    return-object v0
.end method

.method public getDb_type()Ljava/lang/String;
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/Folder;->db_type:Ljava/lang/String;

    return-object v0
.end method

.method public getFolder_name()Ljava/lang/String;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/Folder;->folder_name:Ljava/lang/String;

    return-object v0
.end method

.method public getFolder_type()Ljava/lang/String;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/Folder;->folder_type:Ljava/lang/String;

    return-object v0
.end method

.method public getID()Ljava/lang/String;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/Folder;->ID:Ljava/lang/String;

    return-object v0
.end method

.method public getThumbnail()Ljava/lang/String;
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/Folder;->thumbnail:Ljava/lang/String;

    return-object v0
.end method

.method public getUnique_id()Ljava/lang/String;
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/Folder;->unique_id:Ljava/lang/String;

    return-object v0
.end method

.method public getUpdate_time()Ljava/lang/String;
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/Folder;->update_time:Ljava/lang/String;

    return-object v0
.end method

.method public setCreate_time(Ljava/lang/String;)V
    .locals 0

    .line 100
    iput-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/Folder;->create_time:Ljava/lang/String;

    return-void
.end method

.method public setDb_type(Ljava/lang/String;)V
    .locals 0

    .line 84
    iput-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/Folder;->db_type:Ljava/lang/String;

    return-void
.end method

.method public setFolder_name(Ljava/lang/String;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/Folder;->folder_name:Ljava/lang/String;

    return-void
.end method

.method public setFolder_type(Ljava/lang/String;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/Folder;->folder_type:Ljava/lang/String;

    return-void
.end method

.method public setID(Ljava/lang/String;)V
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/Folder;->ID:Ljava/lang/String;

    return-void
.end method

.method public setThumbnail(Ljava/lang/String;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/Folder;->thumbnail:Ljava/lang/String;

    return-void
.end method

.method public setUnique_id(Ljava/lang/String;)V
    .locals 0

    .line 76
    iput-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/Folder;->unique_id:Ljava/lang/String;

    return-void
.end method

.method public setUpdate_time(Ljava/lang/String;)V
    .locals 0

    .line 92
    iput-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/Folder;->update_time:Ljava/lang/String;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 146
    iget-object p2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/Folder;->ID:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 147
    iget-object p2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/Folder;->folder_name:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 148
    iget-object p2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/Folder;->folder_type:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 149
    iget-object p2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/Folder;->thumbnail:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 150
    iget-object p2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/Folder;->unique_id:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 151
    iget-object p2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/Folder;->db_type:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 152
    iget-object p2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/Folder;->update_time:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 153
    iget-object p2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/Folder;->create_time:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
