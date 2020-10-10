.class public Lcom/floatingtunes/youtubeplayer/topmusic/adapter/LoadingAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "LoadingAdapter.java"


# annotations
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
.field private final AD_TYPE:I

.field private final LOADING_TYPE:I

.field private final VIDEO_TYPE:I

.field private mAdResId:I

.field private mContext:Landroid/content/Context;

.field private mDataList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mItemResId:I

.field private mListener:Lcom/floatingtunes/youtubeplayer/topmusic/adapter/listener/ItemListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/floatingtunes/youtubeplayer/topmusic/adapter/listener/ItemListener<",
            "TT;>;"
        }
    .end annotation
.end field

.field private mLoadState:Lcom/floatingtunes/youtubeplayer/topmusic/adapter/LoadState;

.field private mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field private mShowAd:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/recyclerview/widget/RecyclerView;Lcom/floatingtunes/youtubeplayer/topmusic/adapter/listener/ItemListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroidx/recyclerview/widget/RecyclerView;",
            "Lcom/floatingtunes/youtubeplayer/topmusic/adapter/listener/ItemListener<",
            "TT;>;)V"
        }
    .end annotation

    .line 41
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    const/16 v0, 0xde

    .line 25
    iput v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/LoadingAdapter;->AD_TYPE:I

    const/16 v0, 0x14d

    .line 26
    iput v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/LoadingAdapter;->VIDEO_TYPE:I

    const/16 v0, 0x1bc

    .line 27
    iput v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/LoadingAdapter;->LOADING_TYPE:I

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/LoadingAdapter;->mDataList:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 34
    iput v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/LoadingAdapter;->mItemResId:I

    .line 35
    iput v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/LoadingAdapter;->mAdResId:I

    .line 36
    iput-boolean v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/LoadingAdapter;->mShowAd:Z

    .line 38
    sget-object v0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/LoadState;->LOADING:Lcom/floatingtunes/youtubeplayer/topmusic/adapter/LoadState;

    iput-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/LoadingAdapter;->mLoadState:Lcom/floatingtunes/youtubeplayer/topmusic/adapter/LoadState;

    .line 42
    iput-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/LoadingAdapter;->mContext:Landroid/content/Context;

    .line 43
    iput-object p2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/LoadingAdapter;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 44
    iput-object p3, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/LoadingAdapter;->mListener:Lcom/floatingtunes/youtubeplayer/topmusic/adapter/listener/ItemListener;

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 168
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/LoadingAdapter;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .line 174
    invoke-virtual {p0}, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/LoadingAdapter;->getItemCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_0

    const/16 p1, 0x1bc

    return p1

    .line 177
    :cond_0
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/LoadingAdapter;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    const/16 p1, 0x14d

    return p1
.end method

