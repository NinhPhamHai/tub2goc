.class public Lcom/floatingtunes/youtubeplayer/topmusic/adapter/NormalItemAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "NormalItemAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/floatingtunes/youtubeplayer/topmusic/adapter/NormalItemAdapter$CuratedItemHolder;
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


# direct methods
.method public constructor <init>(Lcom/floatingtunes/youtubeplayer/topmusic/home/IHomeListener;Ljava/util/List;Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/floatingtunes/youtubeplayer/topmusic/home/IHomeListener;",
            "Ljava/util/List<",
            "Lcom/floatingtunes/youtubeplayer/topmusic/module/PlaylistBean;",
            ">;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .line 28
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/NormalItemAdapter;->mHomeListener:Lcom/floatingtunes/youtubeplayer/topmusic/home/IHomeListener;

    .line 30
    iput-object p2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/NormalItemAdapter;->dataList:Ljava/util/List;

    .line 31
    iput-object p3, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/NormalItemAdapter;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/NormalItemAdapter;->dataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/NormalItemAdapter;->dataList:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 45
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/NormalItemAdapter;->dataList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/floatingtunes/youtubeplayer/topmusic/module/PlaylistBean;

    .line 46
    check-cast p1, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/NormalItemAdapter$CuratedItemHolder;

    .line 47
    invoke-virtual {p1, p2}, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/NormalItemAdapter$CuratedItemHolder;->bindData(Lcom/floatingtunes/youtubeplayer/topmusic/module/PlaylistBean;)V

    :cond_0
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 2

    .line 38
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0c0053

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 39
    new-instance p2, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/NormalItemAdapter$CuratedItemHolder;

    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/NormalItemAdapter;->mHomeListener:Lcom/floatingtunes/youtubeplayer/topmusic/home/IHomeListener;

    iget-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/NormalItemAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p2, p0, p1, v0, v1}, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/NormalItemAdapter$CuratedItemHolder;-><init>(Lcom/floatingtunes/youtubeplayer/topmusic/adapter/NormalItemAdapter;Landroid/view/View;Lcom/floatingtunes/youtubeplayer/topmusic/home/IHomeListener;Landroid/content/Context;)V

    return-object p2
.end method
