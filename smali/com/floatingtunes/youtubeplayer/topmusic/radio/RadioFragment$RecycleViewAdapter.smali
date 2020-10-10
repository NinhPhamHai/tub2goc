.class public Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioFragment$RecycleViewAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "RadioFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RecycleViewAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioFragment$RecycleViewAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioFragment$RecycleViewAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private mData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioFragment;


# direct methods
.method public constructor <init>(Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioFragment;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;)V"
        }
    .end annotation

    .line 217
    iput-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioFragment$RecycleViewAdapter;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioFragment;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 218
    iput-object p2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioFragment$RecycleViewAdapter;->mData:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 262
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioFragment$RecycleViewAdapter;->mData:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 212
    check-cast p1, Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioFragment$RecycleViewAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioFragment$RecycleViewAdapter;->onBindViewHolder(Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioFragment$RecycleViewAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioFragment$RecycleViewAdapter$ViewHolder;I)V
    .locals 2

    .line 241
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioFragment$RecycleViewAdapter;->mData:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map;

    const-string v0, "title"

    .line 242
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 243
    iget-object v1, p1, Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioFragment$RecycleViewAdapter$ViewHolder;->mTv:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v1, "color"

    .line 244
    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .line 245
    iget-object v1, p1, Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioFragment$RecycleViewAdapter$ViewHolder;->ll:Landroid/view/ViewGroup;

    invoke-virtual {v1, p2}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    .line 246
    iget-object p1, p1, Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioFragment$RecycleViewAdapter$ViewHolder;->ll:Landroid/view/ViewGroup;

    new-instance p2, Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioFragment$RecycleViewAdapter$1;

    invoke-direct {p2, p0, v0}, Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioFragment$RecycleViewAdapter$1;-><init>(Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioFragment$RecycleViewAdapter;Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 212
    invoke-virtual {p0, p1, p2}, Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioFragment$RecycleViewAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioFragment$RecycleViewAdapter$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioFragment$RecycleViewAdapter$ViewHolder;
    .locals 2

    .line 230
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0c009d

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 232
    new-instance p2, Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioFragment$RecycleViewAdapter$ViewHolder;

    invoke-direct {p2, p0, p1}, Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioFragment$RecycleViewAdapter$ViewHolder;-><init>(Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioFragment$RecycleViewAdapter;Landroid/view/View;)V

    return-object p2
.end method
