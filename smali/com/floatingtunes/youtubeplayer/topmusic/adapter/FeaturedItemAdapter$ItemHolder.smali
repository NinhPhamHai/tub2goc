.class public Lcom/floatingtunes/youtubeplayer/topmusic/adapter/FeaturedItemAdapter$ItemHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "FeaturedItemAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/floatingtunes/youtubeplayer/topmusic/adapter/FeaturedItemAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ItemHolder"
.end annotation


# instance fields
.field mContext:Landroid/content/Context;

.field mHomePlaylist:Lcom/floatingtunes/youtubeplayer/topmusic/module/PlaylistBean;

.field mIvCover:Landroid/widget/ImageView;

.field mListener:Lcom/floatingtunes/youtubeplayer/topmusic/home/IHomeListener;

.field mTvTitle:Landroid/widget/TextView;

.field root:Landroid/view/View;

.field final synthetic this$0:Lcom/floatingtunes/youtubeplayer/topmusic/adapter/FeaturedItemAdapter;


# direct methods
.method public constructor <init>(Lcom/floatingtunes/youtubeplayer/topmusic/adapter/FeaturedItemAdapter;Landroid/view/View;Lcom/floatingtunes/youtubeplayer/topmusic/home/IHomeListener;Landroid/content/Context;)V
    .locals 1

    .line 92
    iput-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/FeaturedItemAdapter$ItemHolder;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/adapter/FeaturedItemAdapter;

    .line 93
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const v0, 0x7f090111

    .line 94
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/FeaturedItemAdapter$ItemHolder;->mIvCover:Landroid/widget/ImageView;

    const v0, 0x7f0902c8

    .line 95
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/FeaturedItemAdapter$ItemHolder;->mTvTitle:Landroid/widget/TextView;

    const v0, 0x7f090220

    .line 96
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/FeaturedItemAdapter$ItemHolder;->root:Landroid/view/View;

    .line 98
    iput-object p4, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/FeaturedItemAdapter$ItemHolder;->mContext:Landroid/content/Context;

    .line 99
    iput-object p3, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/FeaturedItemAdapter$ItemHolder;->mListener:Lcom/floatingtunes/youtubeplayer/topmusic/home/IHomeListener;

    .line 100
    iget-object p2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/FeaturedItemAdapter$ItemHolder;->root:Landroid/view/View;

    new-instance p3, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/FeaturedItemAdapter$ItemHolder$1;

    invoke-direct {p3, p0, p1}, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/FeaturedItemAdapter$ItemHolder$1;-><init>(Lcom/floatingtunes/youtubeplayer/topmusic/adapter/FeaturedItemAdapter$ItemHolder;Lcom/floatingtunes/youtubeplayer/topmusic/adapter/FeaturedItemAdapter;)V

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public bindData(Lcom/floatingtunes/youtubeplayer/topmusic/module/PlaylistBean;)V
    .locals 3

    .line 110
    iput-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/FeaturedItemAdapter$ItemHolder;->mHomePlaylist:Lcom/floatingtunes/youtubeplayer/topmusic/module/PlaylistBean;

    .line 112
    invoke-virtual {p1}, Lcom/floatingtunes/youtubeplayer/topmusic/module/PlaylistBean;->getTitle()Ljava/lang/String;

    move-result-object v0

    .line 114
    invoke-virtual {p1}, Lcom/floatingtunes/youtubeplayer/topmusic/module/PlaylistBean;->getType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "top_country"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 116
    invoke-static {v0}, Lcom/floatingtunes/youtubeplayer/topmusic/util/CountryUtil;->getCountryNameByCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 117
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 118
    invoke-virtual {p1}, Lcom/floatingtunes/youtubeplayer/topmusic/module/PlaylistBean;->getTitle()Ljava/lang/String;

    move-result-object v0

    .line 122
    :cond_0
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/FeaturedItemAdapter$ItemHolder;->mTvTitle:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 124
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/FeaturedItemAdapter$ItemHolder;->mHomePlaylist:Lcom/floatingtunes/youtubeplayer/topmusic/module/PlaylistBean;

    invoke-virtual {p1}, Lcom/floatingtunes/youtubeplayer/topmusic/module/PlaylistBean;->getThumbnail()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    const-string v0, "http"

    .line 127
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 128
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/FeaturedItemAdapter$ItemHolder;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/FeaturedItemAdapter$ItemHolder;->mIvCover:Landroid/widget/ImageView;

    invoke-static {v0, p1, v1}, Lcom/floatingtunes/youtubeplayer/topmusic/util/ImageUtil;->loadImage(Landroid/content/Context;Ljava/lang/String;Landroid/widget/ImageView;)V

    goto :goto_0

    :cond_1
    const-string v0, ".png"

    const-string v1, ".webp"

    .line 131
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 133
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/FeaturedItemAdapter$ItemHolder;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/FeaturedItemAdapter$ItemHolder;->mIvCover:Landroid/widget/ImageView;

    invoke-static {v0, p1, v1}, Lcom/floatingtunes/youtubeplayer/topmusic/util/ImageUtil;->loadImageFromAsset(Landroid/content/Context;Ljava/lang/String;Landroid/widget/ImageView;)V

    :cond_2
    :goto_0
    return-void
.end method
