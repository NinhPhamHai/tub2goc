.class public Lcom/floatingtunes/youtubeplayer/topmusic/adapter/FeaturedAdapter$ItemHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "FeaturedAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/floatingtunes/youtubeplayer/topmusic/adapter/FeaturedAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ItemHolder"
.end annotation


# instance fields
.field mContext:Landroid/content/Context;

.field mFeaturedItemAdapter:Lcom/floatingtunes/youtubeplayer/topmusic/adapter/FeaturedItemAdapter;

.field mListener:Lcom/floatingtunes/youtubeplayer/topmusic/home/IHomeListener;

.field mRlChannel:Landroid/widget/RelativeLayout;

.field mRvContent:Landroidx/recyclerview/widget/RecyclerView;

.field mTvChannel:Landroid/widget/TextView;

.field mViewAll:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/floatingtunes/youtubeplayer/topmusic/adapter/FeaturedAdapter;

.field type_name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/floatingtunes/youtubeplayer/topmusic/adapter/FeaturedAdapter;Landroid/view/View;Lcom/floatingtunes/youtubeplayer/topmusic/home/IHomeListener;Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 266
    iput-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/FeaturedAdapter$ItemHolder;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/adapter/FeaturedAdapter;

    .line 267
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const v0, 0x7f09020c

    .line 269
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/FeaturedAdapter$ItemHolder;->mRlChannel:Landroid/widget/RelativeLayout;

    const v0, 0x7f090224

    .line 270
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/FeaturedAdapter$ItemHolder;->mRvContent:Landroidx/recyclerview/widget/RecyclerView;

    const v0, 0x7f0902ac

    .line 271
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/FeaturedAdapter$ItemHolder;->mTvChannel:Landroid/widget/TextView;

    const v0, 0x7f0902ca

    .line 272
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/FeaturedAdapter$ItemHolder;->mViewAll:Landroid/widget/TextView;

    .line 273
    iput-object p3, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/FeaturedAdapter$ItemHolder;->mListener:Lcom/floatingtunes/youtubeplayer/topmusic/home/IHomeListener;

    .line 274
    iput-object p4, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/FeaturedAdapter$ItemHolder;->mContext:Landroid/content/Context;

    const-string p2, "Top World"

    .line 280
    invoke-virtual {p5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    const/4 p4, 0x3

    const v0, 0x7f0c0093

    const/4 v1, 0x2

    if-eqz p3, :cond_0

    const v0, 0x7f0c0050

    .line 283
    iput-object p2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/FeaturedAdapter$ItemHolder;->type_name:Ljava/lang/String;

    goto :goto_1

    :cond_0
    const-string p2, "Mood"

    .line 284
    invoke-virtual {p5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    const v0, 0x7f0c003c

    .line 287
    iput-object p2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/FeaturedAdapter$ItemHolder;->type_name:Ljava/lang/String;

    :goto_0
    const/4 v1, 0x3

    goto :goto_1

    :cond_1
    const-string p2, "Top Charts"

    .line 289
    invoke-virtual {p5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_2

    const v0, 0x7f0c010d

    .line 292
    iput-object p2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/FeaturedAdapter$ItemHolder;->type_name:Ljava/lang/String;

    .line 293
    iget-object p2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/FeaturedAdapter$ItemHolder;->mViewAll:Landroid/widget/TextView;

    const/4 p3, 0x4

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    :cond_2
    const-string p2, "Genres"

    .line 295
    invoke-virtual {p5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_3

    .line 298
    iput-object p2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/FeaturedAdapter$ItemHolder;->type_name:Ljava/lang/String;

    goto :goto_0

    .line 301
    :cond_3
    :goto_1
    iget-object p2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/FeaturedAdapter$ItemHolder;->mViewAll:Landroid/widget/TextView;

    new-instance p3, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/FeaturedAdapter$ItemHolder$1;

    invoke-direct {p3, p0, p1}, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/FeaturedAdapter$ItemHolder$1;-><init>(Lcom/floatingtunes/youtubeplayer/topmusic/adapter/FeaturedAdapter$ItemHolder;Lcom/floatingtunes/youtubeplayer/topmusic/adapter/FeaturedAdapter;)V

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 309
    new-instance p1, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/FeaturedItemAdapter;

    iget-object p2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/FeaturedAdapter$ItemHolder;->mContext:Landroid/content/Context;

    iget-object p3, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/FeaturedAdapter$ItemHolder;->mListener:Lcom/floatingtunes/youtubeplayer/topmusic/home/IHomeListener;

    invoke-direct {p1, p2, p3, v0}, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/FeaturedItemAdapter;-><init>(Landroid/content/Context;Lcom/floatingtunes/youtubeplayer/topmusic/home/IHomeListener;I)V

    iput-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/FeaturedAdapter$ItemHolder;->mFeaturedItemAdapter:Lcom/floatingtunes/youtubeplayer/topmusic/adapter/FeaturedItemAdapter;

    .line 311
    new-instance p1, Landroidx/recyclerview/widget/GridLayoutManager;

    iget-object p2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/FeaturedAdapter$ItemHolder;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2, v1}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 312
    iget-object p2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/FeaturedAdapter$ItemHolder;->mRvContent:Landroidx/recyclerview/widget/RecyclerView;

    new-instance p3, Lcom/floatingtunes/youtubeplayer/topmusic/view/GridSpacingItemDecoration;

    iget-object p4, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/FeaturedAdapter$ItemHolder;->mContext:Landroid/content/Context;

    .line 313
    invoke-virtual {p4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    const p5, 0x7f0700aa

    invoke-virtual {p4, p5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p4

    const/4 p5, 0x1

    invoke-direct {p3, v1, p4, p5}, Lcom/floatingtunes/youtubeplayer/topmusic/view/GridSpacingItemDecoration;-><init>(IIZ)V

    .line 312
    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 314
    iget-object p2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/FeaturedAdapter$ItemHolder;->mRvContent:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p3, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/FeaturedAdapter$ItemHolder;->mFeaturedItemAdapter:Lcom/floatingtunes/youtubeplayer/topmusic/adapter/FeaturedItemAdapter;

    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 315
    iget-object p2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/FeaturedAdapter$ItemHolder;->mRvContent:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    return-void
.end method


# virtual methods
.method public bindData(Ljava/lang/String;Ljava/util/List;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/floatingtunes/youtubeplayer/topmusic/module/PlaylistBean;",
            ">;I)V"
        }
    .end annotation

    .line 322
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/FeaturedAdapter$ItemHolder;->mTvChannel:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 323
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/FeaturedAdapter$ItemHolder;->mFeaturedItemAdapter:Lcom/floatingtunes/youtubeplayer/topmusic/adapter/FeaturedItemAdapter;

    invoke-virtual {p1, p3}, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/FeaturedItemAdapter;->setItemSize(I)V

    .line 324
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/FeaturedAdapter$ItemHolder;->mFeaturedItemAdapter:Lcom/floatingtunes/youtubeplayer/topmusic/adapter/FeaturedItemAdapter;

    invoke-virtual {p1, p2}, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/FeaturedItemAdapter;->setHomePlaylists(Ljava/util/List;)V

    return-void
.end method
