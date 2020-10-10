.class Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchResultForChannel$4;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "SearchResultForChannel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchResultForChannel;->initRecyclerView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchResultForChannel;


# direct methods
.method constructor <init>(Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchResultForChannel;)V
    .locals 0

    .line 201
    iput-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchResultForChannel$4;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchResultForChannel;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 0

    .line 205
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 206
    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result p1

    .line 207
    iget-object p2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchResultForChannel$4;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchResultForChannel;

    iget-object p2, p2, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchResultForChannel;->mRvContent:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p1

    instance-of p1, p1, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/holder/LoadingHolder;

    if-eqz p1, :cond_1

    .line 208
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchResultForChannel$4;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchResultForChannel;

    invoke-static {p1}, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchResultForChannel;->access$100(Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchResultForChannel;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 209
    sget-object p1, Lcom/floatingtunes/youtubeplayer/topmusic/retrofit/YConfig;->NO_MORE_PAGE:Ljava/lang/String;

    iget-object p2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchResultForChannel$4;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchResultForChannel;

    invoke-static {p2}, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchResultForChannel;->access$400(Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchResultForChannel;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 210
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchResultForChannel$4;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchResultForChannel;

    iget-object p2, p1, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchResultForChannel;->mChannelId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchResultForChannel;->loadAllResult(Ljava/lang/String;)V

    goto :goto_0

    .line 213
    :cond_0
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchResultForChannel$4;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchResultForChannel;

    iget-object p1, p1, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchResultForChannel;->mLoadingAdapter:Lcom/floatingtunes/youtubeplayer/topmusic/adapter/LoadingAdapter;

    sget-object p2, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/LoadState;->NO_RESULT:Lcom/floatingtunes/youtubeplayer/topmusic/adapter/LoadState;

    invoke-virtual {p1, p2}, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/LoadingAdapter;->setLoadingSate(Lcom/floatingtunes/youtubeplayer/topmusic/adapter/LoadState;)V

    :cond_1
    :goto_0
    return-void
.end method
