.class Lcom/floatingtunes/youtubeplayer/topmusic/activity/SpotlightOnViewAllActivity$2;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "SpotlightOnViewAllActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/floatingtunes/youtubeplayer/topmusic/activity/SpotlightOnViewAllActivity;->initRecyclerView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/floatingtunes/youtubeplayer/topmusic/activity/SpotlightOnViewAllActivity;


# direct methods
.method constructor <init>(Lcom/floatingtunes/youtubeplayer/topmusic/activity/SpotlightOnViewAllActivity;)V
    .locals 0

    .line 356
    iput-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/activity/SpotlightOnViewAllActivity$2;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/activity/SpotlightOnViewAllActivity;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 0

    .line 360
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 362
    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result p1

    iget-object p2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/activity/SpotlightOnViewAllActivity$2;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/activity/SpotlightOnViewAllActivity;

    invoke-static {p2}, Lcom/floatingtunes/youtubeplayer/topmusic/activity/SpotlightOnViewAllActivity;->access$000(Lcom/floatingtunes/youtubeplayer/topmusic/activity/SpotlightOnViewAllActivity;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-ne p1, p2, :cond_1

    .line 364
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/activity/SpotlightOnViewAllActivity$2;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/activity/SpotlightOnViewAllActivity;

    invoke-static {p1}, Lcom/floatingtunes/youtubeplayer/topmusic/activity/SpotlightOnViewAllActivity;->access$200(Lcom/floatingtunes/youtubeplayer/topmusic/activity/SpotlightOnViewAllActivity;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 365
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/activity/SpotlightOnViewAllActivity$2;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/activity/SpotlightOnViewAllActivity;

    iget-object p2, p1, Lcom/floatingtunes/youtubeplayer/topmusic/activity/SpotlightOnViewAllActivity;->PAGE_TOKEN_END:Ljava/lang/String;

    iget-object p1, p1, Lcom/floatingtunes/youtubeplayer/topmusic/activity/SpotlightOnViewAllActivity;->mCurrentPageToken:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 367
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/activity/SpotlightOnViewAllActivity$2;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/activity/SpotlightOnViewAllActivity;

    invoke-static {p1}, Lcom/floatingtunes/youtubeplayer/topmusic/activity/SpotlightOnViewAllActivity;->access$400(Lcom/floatingtunes/youtubeplayer/topmusic/activity/SpotlightOnViewAllActivity;)V

    goto :goto_0

    .line 370
    :cond_0
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/activity/SpotlightOnViewAllActivity$2;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/activity/SpotlightOnViewAllActivity;

    iget-object p1, p1, Lcom/floatingtunes/youtubeplayer/topmusic/activity/SpotlightOnViewAllActivity;->mDiscoverAdapter:Lcom/floatingtunes/youtubeplayer/topmusic/activity/SpotlightOnViewAllActivity$DiscoverAdapter;

    invoke-virtual {p1}, Lcom/floatingtunes/youtubeplayer/topmusic/activity/SpotlightOnViewAllActivity$DiscoverAdapter;->getAllDataLoad()Z

    move-result p1

    if-nez p1, :cond_1

    .line 371
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/activity/SpotlightOnViewAllActivity$2;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/activity/SpotlightOnViewAllActivity;

    iget-object p1, p1, Lcom/floatingtunes/youtubeplayer/topmusic/activity/SpotlightOnViewAllActivity;->mDiscoverAdapter:Lcom/floatingtunes/youtubeplayer/topmusic/activity/SpotlightOnViewAllActivity$DiscoverAdapter;

    invoke-virtual {p1}, Lcom/floatingtunes/youtubeplayer/topmusic/activity/SpotlightOnViewAllActivity$DiscoverAdapter;->setAllDataLoad()V

    :cond_1
    :goto_0
    return-void
.end method
