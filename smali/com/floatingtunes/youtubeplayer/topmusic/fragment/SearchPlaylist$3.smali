.class Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchPlaylist$3;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "SearchPlaylist.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchPlaylist;->initRecyclerView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchPlaylist;


# direct methods
.method constructor <init>(Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchPlaylist;)V
    .locals 0

    .line 283
    iput-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchPlaylist$3;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchPlaylist;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 0

    .line 287
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 288
    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result p1

    .line 291
    iget-object p2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchPlaylist$3;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchPlaylist;

    iget-object p2, p2, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchPlaylist;->mRvContent:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p1

    instance-of p1, p1, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/holder/LoadingHolder;

    if-eqz p1, :cond_1

    .line 292
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchPlaylist$3;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchPlaylist;

    invoke-static {p1}, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchPlaylist;->access$300(Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchPlaylist;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 293
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchPlaylist$3;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchPlaylist;

    invoke-static {p1}, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchPlaylist;->access$500(Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchPlaylist;)I

    move-result p1

    const/16 p2, 0x14

    if-gt p1, p2, :cond_0

    .line 294
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchPlaylist$3;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchPlaylist;

    invoke-virtual {p1}, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchPlaylist;->loadAllResult()V

    goto :goto_0

    .line 297
    :cond_0
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchPlaylist$3;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchPlaylist;

    sget-object p2, Lcom/floatingtunes/youtubeplayer/topmusic/retrofit/YConfig;->NO_MORE_PAGE:Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchPlaylist;->access$202(Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchPlaylist;Ljava/lang/String;)Ljava/lang/String;

    .line 299
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchPlaylist$3;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchPlaylist;

    iget-object p1, p1, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchPlaylist;->mLoadingAdapter:Lcom/floatingtunes/youtubeplayer/topmusic/adapter/LoadingAdapter;

    if-eqz p1, :cond_1

    .line 301
    invoke-virtual {p1}, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/LoadingAdapter;->getLoadingSate()Lcom/floatingtunes/youtubeplayer/topmusic/adapter/LoadState;

    move-result-object p1

    sget-object p2, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/LoadState;->NO_RESULT:Lcom/floatingtunes/youtubeplayer/topmusic/adapter/LoadState;

    if-eq p1, p2, :cond_1

    .line 302
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchPlaylist$3;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchPlaylist;

    iget-object p1, p1, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchPlaylist;->mLoadingAdapter:Lcom/floatingtunes/youtubeplayer/topmusic/adapter/LoadingAdapter;

    invoke-virtual {p1, p2}, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/LoadingAdapter;->setLoadingSate(Lcom/floatingtunes/youtubeplayer/topmusic/adapter/LoadState;)V

    :cond_1
    :goto_0
    return-void
.end method
