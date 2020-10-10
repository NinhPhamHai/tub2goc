.class public Lcom/floatingtunes/youtubeplayer/topmusic/adapter/NewTopListAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "NewTopListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/floatingtunes/youtubeplayer/topmusic/adapter/NewTopListAdapter$ItemHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end field

.field private mListener:Lcom/floatingtunes/youtubeplayer/topmusic/adapter/listener/ItemListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/floatingtunes/youtubeplayer/topmusic/adapter/listener/ItemListener<",
            "Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;",
            ">;"
        }
    .end annotation
.end field

.field private mResLayout:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;ILcom/floatingtunes/youtubeplayer/topmusic/adapter/listener/ItemListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "TT;>;I",
            "Lcom/floatingtunes/youtubeplayer/topmusic/adapter/listener/ItemListener<",
            "Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;",
            ">;)V"
        }
    .end annotation

    .line 34
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/NewTopListAdapter;->mContext:Landroid/content/Context;

    .line 36
    iput-object p2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/NewTopListAdapter;->mDataList:Ljava/util/List;

    .line 38
    iput p3, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/NewTopListAdapter;->mResLayout:I

    .line 39
    iput-object p4, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/NewTopListAdapter;->mListener:Lcom/floatingtunes/youtubeplayer/topmusic/adapter/listener/ItemListener;

    return-void
.end method

.method static synthetic access$000(Lcom/floatingtunes/youtubeplayer/topmusic/adapter/NewTopListAdapter;)Lcom/floatingtunes/youtubeplayer/topmusic/adapter/listener/ItemListener;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/NewTopListAdapter;->mListener:Lcom/floatingtunes/youtubeplayer/topmusic/adapter/listener/ItemListener;

    return-object p0
.end method

.method static synthetic access$100(Lcom/floatingtunes/youtubeplayer/topmusic/adapter/NewTopListAdapter;)Landroid/content/Context;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/NewTopListAdapter;->mContext:Landroid/content/Context;

    return-object p0
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/NewTopListAdapter;->mDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 2

    .line 52
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/NewTopListAdapter;->mDataList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 54
    instance-of v1, p1, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/NewTopListAdapter$ItemHolder;

    if-eqz v1, :cond_0

    .line 55
    check-cast p1, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/NewTopListAdapter$ItemHolder;

    invoke-virtual {p1, v0, p2}, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/NewTopListAdapter$ItemHolder;->bindView(Ljava/lang/Object;I)V

    :cond_0
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 2

    .line 45
    iget-object p2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/NewTopListAdapter;->mContext:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0c0118

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 46
    new-instance p2, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/NewTopListAdapter$ItemHolder;

    invoke-direct {p2, p0, p1}, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/NewTopListAdapter$ItemHolder;-><init>(Lcom/floatingtunes/youtubeplayer/topmusic/adapter/NewTopListAdapter;Landroid/view/View;)V

    return-object p2
.end method
