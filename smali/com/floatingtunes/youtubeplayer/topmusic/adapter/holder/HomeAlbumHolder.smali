.class public Lcom/floatingtunes/youtubeplayer/topmusic/adapter/holder/HomeAlbumHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "HomeAlbumHolder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        "Landroid/view/View$OnClickListener;"
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mIvCover:Landroid/widget/ImageView;

.field private mListener:Lcom/floatingtunes/youtubeplayer/topmusic/adapter/listener/ItemListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/floatingtunes/youtubeplayer/topmusic/adapter/listener/ItemListener<",
            "TT;>;"
        }
    .end annotation
.end field

.field mPosition:I

.field private mTvTitle:Landroid/widget/TextView;

.field private storage:Lcom/google/firebase/storage/FirebaseStorage;

.field private storageRef:Lcom/google/firebase/storage/StorageReference;


# direct methods
.method public constructor <init>(Landroid/view/View;Ljava/util/List;Landroid/content/Context;Lcom/floatingtunes/youtubeplayer/topmusic/adapter/listener/ItemListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;",
            "Landroid/content/Context;",
            "Lcom/floatingtunes/youtubeplayer/topmusic/adapter/listener/ItemListener<",
            "TT;>;)V"
        }
    .end annotation

    .line 39
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 40
    iput-object p3, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/holder/HomeAlbumHolder;->mContext:Landroid/content/Context;

    const p3, 0x7f090111

    .line 42
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/ImageView;

    iput-object p3, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/holder/HomeAlbumHolder;->mIvCover:Landroid/widget/ImageView;

    const p3, 0x7f0902c8

    .line 43
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iput-object p3, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/holder/HomeAlbumHolder;->mTvTitle:Landroid/widget/TextView;

    .line 44
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 45
    iput-object p4, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/holder/HomeAlbumHolder;->mListener:Lcom/floatingtunes/youtubeplayer/topmusic/adapter/listener/ItemListener;

    .line 46
    iput-object p2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/holder/HomeAlbumHolder;->mDataList:Ljava/util/List;

    .line 47
    invoke-static {}, Lcom/google/firebase/storage/FirebaseStorage;->getInstance()Lcom/google/firebase/storage/FirebaseStorage;

    move-result-object p1

    iput-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/holder/HomeAlbumHolder;->storage:Lcom/google/firebase/storage/FirebaseStorage;

    .line 48
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/holder/HomeAlbumHolder;->storage:Lcom/google/firebase/storage/FirebaseStorage;

    invoke-virtual {p1}, Lcom/google/firebase/storage/FirebaseStorage;->getReference()Lcom/google/firebase/storage/StorageReference;

    move-result-object p1

    iput-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/holder/HomeAlbumHolder;->storageRef:Lcom/google/firebase/storage/StorageReference;

    return-void
.end method


# virtual methods
.method public bindData(I)V
    .locals 3

    .line 52
    iput p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/holder/HomeAlbumHolder;->mPosition:I

    .line 53
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/holder/HomeAlbumHolder;->mDataList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    .line 54
    instance-of v0, p1, Lcom/floatingtunes/youtubeplayer/topmusic/home/HomePlaylist;

    if-eqz v0, :cond_0

    .line 55
    check-cast p1, Lcom/floatingtunes/youtubeplayer/topmusic/home/HomePlaylist;

    .line 56
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/holder/HomeAlbumHolder;->mTvTitle:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/floatingtunes/youtubeplayer/topmusic/home/HomePlaylist;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 57
    invoke-virtual {p1}, Lcom/floatingtunes/youtubeplayer/topmusic/home/HomePlaylist;->getThumbnail()Ljava/lang/String;

    move-result-object p1

    .line 58
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/holder/HomeAlbumHolder;->storageRef:Lcom/google/firebase/storage/StorageReference;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "music/utunes_image/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/firebase/storage/StorageReference;->child(Ljava/lang/String;)Lcom/google/firebase/storage/StorageReference;

    move-result-object p1

    .line 60
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/holder/HomeAlbumHolder;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/holder/HomeAlbumHolder;->mIvCover:Landroid/widget/ImageView;

    invoke-static {v0, p1, v1}, Lcom/floatingtunes/youtubeplayer/topmusic/util/ImageUtil;->loadImage(Landroid/content/Context;Lcom/google/firebase/storage/StorageReference;Landroid/widget/ImageView;)V

    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 68
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/holder/HomeAlbumHolder;->mListener:Lcom/floatingtunes/youtubeplayer/topmusic/adapter/listener/ItemListener;

    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/holder/HomeAlbumHolder;->mDataList:Ljava/util/List;

    iget v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/holder/HomeAlbumHolder;->mPosition:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/listener/ItemListener;->onItemClick(Ljava/lang/Object;)V

    return-void
.end method
