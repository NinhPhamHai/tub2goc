.class public Lcom/floatingtunes/youtubeplayer/topmusic/adapter/holder/SimpleVideoHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "SimpleVideoHolder.java"

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

.field private mPosition:I

.field private mRoot:Landroid/view/View;

.field private rank_tv:Landroid/widget/TextView;

.field private title_tv:Landroid/widget/TextView;


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

    .line 35
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const v0, 0x7f09005f

    .line 36
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/holder/SimpleVideoHolder;->channel_tv:Landroid/widget/TextView;

    const v0, 0x7f0901f3

    .line 37
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/holder/SimpleVideoHolder;->rank_tv:Landroid/widget/TextView;

    const v0, 0x7f090297

    .line 38
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/holder/SimpleVideoHolder;->title_tv:Landroid/widget/TextView;

    const v0, 0x7f090194

    .line 39
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/holder/SimpleVideoHolder;->mMore:Landroid/widget/ImageView;

    const v0, 0x7f090149

    .line 40
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/holder/SimpleVideoHolder;->mRoot:Landroid/view/View;

    .line 41
    iput-object p2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/holder/SimpleVideoHolder;->mDataList:Ljava/util/ArrayList;

    .line 42
    iput-object p3, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/holder/SimpleVideoHolder;->mContext:Landroid/content/Context;

    .line 43
    iput-object p4, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/holder/SimpleVideoHolder;->mListener:Lcom/floatingtunes/youtubeplayer/topmusic/adapter/listener/ItemListener;

    .line 44
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/holder/SimpleVideoHolder;->mMore:Landroid/widget/ImageView;

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 45
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/holder/SimpleVideoHolder;->mRoot:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public bindData(I)V
    .locals 3

    .line 50
    iput p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/holder/SimpleVideoHolder;->mPosition:I

    const/4 v0, 0x0

    :goto_0
    if-gt v0, p1, :cond_0

    .line 53
    iget-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/holder/SimpleVideoHolder;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 57
    :cond_0
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/holder/SimpleVideoHolder;->mDataList:Ljava/util/ArrayList;

    iget v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/holder/SimpleVideoHolder;->mPosition:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;

    .line 58
    iget-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/holder/SimpleVideoHolder;->rank_tv:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 59
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/holder/SimpleVideoHolder;->title_tv:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 60
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/holder/SimpleVideoHolder;->channel_tv:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;->getChannelTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 65
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f090149

    if-eq p1, v0, :cond_1

    const v0, 0x7f090194

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 67
    :cond_0
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/holder/SimpleVideoHolder;->mListener:Lcom/floatingtunes/youtubeplayer/topmusic/adapter/listener/ItemListener;

    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/holder/SimpleVideoHolder;->mDataList:Ljava/util/ArrayList;

    iget v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/holder/SimpleVideoHolder;->mPosition:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/listener/ItemListener;->onMoreItemClick(Ljava/lang/Object;)V

    goto :goto_0

    .line 70
    :cond_1
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/holder/SimpleVideoHolder;->mListener:Lcom/floatingtunes/youtubeplayer/topmusic/adapter/listener/ItemListener;

    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/holder/SimpleVideoHolder;->mDataList:Ljava/util/ArrayList;

    iget v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/holder/SimpleVideoHolder;->mPosition:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/listener/ItemListener;->onItemClick(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
