.class public Lcom/floatingtunes/youtubeplayer/topmusic/adapter/ArtistAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "ArtistAdapter.java"

# interfaces
.implements Landroid/widget/SectionIndexer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/floatingtunes/youtubeplayer/topmusic/adapter/ArtistAdapter$ItemHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        ">;",
        "Landroid/widget/SectionIndexer;"
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDataArray:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/floatingtunes/youtubeplayer/topmusic/module/ArtistBean;",
            ">;"
        }
    .end annotation
.end field

.field private mDataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/floatingtunes/youtubeplayer/topmusic/module/ArtistBean;",
            ">;"
        }
    .end annotation
.end field

.field private mItemListener:Lcom/floatingtunes/youtubeplayer/topmusic/adapter/listener/ListItemListener;

.field private mResLayout:I

.field private mSectionPositions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;ILcom/floatingtunes/youtubeplayer/topmusic/adapter/listener/ListItemListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/floatingtunes/youtubeplayer/topmusic/module/ArtistBean;",
            ">;I",
            "Lcom/floatingtunes/youtubeplayer/topmusic/adapter/listener/ListItemListener;",
            ")V"
        }
    .end annotation

    .line 41
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/ArtistAdapter;->mContext:Landroid/content/Context;

    .line 43
    iput-object p2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/ArtistAdapter;->mDataList:Ljava/util/List;

    .line 44
    iput-object p2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/ArtistAdapter;->mDataArray:Ljava/util/List;

    .line 46
    iput p3, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/ArtistAdapter;->mResLayout:I

    .line 47
    iput-object p4, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/ArtistAdapter;->mItemListener:Lcom/floatingtunes/youtubeplayer/topmusic/adapter/listener/ListItemListener;

    return-void
.end method

.method static synthetic access$000(Lcom/floatingtunes/youtubeplayer/topmusic/adapter/ArtistAdapter;)Lcom/floatingtunes/youtubeplayer/topmusic/adapter/listener/ListItemListener;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/ArtistAdapter;->mItemListener:Lcom/floatingtunes/youtubeplayer/topmusic/adapter/listener/ListItemListener;

    return-object p0
.end method

.method static synthetic access$100(Lcom/floatingtunes/youtubeplayer/topmusic/adapter/ArtistAdapter;)Landroid/content/Context;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/ArtistAdapter;->mContext:Landroid/content/Context;

    return-object p0
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/ArtistAdapter;->mDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getPositionForSection(I)I
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/ArtistAdapter;->mSectionPositions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method public getSectionForPosition(I)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public getSections()[Ljava/lang/Object;
    .locals 6

    .line 79
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x1a

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 80
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/ArtistAdapter;->mSectionPositions:Ljava/util/ArrayList;

    .line 81
    iget-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/ArtistAdapter;->mDataArray:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    .line 82
    iget-object v4, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/ArtistAdapter;->mDataArray:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/floatingtunes/youtubeplayer/topmusic/module/ArtistBean;

    invoke-virtual {v4}, Lcom/floatingtunes/youtubeplayer/topmusic/module/ArtistBean;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    .line 83
    invoke-interface {v0, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 84
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 85
    iget-object v4, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/ArtistAdapter;->mSectionPositions:Ljava/util/ArrayList;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 88
    :cond_1
    new-array v1, v2, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 2

    .line 60
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/ArtistAdapter;->mDataList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/floatingtunes/youtubeplayer/topmusic/module/ArtistBean;

    .line 62
    instance-of v1, p1, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/ArtistAdapter$ItemHolder;

    if-eqz v1, :cond_0

    .line 63
    check-cast p1, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/ArtistAdapter$ItemHolder;

    invoke-virtual {p1, v0, p2}, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/ArtistAdapter$ItemHolder;->bindView(Lcom/floatingtunes/youtubeplayer/topmusic/module/ArtistBean;I)V

    :cond_0
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 2

    .line 53
    iget-object p2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/ArtistAdapter;->mContext:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0c003b

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 54
    new-instance p2, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/ArtistAdapter$ItemHolder;

    invoke-direct {p2, p0, p1}, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/ArtistAdapter$ItemHolder;-><init>(Lcom/floatingtunes/youtubeplayer/topmusic/adapter/ArtistAdapter;Landroid/view/View;)V

    return-object p2
.end method
