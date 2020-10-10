.class public Lcom/floatingtunes/youtubeplayer/topmusic/adapter/ServiceListAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "ServiceListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/floatingtunes/youtubeplayer/topmusic/adapter/ServiceListAdapter$ListViewHolder;
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
.field private mContext:Landroid/content/Context;

.field private mListener:Lcom/floatingtunes/youtubeplayer/topmusic/adapter/IVideoItemListener;

.field private mObjectList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;",
            ">;"
        }
    .end annotation
.end field

.field private mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field private mSelectedItemPosition:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Landroidx/recyclerview/widget/RecyclerView;Lcom/floatingtunes/youtubeplayer/topmusic/adapter/IVideoItemListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;",
            ">;",
            "Landroidx/recyclerview/widget/RecyclerView;",
            "Lcom/floatingtunes/youtubeplayer/topmusic/adapter/IVideoItemListener;",
            ")V"
        }
    .end annotation

    .line 32
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    const/4 v0, 0x0

    .line 28
    iput v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/ServiceListAdapter;->mSelectedItemPosition:I

    .line 33
    iput-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/ServiceListAdapter;->mContext:Landroid/content/Context;

    .line 34
    iput-object p3, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/ServiceListAdapter;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 35
    iput-object p4, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/ServiceListAdapter;->mListener:Lcom/floatingtunes/youtubeplayer/topmusic/adapter/IVideoItemListener;

    .line 36
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/ServiceListAdapter;->mObjectList:Ljava/util/ArrayList;

    .line 37
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/ServiceListAdapter;->mObjectList:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method static synthetic access$000(Lcom/floatingtunes/youtubeplayer/topmusic/adapter/ServiceListAdapter;)I
    .locals 0

    .line 23
    iget p0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/ServiceListAdapter;->mSelectedItemPosition:I

    return p0
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/ServiceListAdapter;->mObjectList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 1

    .line 80
    instance-of v0, p1, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/ServiceListAdapter$ListViewHolder;

    if-eqz v0, :cond_0

    .line 81
    check-cast p1, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/ServiceListAdapter$ListViewHolder;

    invoke-virtual {p1, p2}, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/ServiceListAdapter$ListViewHolder;->bindData(I)V

    :cond_0
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 8

    .line 73
    iget-object p2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/ServiceListAdapter;->mContext:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0c0103

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    .line 75
    new-instance p1, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/ServiceListAdapter$ListViewHolder;

    iget-object v5, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/ServiceListAdapter;->mObjectList:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/ServiceListAdapter;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/ServiceListAdapter;->mListener:Lcom/floatingtunes/youtubeplayer/topmusic/adapter/IVideoItemListener;

    move-object v2, p1

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/ServiceListAdapter$ListViewHolder;-><init>(Lcom/floatingtunes/youtubeplayer/topmusic/adapter/ServiceListAdapter;Landroid/view/View;Ljava/util/List;Landroid/content/Context;Lcom/floatingtunes/youtubeplayer/topmusic/adapter/IVideoItemListener;)V

    return-object p1
.end method

.method public removeItem(Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;)V
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/ServiceListAdapter;->mObjectList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 53
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setSelectedItemPosition(I)V
    .locals 1

    if-ltz p1, :cond_0

    .line 63
    iget v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/ServiceListAdapter;->mSelectedItemPosition:I

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 64
    iput p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/ServiceListAdapter;->mSelectedItemPosition:I

    .line 65
    iget p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/ServiceListAdapter;->mSelectedItemPosition:I

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    :cond_0
    return-void
.end method
