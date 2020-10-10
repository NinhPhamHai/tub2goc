.class public Lcom/floatingtunes/youtubeplayer/topmusic/adapter/ArtistAdapter$ItemHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "ArtistAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/floatingtunes/youtubeplayer/topmusic/adapter/ArtistAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ItemHolder"
.end annotation


# instance fields
.field mCover:Landroid/widget/ImageView;

.field mRank:Landroid/widget/TextView;

.field mRankView:Landroid/widget/ImageView;

.field mTitle:Landroid/widget/TextView;

.field mViewCount:Landroid/widget/TextView;

.field t:Lcom/floatingtunes/youtubeplayer/topmusic/module/ArtistBean;

.field final synthetic this$0:Lcom/floatingtunes/youtubeplayer/topmusic/adapter/ArtistAdapter;


# direct methods
.method public constructor <init>(Lcom/floatingtunes/youtubeplayer/topmusic/adapter/ArtistAdapter;Landroid/view/View;)V
    .locals 1

    .line 105
    iput-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/ArtistAdapter$ItemHolder;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/adapter/ArtistAdapter;

    .line 106
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const v0, 0x7f0902c8

    .line 107
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/ArtistAdapter$ItemHolder;->mTitle:Landroid/widget/TextView;

    const v0, 0x7f0902cb

    .line 109
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/ArtistAdapter$ItemHolder;->mViewCount:Landroid/widget/TextView;

    const v0, 0x7f0902bd

    .line 110
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/ArtistAdapter$ItemHolder;->mRank:Landroid/widget/TextView;

    const v0, 0x7f090111

    .line 112
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/ArtistAdapter$ItemHolder;->mCover:Landroid/widget/ImageView;

    const v0, 0x7f090120

    .line 114
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/ArtistAdapter$ItemHolder;->mRankView:Landroid/widget/ImageView;

    .line 116
    new-instance v0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/ArtistAdapter$ItemHolder$1;

    invoke-direct {v0, p0, p1}, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/ArtistAdapter$ItemHolder$1;-><init>(Lcom/floatingtunes/youtubeplayer/topmusic/adapter/ArtistAdapter$ItemHolder;Lcom/floatingtunes/youtubeplayer/topmusic/adapter/ArtistAdapter;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method bindView(Lcom/floatingtunes/youtubeplayer/topmusic/module/ArtistBean;I)V
    .locals 2

    .line 136
    iput-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/ArtistAdapter$ItemHolder;->t:Lcom/floatingtunes/youtubeplayer/topmusic/module/ArtistBean;

    .line 138
    instance-of p2, p1, Lcom/floatingtunes/youtubeplayer/topmusic/module/ArtistBean;

    if-eqz p2, :cond_2

    .line 141
    iget-object p2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/ArtistAdapter$ItemHolder;->mTitle:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/floatingtunes/youtubeplayer/topmusic/module/ArtistBean;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 143
    iget-object p2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/ArtistAdapter$ItemHolder;->mViewCount:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/floatingtunes/youtubeplayer/topmusic/module/ArtistBean;->getViewCount()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " views"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 144
    invoke-virtual {p1}, Lcom/floatingtunes/youtubeplayer/topmusic/module/ArtistBean;->getThumbnail()Ljava/lang/String;

    move-result-object p2

    .line 147
    invoke-virtual {p1}, Lcom/floatingtunes/youtubeplayer/topmusic/module/ArtistBean;->getCurrentRanks()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/floatingtunes/youtubeplayer/topmusic/module/ArtistBean;->getPreviousRanks()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 148
    invoke-virtual {p1}, Lcom/floatingtunes/youtubeplayer/topmusic/module/ArtistBean;->getCurrentRanks()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 149
    invoke-virtual {p1}, Lcom/floatingtunes/youtubeplayer/topmusic/module/ArtistBean;->getPreviousRanks()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    sub-int/2addr v0, v1

    if-lez v0, :cond_0

    .line 152
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/ArtistAdapter$ItemHolder;->mRankView:Landroid/widget/ImageView;

    const v1, 0x7f080215

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 154
    :cond_0
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/ArtistAdapter$ItemHolder;->mRankView:Landroid/widget/ImageView;

    const v1, 0x7f080216

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 158
    :cond_1
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/ArtistAdapter$ItemHolder;->mRankView:Landroid/widget/ImageView;

    const v1, 0x7f0800bb

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 162
    :goto_0
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/ArtistAdapter$ItemHolder;->mRank:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/floatingtunes/youtubeplayer/topmusic/module/ArtistBean;->getCurrentRanks()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 165
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 166
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/ArtistAdapter$ItemHolder;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/adapter/ArtistAdapter;

    invoke-static {p1}, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/ArtistAdapter;->access$100(Lcom/floatingtunes/youtubeplayer/topmusic/adapter/ArtistAdapter;)Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/ArtistAdapter$ItemHolder;->mCover:Landroid/widget/ImageView;

    invoke-static {p1, p2, v0}, Lcom/floatingtunes/youtubeplayer/topmusic/util/ImageUtil;->loadArtistImage(Landroid/content/Context;Ljava/lang/String;Landroid/widget/ImageView;)V

    :cond_2
    return-void
.end method
