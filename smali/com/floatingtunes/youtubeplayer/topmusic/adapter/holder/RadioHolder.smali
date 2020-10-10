.class public Lcom/floatingtunes/youtubeplayer/topmusic/adapter/holder/RadioHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "RadioHolder.java"

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

.field private img_ablum:Landroid/widget/ImageView;

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

.field mPosition:I

.field private mRoot:Landroid/view/View;

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

    .line 38
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const v0, 0x7f09005f

    .line 39
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/holder/RadioHolder;->channel_tv:Landroid/widget/TextView;

    const v0, 0x7f0900fd

    .line 40
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/holder/RadioHolder;->img_ablum:Landroid/widget/ImageView;

    const v0, 0x7f090297

    .line 41
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/holder/RadioHolder;->title_tv:Landroid/widget/TextView;

    const v0, 0x7f0902db

    .line 42
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/holder/RadioHolder;->views_tv:Landroid/widget/TextView;

    const v0, 0x7f090149

    .line 43
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/holder/RadioHolder;->mRoot:Landroid/view/View;

    .line 44
    iput-object p2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/holder/RadioHolder;->mDataList:Ljava/util/ArrayList;

    .line 45
    iput-object p3, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/holder/RadioHolder;->mContext:Landroid/content/Context;

    .line 46
    iput-object p4, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/holder/RadioHolder;->mListener:Lcom/floatingtunes/youtubeplayer/topmusic/adapter/listener/ItemListener;

    .line 47
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/holder/RadioHolder;->mRoot:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public bindData(I)V
    .locals 3

    .line 52
    iput p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/holder/RadioHolder;->mPosition:I

    const/4 v0, 0x0

    :goto_0
    if-gt v0, p1, :cond_0

    .line 55
    iget-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/holder/RadioHolder;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 59
    :cond_0
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/holder/RadioHolder;->mDataList:Ljava/util/ArrayList;

    iget v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/holder/RadioHolder;->mPosition:I

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;

    .line 60
    invoke-static {}, Lcom/floatingtunes/youtubeplayer/topmusic/app/AppContext;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;->getThumbnails()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/holder/RadioHolder;->img_ablum:Landroid/widget/ImageView;

    invoke-static {v0, v1, v2}, Lcom/floatingtunes/youtubeplayer/topmusic/util/ImageUtil;->loadImage(Landroid/content/Context;Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 61
    invoke-virtual {p1}, Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;->getTitle()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 62
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/holder/RadioHolder;->title_tv:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 64
    :cond_1
    invoke-virtual {p1}, Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;->getViewCount()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 65
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/holder/RadioHolder;->views_tv:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;->getViewCount()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " Views"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 67
    :cond_2
    invoke-virtual {p1}, Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;->getChannelTitle()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 68
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/holder/RadioHolder;->channel_tv:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Living: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;->getChannelTitle()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 74
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f090149

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 76
    :cond_0
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/holder/RadioHolder;->mListener:Lcom/floatingtunes/youtubeplayer/topmusic/adapter/listener/ItemListener;

    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/holder/RadioHolder;->mDataList:Ljava/util/ArrayList;

    iget v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/holder/RadioHolder;->mPosition:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/listener/ItemListener;->onItemClick(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
