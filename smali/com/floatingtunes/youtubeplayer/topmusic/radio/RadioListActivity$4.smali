.class Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioListActivity$4;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "RadioListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioListActivity;->setRecycleView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioListActivity;


# direct methods
.method constructor <init>(Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioListActivity;)V
    .locals 0

    .line 197
    iput-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioListActivity$4;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioListActivity;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 0

    .line 201
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 202
    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result p1

    .line 204
    iget-object p2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioListActivity$4;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioListActivity;

    iget-object p2, p2, Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioListActivity;->recycleView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p1

    instance-of p1, p1, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/holder/LoadingHolder;

    if-eqz p1, :cond_1

    .line 205
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioListActivity$4;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioListActivity;

    invoke-static {p1}, Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioListActivity;->access$000(Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioListActivity;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 206
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioListActivity$4;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioListActivity;

    iget-object p1, p1, Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioListActivity;->recycleViewAdapter:Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioListActivity$RecycleViewAdapter;

    invoke-virtual {p1}, Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioListActivity$RecycleViewAdapter;->getLoadingSate()Lcom/floatingtunes/youtubeplayer/topmusic/adapter/LoadState;

    move-result-object p1

    sget-object p2, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/LoadState;->NO_RESULT:Lcom/floatingtunes/youtubeplayer/topmusic/adapter/LoadState;

    if-ne p1, p2, :cond_0

    goto :goto_0

    .line 209
    :cond_0
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioListActivity$4;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioListActivity;

    invoke-virtual {p1}, Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioListActivity;->loadData()V

    :cond_1
    :goto_0
    return-void
.end method
