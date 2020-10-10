.class public Lcom/floatingtunes/youtubeplayer/topmusic/adapter/FeaturedItemAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "FeaturedItemAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/floatingtunes/youtubeplayer/topmusic/adapter/FeaturedItemAdapter$ItemHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private dataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/floatingtunes/youtubeplayer/topmusic/module/PlaylistBean;",
            ">;"
        }
    .end annotation
.end field

.field mContext:Landroid/content/Context;

.field private mHomeListener:Lcom/floatingtunes/youtubeplayer/topmusic/home/IHomeListener;

.field private mItemResId:I

.field private mItemSize:I

.field private storage:Lcom/google/firebase/storage/FirebaseStorage;

.field private storageRef:Lcom/google/firebase/storage/StorageReference;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/floatingtunes/youtubeplayer/topmusic/home/IHomeListener;I)V
    .locals 1

    .line 43
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    const/4 v0, 0x4

    .line 36
    iput v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/FeaturedItemAdapter;->mItemSize:I

    .line 44
    iput-object p2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/FeaturedItemAdapter;->mHomeListener:Lcom/floatingtunes/youtubeplayer/topmusic/home/IHomeListener;

    .line 45
    iput-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/FeaturedItemAdapter;->mContext:Landroid/content/Context;

    .line 46
    iput p3, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/FeaturedItemAdapter;->mItemResId:I

    .line 48
    invoke-static {}, Lcom/google/firebase/storage/FirebaseStorage;->getInstance()Lcom/google/firebase/storage/FirebaseStorage;

    move-result-object p1

    iput-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/FeaturedItemAdapter;->storage:Lcom/google/firebase/storage/FirebaseStorage;

    .line 49
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/FeaturedItemAdapter;->storage:Lcom/google/firebase/storage/FirebaseStorage;

    invoke-virtual {p1}, Lcom/google/firebase/storage/FirebaseStorage;->getReference()Lcom/google/firebase/storage/StorageReference;

    move-result-object p1

    iput-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/FeaturedItemAdapter;->storageRef:Lcom/google/firebase/storage/StorageReference;

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 79
    iget v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/FeaturedItemAdapter;->mItemSize:I

    return v0
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/FeaturedItemAdapter;->dataList:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/FeaturedItemAdapter;->dataList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/floatingtunes/youtubeplayer/topmusic/module/PlaylistBean;

    .line 72
    check-cast p1, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/FeaturedItemAdapter$ItemHolder;

    .line 73
    invoke-virtual {p1, p2}, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/FeaturedItemAdapter$ItemHolder;->bindData(Lcom/floatingtunes/youtubeplayer/topmusic/module/PlaylistBean;)V

    :cond_0
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 2

    .line 64
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    iget v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/FeaturedItemAdapter;->mItemResId:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 65
    new-instance p2, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/FeaturedItemAdapter$ItemHolder;

    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/FeaturedItemAdapter;->mHomeListener:Lcom/floatingtunes/youtubeplayer/topmusic/home/IHomeListener;

    iget-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/FeaturedItemAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p2, p0, p1, v0, v1}, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/FeaturedItemAdapter$ItemHolder;-><init>(Lcom/floatingtunes/youtubeplayer/topmusic/adapter/FeaturedItemAdapter;Landroid/view/View;Lcom/floatingtunes/youtubeplayer/topmusic/home/IHomeListener;Landroid/content/Context;)V

    return-object p2
.end method

.method public setHomePlaylists(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/floatingtunes/youtubeplayer/topmusic/module/PlaylistBean;",
            ">;)V"
        }
    .end annotation

    .line 57
    iput-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/FeaturedItemAdapter;->dataList:Ljava/util/List;

    .line 58
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setItemSize(I)V
    .locals 0

    .line 53
    iput p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/FeaturedItemAdapter;->mItemSize:I

    return-void
.end method
