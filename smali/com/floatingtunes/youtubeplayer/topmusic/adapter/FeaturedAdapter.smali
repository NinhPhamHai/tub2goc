.class public Lcom/floatingtunes/youtubeplayer/topmusic/adapter/FeaturedAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "FeaturedAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/floatingtunes/youtubeplayer/topmusic/adapter/FeaturedAdapter$ItemHolder;,
        Lcom/floatingtunes/youtubeplayer/topmusic/adapter/FeaturedAdapter$HeadHolder;
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
.field private mBannerList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/floatingtunes/youtubeplayer/topmusic/module/PlaylistBean;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mDiscoverModule:Lcom/floatingtunes/youtubeplayer/topmusic/module/DiscoverModule;

.field private mHomeListener:Lcom/floatingtunes/youtubeplayer/topmusic/home/IHomeListener;

.field private storage:Lcom/google/firebase/storage/FirebaseStorage;

.field private storageRef:Lcom/google/firebase/storage/StorageReference;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/floatingtunes/youtubeplayer/topmusic/module/DiscoverModule;Lcom/floatingtunes/youtubeplayer/topmusic/home/IHomeListener;)V
    .locals 1

    .line 57
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/FeaturedAdapter;->mBannerList:Ljava/util/List;

    .line 59
    iput-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/FeaturedAdapter;->mContext:Landroid/content/Context;

    .line 60
    iput-object p3, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/FeaturedAdapter;->mHomeListener:Lcom/floatingtunes/youtubeplayer/topmusic/home/IHomeListener;

    .line 61
    invoke-static {}, Lcom/google/firebase/storage/FirebaseStorage;->getInstance()Lcom/google/firebase/storage/FirebaseStorage;

    move-result-object p1

    iput-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/FeaturedAdapter;->storage:Lcom/google/firebase/storage/FirebaseStorage;

    .line 62
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/FeaturedAdapter;->storage:Lcom/google/firebase/storage/FirebaseStorage;

    invoke-virtual {p1}, Lcom/google/firebase/storage/FirebaseStorage;->getReference()Lcom/google/firebase/storage/StorageReference;

    move-result-object p1

    iput-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/FeaturedAdapter;->storageRef:Lcom/google/firebase/storage/StorageReference;

    .line 64
    iput-object p2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/FeaturedAdapter;->mDiscoverModule:Lcom/floatingtunes/youtubeplayer/topmusic/module/DiscoverModule;

    return-void
.end method

