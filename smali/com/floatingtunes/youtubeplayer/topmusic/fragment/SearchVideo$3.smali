.class Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchVideo$3;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "SearchVideo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchVideo;->initRecyclerView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchVideo;


# direct methods
.method constructor <init>(Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchVideo;)V
    .locals 0

    .line 334
    iput-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchVideo$3;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchVideo;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 0

    .line 338
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 339
    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result p1

    .line 342
    iget-object p2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchVideo$3;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchVideo;

    iget-object p2, p2, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchVideo;->mRvContent:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p1

    instance-of p1, p1, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/holder/LoadingHolder;

    if-eqz p1, :cond_1

    .line 343
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchVideo$3;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchVideo;

    invoke-static {p1}, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchVideo;->access$200(Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchVideo;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 344
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchVideo$3;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchVideo;

    iget p2, p1, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchVideo;->page:I

    const/16 p3, 0x14

    if-gt p2, p3, :cond_0

    .line 345
    invoke-virtual {p1}, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchVideo;->loadAllResult()V

    goto :goto_0

    .line 348
    :cond_0
    sget-object p2, Lcom/floatingtunes/youtubeplayer/topmusic/retrofit/YConfig;->NO_MORE_PAGE:Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchVideo;->access$402(Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchVideo;Ljava/lang/String;)Ljava/lang/String;

    .line 350
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchVideo$3;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchVideo;

    iget-object p1, p1, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchVideo;->mLoadingAdapter:Lcom/floatingtunes/youtubeplayer/topmusic/adapter/LoadingAdapter;

    if-eqz p1, :cond_1

    .line 352
    invoke-virtual {p1}, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/LoadingAdapter;->getLoadingSate()Lcom/floatingtunes/youtubeplayer/topmusic/adapter/LoadState;

    move-result-object p1

    sget-object p2, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/LoadState;->NO_RESULT:Lcom/floatingtunes/youtubeplayer/topmusic/adapter/LoadState;

    if-eq p1, p2, :cond_1

    .line 353
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchVideo$3;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchVideo;

    iget-object p1, p1, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchVideo;->mLoadingAdapter:Lcom/floatingtunes/youtubeplayer/topmusic/adapter/LoadingAdapter;

    invoke-virtual {p1, p2}, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/LoadingAdapter;->setLoadingSate(Lcom/floatingtunes/youtubeplayer/topmusic/adapter/LoadState;)V

    :cond_1
    :goto_0
    return-void
.end method
