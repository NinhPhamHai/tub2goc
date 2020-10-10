.class public Lcom/floatingtunes/youtubeplayer/topmusic/adapter/SimpleSongHolder;
.super Lcom/floatingtunes/youtubeplayer/topmusic/adapter/NormalViewHolder;
.source "SimpleSongHolder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field channel_tv:Landroid/widget/TextView;

.field ic_cover:Landroid/widget/ImageView;

.field iv_down:Landroid/widget/ImageView;

.field mContext:Landroid/content/Context;

.field mDataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field mListener:Lcom/floatingtunes/youtubeplayer/topmusic/adapter/IVideoItemListener;

.field mMore:Landroid/widget/ImageView;

.field mPosition:I

.field mRoot:Landroid/view/View;

.field rank_tv:Landroid/widget/TextView;

.field title_tv:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Landroid/view/View;Ljava/util/List;Landroid/content/Context;Lcom/floatingtunes/youtubeplayer/topmusic/adapter/IVideoItemListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;",
            "Landroid/content/Context;",
            "Lcom/floatingtunes/youtubeplayer/topmusic/adapter/IVideoItemListener;",
            ")V"
        }
    .end annotation

    .line 38
    invoke-direct {p0, p1}, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/NormalViewHolder;-><init>(Landroid/view/View;)V

    const v0, 0x7f09005f

    .line 39
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/SimpleSongHolder;->channel_tv:Landroid/widget/TextView;

    const v0, 0x7f0901f3

    .line 40
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/SimpleSongHolder;->rank_tv:Landroid/widget/TextView;

    const v0, 0x7f090297

    .line 41
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/SimpleSongHolder;->title_tv:Landroid/widget/TextView;

    const v0, 0x7f090194

    .line 42
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/SimpleSongHolder;->mMore:Landroid/widget/ImageView;

    const v0, 0x7f0900f5

    .line 43
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/SimpleSongHolder;->ic_cover:Landroid/widget/ImageView;

    const v0, 0x7f090114

    .line 44
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/SimpleSongHolder;->iv_down:Landroid/widget/ImageView;

    const v0, 0x7f090149

    .line 45
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/SimpleSongHolder;->mRoot:Landroid/view/View;

    .line 46
    iput-object p2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/SimpleSongHolder;->mDataList:Ljava/util/List;

    .line 47
    iput-object p3, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/SimpleSongHolder;->mContext:Landroid/content/Context;

    .line 48
    iput-object p4, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/SimpleSongHolder;->mListener:Lcom/floatingtunes/youtubeplayer/topmusic/adapter/IVideoItemListener;

    .line 49
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/SimpleSongHolder;->mMore:Landroid/widget/ImageView;

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 50
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/SimpleSongHolder;->mRoot:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 51
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/SimpleSongHolder;->iv_down:Landroid/widget/ImageView;

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 53
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/SimpleSongHolder;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/floatingtunes/youtubeplayer/topmusic/sp/SuperSp;->isDownloadEnable(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 54
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/SimpleSongHolder;->iv_down:Landroid/widget/ImageView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 56
    :cond_0
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/SimpleSongHolder;->iv_down:Landroid/widget/ImageView;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    return-void
.end method


# virtual methods
.method public bindData(I)V
    .locals 3

    .line 64
    iput p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/SimpleSongHolder;->mPosition:I

    const/4 v0, 0x0

    :goto_0
    if-gt v0, p1, :cond_0

    .line 67
    iget-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/SimpleSongHolder;->mDataList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 71
    :cond_0
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/SimpleSongHolder;->mDataList:Ljava/util/List;

    iget v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/SimpleSongHolder;->mPosition:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;

    .line 72
    iget-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/SimpleSongHolder;->rank_tv:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 73
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/SimpleSongHolder;->title_tv:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 74
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/SimpleSongHolder;->channel_tv:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;->getChannelTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 75
    invoke-virtual {v0}, Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;->getThumbnails()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    const-string v0, "http"

    .line 78
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 79
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/SimpleSongHolder;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/SimpleSongHolder;->ic_cover:Landroid/widget/ImageView;

    invoke-static {v0, p1, v1}, Lcom/floatingtunes/youtubeplayer/topmusic/util/ImageUtil;->loadImage(Landroid/content/Context;Ljava/lang/String;Landroid/widget/ImageView;)V

    :cond_1
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 88
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f090114

    if-eq p1, v0, :cond_2

    const v0, 0x7f090149

    if-eq p1, v0, :cond_1

    const v0, 0x7f090194

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 90
    :cond_0
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/SimpleSongHolder;->mListener:Lcom/floatingtunes/youtubeplayer/topmusic/adapter/IVideoItemListener;

    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/SimpleSongHolder;->mDataList:Ljava/util/List;

    iget v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/SimpleSongHolder;->mPosition:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;

    invoke-interface {p1, v0}, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/IVideoItemListener;->onMoreItemClick(Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;)V

    goto :goto_0

    .line 93
    :cond_1
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/SimpleSongHolder;->mListener:Lcom/floatingtunes/youtubeplayer/topmusic/adapter/IVideoItemListener;

    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/SimpleSongHolder;->mDataList:Ljava/util/List;

    iget v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/SimpleSongHolder;->mPosition:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;

    invoke-interface {p1, v0}, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/IVideoItemListener;->onItemClick(Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;)V

    goto :goto_0

    .line 96
    :cond_2
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/SimpleSongHolder;->mListener:Lcom/floatingtunes/youtubeplayer/topmusic/adapter/IVideoItemListener;

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/SimpleSongHolder;->mDataList:Ljava/util/List;

    iget v2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/SimpleSongHolder;->mPosition:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;

    invoke-interface {p1, v0, v1}, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/IVideoItemListener;->onLovedClick(ZLcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;)V

    :goto_0
    return-void
.end method
