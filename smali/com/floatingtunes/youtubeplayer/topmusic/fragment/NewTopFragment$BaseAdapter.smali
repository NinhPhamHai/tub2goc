.class Lcom/floatingtunes/youtubeplayer/topmusic/fragment/NewTopFragment$BaseAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "NewTopFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/floatingtunes/youtubeplayer/topmusic/fragment/NewTopFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BaseAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/floatingtunes/youtubeplayer/topmusic/fragment/NewTopFragment$BaseAdapter$BaseHolder;
    }
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

.field final synthetic this$0:Lcom/floatingtunes/youtubeplayer/topmusic/fragment/NewTopFragment;


# direct methods
.method private constructor <init>(Lcom/floatingtunes/youtubeplayer/topmusic/fragment/NewTopFragment;)V
    .locals 0

    .line 440
    iput-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/NewTopFragment$BaseAdapter;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/fragment/NewTopFragment;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    const/16 p1, 0x5a

    .line 442
    iput p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/NewTopFragment$BaseAdapter;->TYPE_ITEM:I

    const/16 p1, 0x63

    .line 443
    iput p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/NewTopFragment$BaseAdapter;->TYPE_CURATED_ITEM:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/floatingtunes/youtubeplayer/topmusic/fragment/NewTopFragment;Lcom/floatingtunes/youtubeplayer/topmusic/fragment/NewTopFragment$1;)V
    .locals 0

    .line 440
    invoke-direct {p0, p1}, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/NewTopFragment$BaseAdapter;-><init>(Lcom/floatingtunes/youtubeplayer/topmusic/fragment/NewTopFragment;)V

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    const/4 v0, 0x5

    return v0
.end method

.method public getItemViewType(I)I
    .locals 1

    const/4 v0, 0x4

    if-ge p1, v0, :cond_0

    .line 476
    iget p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/NewTopFragment$BaseAdapter;->TYPE_ITEM:I

    return p1

    .line 478
    :cond_0
    iget p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/NewTopFragment$BaseAdapter;->TYPE_CURATED_ITEM:I

    return p1
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 1

    .line 462
    instance-of v0, p1, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/NewTopFragment$BaseAdapter$BaseHolder;

    if-eqz v0, :cond_0

    .line 463
    check-cast p1, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/NewTopFragment$BaseAdapter$BaseHolder;

    invoke-static {p1, p2}, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/NewTopFragment$BaseAdapter$BaseHolder;->access$500(Lcom/floatingtunes/youtubeplayer/topmusic/fragment/NewTopFragment$BaseAdapter$BaseHolder;I)V

    :cond_0
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 2

    .line 449
    iget v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/NewTopFragment$BaseAdapter;->TYPE_ITEM:I

    const/4 v1, 0x0

    if-ne p2, v0, :cond_0

    .line 450
    iget-object p2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/NewTopFragment$BaseAdapter;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/fragment/NewTopFragment;

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0c0046

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 451
    new-instance p2, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/NewTopFragment$BaseAdapter$BaseHolder;

    invoke-direct {p2, p0, p1}, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/NewTopFragment$BaseAdapter$BaseHolder;-><init>(Lcom/floatingtunes/youtubeplayer/topmusic/fragment/NewTopFragment$BaseAdapter;Landroid/view/View;)V

    return-object p2

    .line 454
    :cond_0
    iget-object p2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/NewTopFragment$BaseAdapter;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/fragment/NewTopFragment;

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0c0052

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 455
    new-instance p2, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/NewTopFragment$CuratedHolder;

    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/NewTopFragment$BaseAdapter;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/fragment/NewTopFragment;

    invoke-direct {p2, v0, p1}, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/NewTopFragment$CuratedHolder;-><init>(Lcom/floatingtunes/youtubeplayer/topmusic/fragment/NewTopFragment;Landroid/view/View;)V

    return-object p2
.end method
