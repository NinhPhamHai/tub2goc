.class Lcom/floatingtunes/youtubeplayer/topmusic/home/LoadAllActivity$3;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "LoadAllActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/floatingtunes/youtubeplayer/topmusic/home/LoadAllActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/floatingtunes/youtubeplayer/topmusic/home/LoadAllActivity;


# direct methods
.method constructor <init>(Lcom/floatingtunes/youtubeplayer/topmusic/home/LoadAllActivity;)V
    .locals 0

    .line 127
    iput-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/home/LoadAllActivity$3;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/home/LoadAllActivity;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 0

    .line 131
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 132
    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result p1

    .line 133
    iget-object p2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/home/LoadAllActivity$3;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/home/LoadAllActivity;

    iget-object p2, p2, Lcom/floatingtunes/youtubeplayer/topmusic/home/LoadAllActivity;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p1

    instance-of p1, p1, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/holder/LoadingHolder;

    if-eqz p1, :cond_1

    .line 134
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/home/LoadAllActivity$3;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/home/LoadAllActivity;

    iget-boolean p2, p1, Lcom/floatingtunes/youtubeplayer/topmusic/home/LoadAllActivity;->isLoading:Z

    if-nez p2, :cond_1

    .line 135
    iget-boolean p2, p1, Lcom/floatingtunes/youtubeplayer/topmusic/home/LoadAllActivity;->hasResult:Z

    if-eqz p2, :cond_0

    .line 136
    invoke-static {p1}, Lcom/floatingtunes/youtubeplayer/topmusic/home/LoadAllActivity;->access$100(Lcom/floatingtunes/youtubeplayer/topmusic/home/LoadAllActivity;)V

    goto :goto_0

    .line 139
    :cond_0
    iget-object p1, p1, Lcom/floatingtunes/youtubeplayer/topmusic/home/LoadAllActivity;->mLoadingAdapter:Lcom/floatingtunes/youtubeplayer/topmusic/adapter/LoadingAdapter;

    invoke-virtual {p1}, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/LoadingAdapter;->getLoadingSate()Lcom/floatingtunes/youtubeplayer/topmusic/adapter/LoadState;

    move-result-object p1

    sget-object p2, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/LoadState;->NO_RESULT:Lcom/floatingtunes/youtubeplayer/topmusic/adapter/LoadState;

    if-eq p1, p2, :cond_1

    .line 140
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/home/LoadAllActivity$3;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/home/LoadAllActivity;

    iget-object p1, p1, Lcom/floatingtunes/youtubeplayer/topmusic/home/LoadAllActivity;->mLoadingAdapter:Lcom/floatingtunes/youtubeplayer/topmusic/adapter/LoadingAdapter;

    invoke-virtual {p1, p2}, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/LoadingAdapter;->setLoadingSate(Lcom/floatingtunes/youtubeplayer/topmusic/adapter/LoadState;)V

    :cond_1
    :goto_0
    return-void
.end method