.method public getLoadingSate()Lcom/floatingtunes/youtubeplayer/topmusic/adapter/LoadState;
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/LoadingAdapter;->mLoadState:Lcom/floatingtunes/youtubeplayer/topmusic/adapter/LoadState;

    return-object v0
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 1

    .line 146
    instance-of v0, p1, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/holder/SimpleVideoHolder;

    if-eqz v0, :cond_0

    .line 147
    check-cast p1, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/holder/SimpleVideoHolder;

    invoke-virtual {p1, p2}, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/holder/SimpleVideoHolder;->bindData(I)V

    goto :goto_0

    .line 148
    :cond_0
    instance-of v0, p1, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/holder/CardVideoHolder;

    if-eqz v0, :cond_1

    .line 149
    check-cast p1, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/holder/CardVideoHolder;

    invoke-virtual {p1, p2}, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/holder/CardVideoHolder;->bindData(I)V

    goto :goto_0

    .line 150
    :cond_1
    instance-of v0, p1, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/holder/LoadingHolder;

    if-eqz v0, :cond_2

    .line 151
    check-cast p1, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/holder/LoadingHolder;

    iget-object p2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/LoadingAdapter;->mLoadState:Lcom/floatingtunes/youtubeplayer/topmusic/adapter/LoadState;

    invoke-virtual {p1, p2}, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/holder/LoadingHolder;->setLoadState(Lcom/floatingtunes/youtubeplayer/topmusic/adapter/LoadState;)V

    goto :goto_0

    .line 152
    :cond_2
    instance-of v0, p1, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/holder/SearchPlaylistHolder;

    if-eqz v0, :cond_3

    .line 153
    check-cast p1, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/holder/SearchPlaylistHolder;

    invoke-virtual {p1, p2}, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/holder/SearchPlaylistHolder;->bindData(I)V

    goto :goto_0

    .line 154
    :cond_3
    instance-of v0, p1, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/holder/HomeAlbumHolder;

    if-eqz v0, :cond_4

    .line 155
    check-cast p1, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/holder/HomeAlbumHolder;

    invoke-virtual {p1, p2}, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/holder/HomeAlbumHolder;->bindData(I)V

    goto :goto_0

    .line 156
    :cond_4
    instance-of v0, p1, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/holder/RadioHolder;

    if-eqz v0, :cond_5

    .line 157
    check-cast p1, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/holder/RadioHolder;

    invoke-virtual {p1, p2}, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/holder/RadioHolder;->bindData(I)V

    goto :goto_0

    .line 159
    :cond_5
    check-cast p1, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/holder/AdViewHolder;

    invoke-virtual {p1}, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/holder/AdViewHolder;->showAd()V

    :goto_0
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 3

    const/16 v0, 0xde

    const/4 v1, 0x0

    if-eq p2, v0, :cond_2

    const/16 v0, 0x14d

    if-eq p2, v0, :cond_1

    const/16 v0, 0x1bc

    if-eq p2, v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 137
    :cond_0
    iget-object p2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/LoadingAdapter;->mContext:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0c00a2

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 138
    new-instance p2, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/holder/LoadingHolder;

    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/LoadingAdapter;->mListener:Lcom/floatingtunes/youtubeplayer/topmusic/adapter/listener/ItemListener;

    invoke-direct {p2, p1, v0}, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/holder/LoadingHolder;-><init>(Landroid/view/View;Lcom/floatingtunes/youtubeplayer/topmusic/adapter/listener/ItemListener;)V

    return-object p2

    .line 116
    :cond_1
    iget-object p2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/LoadingAdapter;->mContext:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    iget v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/LoadingAdapter;->mItemResId:I

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 117
    iget p2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/LoadingAdapter;->mItemResId:I

    sparse-switch p2, :sswitch_data_0

    .line 131
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "you should define item res layout id"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 119
    :sswitch_0
    new-instance p2, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/holder/SimpleVideoHolder;

    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/LoadingAdapter;->mDataList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/LoadingAdapter;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/LoadingAdapter;->mListener:Lcom/floatingtunes/youtubeplayer/topmusic/adapter/listener/ItemListener;

    invoke-direct {p2, p1, v0, v1, v2}, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/holder/SimpleVideoHolder;-><init>(Landroid/view/View;Ljava/util/ArrayList;Landroid/content/Context;Lcom/floatingtunes/youtubeplayer/topmusic/adapter/listener/ItemListener;)V

    return-object p2

    .line 129
    :sswitch_1
    new-instance p2, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/holder/RadioHolder;

    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/LoadingAdapter;->mDataList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/LoadingAdapter;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/LoadingAdapter;->mListener:Lcom/floatingtunes/youtubeplayer/topmusic/adapter/listener/ItemListener;

    invoke-direct {p2, p1, v0, v1, v2}, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/holder/RadioHolder;-><init>(Landroid/view/View;Ljava/util/ArrayList;Landroid/content/Context;Lcom/floatingtunes/youtubeplayer/topmusic/adapter/listener/ItemListener;)V

    return-object p2

    .line 124
    :sswitch_2
    new-instance p2, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/holder/SearchPlaylistHolder;

    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/LoadingAdapter;->mDataList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/LoadingAdapter;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/LoadingAdapter;->mListener:Lcom/floatingtunes/youtubeplayer/topmusic/adapter/listener/ItemListener;

    invoke-direct {p2, p1, v0, v1, v2}, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/holder/SearchPlaylistHolder;-><init>(Landroid/view/View;Ljava/util/List;Landroid/content/Context;Lcom/floatingtunes/youtubeplayer/topmusic/adapter/listener/ItemListener;)V

    return-object p2

    .line 127
    :sswitch_3
    new-instance p2, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/holder/HomeAlbumHolder;

    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/LoadingAdapter;->mDataList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/LoadingAdapter;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/LoadingAdapter;->mListener:Lcom/floatingtunes/youtubeplayer/topmusic/adapter/listener/ItemListener;

    invoke-direct {p2, p1, v0, v1, v2}, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/holder/HomeAlbumHolder;-><init>(Landroid/view/View;Ljava/util/List;Landroid/content/Context;Lcom/floatingtunes/youtubeplayer/topmusic/adapter/listener/ItemListener;)V

    return-object p2

    .line 121
    :sswitch_4
    new-instance p2, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/holder/CardVideoHolder;

    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/LoadingAdapter;->mDataList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/LoadingAdapter;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/LoadingAdapter;->mListener:Lcom/floatingtunes/youtubeplayer/topmusic/adapter/listener/ItemListener;

    invoke-direct {p2, p1, v0, v1, v2}, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/holder/CardVideoHolder;-><init>(Landroid/view/View;Ljava/util/ArrayList;Landroid/content/Context;Lcom/floatingtunes/youtubeplayer/topmusic/adapter/listener/ItemListener;)V

    return-object p2

    .line 134
    :cond_2
    iget-object p2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/LoadingAdapter;->mContext:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    iget v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/LoadingAdapter;->mAdResId:I

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 135
    new-instance p2, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/holder/AdViewHolder;

    invoke-direct {p2, p1}, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/holder/AdViewHolder;-><init>(Landroid/view/View;)V

    return-object p2

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0c0047 -> :sswitch_4
        0x7f0c0093 -> :sswitch_3
        0x7f0c0094 -> :sswitch_3
        0x7f0c00fa -> :sswitch_2
        0x7f0c00fb -> :sswitch_2
        0x7f0c00fe -> :sswitch_1
        0x7f0c010b -> :sswitch_0
    .end sparse-switch
