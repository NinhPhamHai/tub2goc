.class Lcom/floatingtunes/youtubeplayer/topmusic/fragment/TopListFragment$2;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "TopListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/floatingtunes/youtubeplayer/topmusic/fragment/TopListFragment;->initRecyclerView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/floatingtunes/youtubeplayer/topmusic/fragment/TopListFragment;


# direct methods
.method constructor <init>(Lcom/floatingtunes/youtubeplayer/topmusic/fragment/TopListFragment;)V
    .locals 0

    .line 257
    iput-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/TopListFragment$2;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/fragment/TopListFragment;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 0

    .line 261
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 262
    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result p1

    .line 264
    iget-object p2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/TopListFragment$2;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/fragment/TopListFragment;

    iget-object p2, p2, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/TopListFragment;->mTopRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p1

    instance-of p1, p1, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/holder/LoadingHolder;

    if-eqz p1, :cond_1

    .line 265
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/TopListFragment$2;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/fragment/TopListFragment;

    invoke-static {p1}, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/TopListFragment;->access$300(Lcom/floatingtunes/youtubeplayer/topmusic/fragment/TopListFragment;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 267
    sget-object p1, Lcom/floatingtunes/youtubeplayer/topmusic/retrofit/YConfig;->NO_MORE_PAGE:Ljava/lang/String;

    iget-object p2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/TopListFragment$2;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/fragment/TopListFragment;

    iget-object p2, p2, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/TopListFragment;->mCurrentPageToken:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 269
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/TopListFragment$2;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/fragment/TopListFragment;

    invoke-static {p1}, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/TopListFragment;->access$200(Lcom/floatingtunes/youtubeplayer/topmusic/fragment/TopListFragment;)V

    goto :goto_0

    .line 273
    :cond_0
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/TopListFragment$2;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/fragment/TopListFragment;

    invoke-static {p1}, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/TopListFragment;->access$100(Lcom/floatingtunes/youtubeplayer/topmusic/fragment/TopListFragment;)Lcom/floatingtunes/youtubeplayer/topmusic/adapter/LoadingAdapter;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 275
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/TopListFragment$2;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/fragment/TopListFragment;

    invoke-static {p1}, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/TopListFragment;->access$100(Lcom/floatingtunes/youtubeplayer/topmusic/fragment/TopListFragment;)Lcom/floatingtunes/youtubeplayer/topmusic/adapter/LoadingAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/LoadingAdapter;->getLoadingSate()Lcom/floatingtunes/youtubeplayer/topmusic/adapter/LoadState;

    move-result-object p1

    sget-object p2, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/LoadState;->NO_RESULT:Lcom/floatingtunes/youtubeplayer/topmusic/adapter/LoadState;

    if-eq p1, p2, :cond_1

    .line 276
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/TopListFragment$2;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/fragment/TopListFragment;

    invoke-static {p1}, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/TopListFragment;->access$100(Lcom/floatingtunes/youtubeplayer/topmusic/fragment/TopListFragment;)Lcom/floatingtunes/youtubeplayer/topmusic/adapter/LoadingAdapter;

    move-result-object p1

    sget-object p2, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/LoadState;->NO_RESULT:Lcom/floatingtunes/youtubeplayer/topmusic/adapter/LoadState;

    invoke-virtual {p1, p2}, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/LoadingAdapter;->setLoadingSate(Lcom/floatingtunes/youtubeplayer/topmusic/adapter/LoadState;)V

    :cond_1
    :goto_0
    return-void
.end method
