.class Lcom/floatingtunes/youtubeplayer/topmusic/fragment/NewTopFragment$SimpleListAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "NewTopFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/floatingtunes/youtubeplayer/topmusic/fragment/NewTopFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SimpleListAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private TYPE_CURATED_ITEM:I

.field private TYPE_ITEM:I

.field private mContext:Landroid/content/Context;

.field private mCount:I

.field final synthetic this$0:Lcom/floatingtunes/youtubeplayer/topmusic/fragment/NewTopFragment;


# direct methods
.method public constructor <init>(Lcom/floatingtunes/youtubeplayer/topmusic/fragment/NewTopFragment;Landroid/content/Context;I)V
    .locals 0

    .line 525
    iput-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/NewTopFragment$SimpleListAdapter;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/fragment/NewTopFragment;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    const/16 p1, 0x5a

    .line 522
    iput p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/NewTopFragment$SimpleListAdapter;->TYPE_ITEM:I

    const/16 p1, 0x63

    .line 523
    iput p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/NewTopFragment$SimpleListAdapter;->TYPE_CURATED_ITEM:I

    .line 526
    iput-object p2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/NewTopFragment$SimpleListAdapter;->mContext:Landroid/content/Context;

    .line 527
    iput p3, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/NewTopFragment$SimpleListAdapter;->mCount:I

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 554
    iget v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/NewTopFragment$SimpleListAdapter;->mCount:I

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .line 559
    iget v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/NewTopFragment$SimpleListAdapter;->mCount:I

    if-ge p1, v0, :cond_0

    .line 560
    iget p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/NewTopFragment$SimpleListAdapter;->TYPE_ITEM:I

    return p1

    .line 562
    :cond_0
    iget p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/NewTopFragment$SimpleListAdapter;->TYPE_CURATED_ITEM:I

    return p1
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 1

    .line 547
    instance-of v0, p1, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/NewTopFragment$SimpleHolder;

    if-eqz v0, :cond_0

    .line 548
    check-cast p1, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/NewTopFragment$SimpleHolder;

    invoke-virtual {p1, p2}, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/NewTopFragment$SimpleHolder;->bindView(I)V

    :cond_0
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 2

    .line 534
    iget v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/NewTopFragment$SimpleListAdapter;->TYPE_ITEM:I

    const/4 v1, 0x0

    if-ne p2, v0, :cond_0

    .line 535
    iget-object p2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/NewTopFragment$SimpleListAdapter;->mContext:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0c0046

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 536
    new-instance p2, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/NewTopFragment$SimpleHolder;

    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/NewTopFragment$SimpleListAdapter;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/fragment/NewTopFragment;

    invoke-direct {p2, v0, p1}, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/NewTopFragment$SimpleHolder;-><init>(Lcom/floatingtunes/youtubeplayer/topmusic/fragment/NewTopFragment;Landroid/view/View;)V

    return-object p2

    .line 539
    :cond_0
    iget-object p2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/NewTopFragment$SimpleListAdapter;->mContext:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0c0052

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 540
    new-instance p2, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/NewTopFragment$CuratedHolder;

    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/NewTopFragment$SimpleListAdapter;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/fragment/NewTopFragment;

    invoke-direct {p2, v0, p1}, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/NewTopFragment$CuratedHolder;-><init>(Lcom/floatingtunes/youtubeplayer/topmusic/fragment/NewTopFragment;Landroid/view/View;)V

    return-object p2
.end method