.method static synthetic access$100(Lcom/floatingtunes/youtubeplayer/topmusic/adapter/FeaturedAdapter;)Lcom/floatingtunes/youtubeplayer/topmusic/module/DiscoverModule;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/FeaturedAdapter;->mDiscoverModule:Lcom/floatingtunes/youtubeplayer/topmusic/module/DiscoverModule;

    return-object p0
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public getItemViewType(I)I
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const/16 p1, 0xf

    return p1

    :cond_0
    if-nez p1, :cond_1

    const/16 p1, 0x11

    return p1

    :cond_1
    const/16 p1, 0xe

    return p1
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 2

    .line 96
    instance-of v0, p1, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/FeaturedAdapter$ItemHolder;

    if-eqz v0, :cond_3

    .line 98
    check-cast p1, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/FeaturedAdapter$ItemHolder;

    .line 101
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    .line 105
    iget-object p2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/FeaturedAdapter;->mDiscoverModule:Lcom/floatingtunes/youtubeplayer/topmusic/module/DiscoverModule;

    invoke-virtual {p2}, Lcom/floatingtunes/youtubeplayer/topmusic/module/DiscoverModule;->getTop_country()Ljava/util/List;

    move-result-object p2

    const/4 v0, 0x4

    const-string v1, "Top World"

    .line 106
    invoke-virtual {p1, v1, p2, v0}, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/FeaturedAdapter$ItemHolder;->bindData(Ljava/lang/String;Ljava/util/List;I)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x3

    if-ne p2, v0, :cond_1

    .line 109
    iget-object p2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/FeaturedAdapter;->mDiscoverModule:Lcom/floatingtunes/youtubeplayer/topmusic/module/DiscoverModule;

    invoke-virtual {p2}, Lcom/floatingtunes/youtubeplayer/topmusic/module/DiscoverModule;->getMood()Ljava/util/List;

    move-result-object p2

    const/4 v0, 0x6

    const-string v1, "Mood"

    .line 110
    invoke-virtual {p1, v1, p2, v0}, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/FeaturedAdapter$ItemHolder;->bindData(Ljava/lang/String;Ljava/util/List;I)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    if-ne p2, v0, :cond_2

    .line 113
    iget-object p2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/FeaturedAdapter;->mDiscoverModule:Lcom/floatingtunes/youtubeplayer/topmusic/module/DiscoverModule;

    invoke-virtual {p2}, Lcom/floatingtunes/youtubeplayer/topmusic/module/DiscoverModule;->getTopcharts()Ljava/util/List;

    move-result-object p2

    const/16 v0, 0x9

    const-string v1, "Top Charts"

    .line 114
    invoke-virtual {p1, v1, p2, v0}, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/FeaturedAdapter$ItemHolder;->bindData(Ljava/lang/String;Ljava/util/List;I)V

    goto :goto_0

    :cond_2
    if-nez p2, :cond_4

    .line 117
    iget-object p2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/FeaturedAdapter;->mDiscoverModule:Lcom/floatingtunes/youtubeplayer/topmusic/module/DiscoverModule;

    invoke-virtual {p2}, Lcom/floatingtunes/youtubeplayer/topmusic/module/DiscoverModule;->getGenres()Ljava/util/List;

    move-result-object p2

    const/16 v0, 0x1e

    const-string v1, "Genres"

    .line 118
    invoke-virtual {p1, v1, p2, v0}, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/FeaturedAdapter$ItemHolder;->bindData(Ljava/lang/String;Ljava/util/List;I)V

    goto :goto_0

    .line 122
    :cond_3
    instance-of p2, p1, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/FeaturedAdapter$HeadHolder;

    if-eqz p2, :cond_4

    .line 123
    check-cast p1, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/FeaturedAdapter$HeadHolder;

    invoke-static {p1}, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/FeaturedAdapter$HeadHolder;->access$000(Lcom/floatingtunes/youtubeplayer/topmusic/adapter/FeaturedAdapter$HeadHolder;)V

    :cond_4
    :goto_0
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 7

    const/4 v0, 0x0

    const/16 v1, 0xb

    if-ne p2, v1, :cond_0

    .line 73
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v1, 0x7f0c0092

    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 74
    new-instance p2, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/FeaturedAdapter$HeadHolder;

    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/FeaturedAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p2, p0, p1, v0}, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/FeaturedAdapter$HeadHolder;-><init>(Lcom/floatingtunes/youtubeplayer/topmusic/adapter/FeaturedAdapter;Landroid/view/View;Landroid/content/Context;)V

    return-object p2

    :cond_0
    const/16 v1, 0xe

    if-ne p2, v1, :cond_1

    const-string p2, "Top World"

    :goto_0
    move-object v6, p2

    goto :goto_1

    :cond_1
    const/16 v1, 0x10

    if-ne p2, v1, :cond_2

    const-string p2, "Mood"

    goto :goto_0

    :cond_2
    const/16 v1, 0xf

    if-ne p2, v1, :cond_3

    const-string p2, "Top Charts"

    goto :goto_0

    :cond_3
    const/16 v1, 0x11

    if-ne p2, v1, :cond_4

    const-string p2, "Genres"

    goto :goto_0

    :cond_4
    const-string p2, ""

    goto :goto_0

    .line 88
    :goto_1
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v1, 0x7f0c0095

    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 89
    new-instance p1, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/FeaturedAdapter$ItemHolder;

    iget-object v4, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/FeaturedAdapter;->mHomeListener:Lcom/floatingtunes/youtubeplayer/topmusic/home/IHomeListener;

    iget-object v5, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/FeaturedAdapter;->mContext:Landroid/content/Context;

    move-object v1, p1

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/FeaturedAdapter$ItemHolder;-><init>(Lcom/floatingtunes/youtubeplayer/topmusic/adapter/FeaturedAdapter;Landroid/view/View;Lcom/floatingtunes/youtubeplayer/topmusic/home/IHomeListener;Landroid/content/Context;Ljava/lang/String;)V

    return-object p1
.end method
