.class public Lcom/floatingtunes/youtubeplayer/topmusic/adapter/holder/CardVideoHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "CardVideoHolder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        "Landroid/view/View$OnClickListener;"
    }
.end annotation


# instance fields
.field private channel_tv:Landroid/widget/TextView;

.field private duration_tv:Landroid/widget/TextView;

.field private img_ablum:Landroid/widget/ImageView;

.field private love_cb:Landroid/widget/CheckBox;

.field private mContext:Landroid/content/Context;

.field mDataList:Ljava/util/ArrayList;

.field mListener:Lcom/floatingtunes/youtubeplayer/topmusic/adapter/listener/ItemListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/floatingtunes/youtubeplayer/topmusic/adapter/listener/ItemListener<",
            "TT;>;"
        }
    .end annotation
.end field

.field private mMore:Landroid/widget/ImageView;

.field mPosition:I

.field private mRoot:Landroid/view/View;

.field private rank_tv:Landroid/widget/TextView;

.field private title_tv:Landroid/widget/TextView;

.field private views_tv:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;Ljava/util/ArrayList;Landroid/content/Context;Lcom/floatingtunes/youtubeplayer/topmusic/adapter/listener/ItemListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/ArrayList;",
            "Landroid/content/Context;",
            "Lcom/floatingtunes/youtubeplayer/topmusic/adapter/listener/ItemListener<",
            "TT;>;)V"
        }
    .end annotation

    .line 40
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const v0, 0x7f0900a4

    .line 41
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/holder/CardVideoHolder;->duration_tv:Landroid/widget/TextView;

    const v0, 0x7f09005f

    .line 42
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/holder/CardVideoHolder;->channel_tv:Landroid/widget/TextView;

    const v0, 0x7f0901f3

    .line 43
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/holder/CardVideoHolder;->rank_tv:Landroid/widget/TextView;

    const v0, 0x7f0900fd

    .line 44
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/holder/CardVideoHolder;->img_ablum:Landroid/widget/ImageView;

    const v0, 0x7f090297

    .line 45
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/holder/CardVideoHolder;->title_tv:Landroid/widget/TextView;

    const v0, 0x7f0902db

    .line 46
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/holder/CardVideoHolder;->views_tv:Landroid/widget/TextView;

    const v0, 0x7f090151

    .line 47
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/holder/CardVideoHolder;->love_cb:Landroid/widget/CheckBox;

    const v0, 0x7f090194

    .line 48
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/holder/CardVideoHolder;->mMore:Landroid/widget/ImageView;

    const v0, 0x7f090149

    .line 49
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/holder/CardVideoHolder;->mRoot:Landroid/view/View;

    .line 50
    iput-object p2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/holder/CardVideoHolder;->mDataList:Ljava/util/ArrayList;

    .line 51
    iput-object p3, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/holder/CardVideoHolder;->mContext:Landroid/content/Context;

    .line 52
    iput-object p4, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/holder/CardVideoHolder;->mListener:Lcom/floatingtunes/youtubeplayer/topmusic/adapter/listener/ItemListener;

    .line 53
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/holder/CardVideoHolder;->mMore:Landroid/widget/ImageView;

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 54
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/holder/CardVideoHolder;->love_cb:Landroid/widget/CheckBox;

    invoke-virtual {p1, p0}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 55
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/holder/CardVideoHolder;->mRoot:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 58
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/holder/CardVideoHolder;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/floatingtunes/youtubeplayer/topmusic/sp/SuperSp;->isDownloadEnable(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 59
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/holder/CardVideoHolder;->love_cb:Landroid/widget/CheckBox;

    const p2, 0x7f080253

    invoke-virtual {p1, p2}, Landroid/widget/CheckBox;->setButtonDrawable(I)V

    goto :goto_0

    .line 61
    :cond_0
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/holder/CardVideoHolder;->love_cb:Landroid/widget/CheckBox;

    const p2, 0x7f080089

    invoke-virtual {p1, p2}, Landroid/widget/CheckBox;->setButtonDrawable(I)V

    :goto_0
    return-void
.end method


# virtual methods
.method public bindData(I)V
    .locals 5

    .line 68
    iput p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/holder/CardVideoHolder;->mPosition:I

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-gt v1, p1, :cond_0

    .line 71
    iget-object v2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/holder/CardVideoHolder;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 75
    :cond_0
    iget-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/holder/CardVideoHolder;->mDataList:Ljava/util/ArrayList;

    iget v2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/holder/CardVideoHolder;->mPosition:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;

    .line 76
    iget-object v2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/holder/CardVideoHolder;->rank_tv:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v4, 0x1

    add-int/2addr p1, v4

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 77
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/holder/CardVideoHolder;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;->getThumbnails()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/holder/CardVideoHolder;->img_ablum:Landroid/widget/ImageView;

    invoke-static {p1, v2, v3}, Lcom/floatingtunes/youtubeplayer/topmusic/util/ImageUtil;->loadImage(Landroid/content/Context;Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 79
    invoke-static {v1}, Lcom/floatingtunes/youtubeplayer/topmusic/database/local/DBHelper;->isFavoriteVideo(Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 80
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/holder/CardVideoHolder;->love_cb:Landroid/widget/CheckBox;

    invoke-virtual {p1, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_1

    .line 82
    :cond_1
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/holder/CardVideoHolder;->love_cb:Landroid/widget/CheckBox;

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 85
    :goto_1
    invoke-virtual {v1}, Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;->getTitle()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 86
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/holder/CardVideoHolder;->title_tv:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 88
    :cond_2
    invoke-virtual {v1}, Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;->getViewCount()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 89
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/holder/CardVideoHolder;->views_tv:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;->getViewCount()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 91
    :cond_3
    invoke-virtual {v1}, Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;->getDuration()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 92
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/holder/CardVideoHolder;->duration_tv:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;->getDuration()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 94
    :cond_4
    invoke-virtual {v1}, Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;->getChannelTitle()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 95
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/holder/CardVideoHolder;->channel_tv:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;->getChannelTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_5
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 101
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f090149

    if-eq p1, v0, :cond_2

    const v0, 0x7f090151

    if-eq p1, v0, :cond_1

    const v0, 0x7f090194

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 103
    :cond_0
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/holder/CardVideoHolder;->mListener:Lcom/floatingtunes/youtubeplayer/topmusic/adapter/listener/ItemListener;

    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/holder/CardVideoHolder;->mDataList:Ljava/util/ArrayList;

    iget v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/holder/CardVideoHolder;->mPosition:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/listener/ItemListener;->onMoreItemClick(Ljava/lang/Object;)V

    goto :goto_0

    .line 106
    :cond_1
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/holder/CardVideoHolder;->mListener:Lcom/floatingtunes/youtubeplayer/topmusic/adapter/listener/ItemListener;

    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/holder/CardVideoHolder;->love_cb:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    iget-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/holder/CardVideoHolder;->mDataList:Ljava/util/ArrayList;

    iget v2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/holder/CardVideoHolder;->mPosition:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/listener/ItemListener;->onFavoriteClick(ZLjava/lang/Object;)V

    goto :goto_0

    .line 109
    :cond_2
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/holder/CardVideoHolder;->mListener:Lcom/floatingtunes/youtubeplayer/topmusic/adapter/listener/ItemListener;

    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/holder/CardVideoHolder;->mDataList:Ljava/util/ArrayList;

    iget v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/holder/CardVideoHolder;->mPosition:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/listener/ItemListener;->onItemClick(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