.end method

.method public setDataList(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    .line 81
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/LoadingAdapter;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 83
    iget-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/LoadingAdapter;->mDataList:Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {p1, v0, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 85
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/LoadingAdapter;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p1, :cond_0

    .line 86
    new-instance v0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/LoadingAdapter$2;

    invoke-direct {v0, p0}, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/LoadingAdapter$2;-><init>(Lcom/floatingtunes/youtubeplayer/topmusic/adapter/LoadingAdapter;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public setEnableAd(ZI)V
    .locals 0

    const/4 p1, 0x0

    .line 54
    iput-boolean p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/LoadingAdapter;->mShowAd:Z

    .line 55
    iput p2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/LoadingAdapter;->mAdResId:I

    return-void
.end method

.method public setItemLayoutId(I)V
    .locals 0

    .line 48
    iput p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/LoadingAdapter;->mItemResId:I

    return-void
.end method

.method public setLoadingSate(Lcom/floatingtunes/youtubeplayer/topmusic/adapter/LoadState;)V
    .locals 1

    .line 60
    iput-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/LoadingAdapter;->mLoadState:Lcom/floatingtunes/youtubeplayer/topmusic/adapter/LoadState;

    .line 62
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/LoadingAdapter;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p1, :cond_0

    .line 63
    new-instance v0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/LoadingAdapter$1;

    invoke-direct {v0, p0}, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/LoadingAdapter$1;-><init>(Lcom/floatingtunes/youtubeplayer/topmusic/adapter/LoadingAdapter;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
