.class Lcom/floatingtunes/youtubeplayer/topmusic/fragment/TopListFragment$5$1;
.super Ljava/lang/Object;
.source "TopListFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/floatingtunes/youtubeplayer/topmusic/fragment/TopListFragment$5;->onResponse(Lokhttp3/Call;Lokhttp3/Response;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/floatingtunes/youtubeplayer/topmusic/fragment/TopListFragment$5;


# direct methods
.method constructor <init>(Lcom/floatingtunes/youtubeplayer/topmusic/fragment/TopListFragment$5;)V
    .locals 0

    .line 559
    iput-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/TopListFragment$5$1;->this$1:Lcom/floatingtunes/youtubeplayer/topmusic/fragment/TopListFragment$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 563
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/TopListFragment$5$1;->this$1:Lcom/floatingtunes/youtubeplayer/topmusic/fragment/TopListFragment$5;

    iget-object v0, v0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/TopListFragment$5;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/fragment/TopListFragment;

    iget-object v0, v0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/TopListFragment;->mProgressBar:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    const/16 v1, 0x8

    .line 564
    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 567
    :cond_0
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/TopListFragment$5$1;->this$1:Lcom/floatingtunes/youtubeplayer/topmusic/fragment/TopListFragment$5;

    iget-object v0, v0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/TopListFragment$5;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/fragment/TopListFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/TopListFragment;->access$302(Lcom/floatingtunes/youtubeplayer/topmusic/fragment/TopListFragment;Z)Z

    .line 570
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/TopListFragment$5$1;->this$1:Lcom/floatingtunes/youtubeplayer/topmusic/fragment/TopListFragment$5;

    iget-object v0, v0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/TopListFragment$5;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/fragment/TopListFragment;

    invoke-static {v0}, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/TopListFragment;->access$000(Lcom/floatingtunes/youtubeplayer/topmusic/fragment/TopListFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/TopListFragment$5$1;->this$1:Lcom/floatingtunes/youtubeplayer/topmusic/fragment/TopListFragment$5;

    iget-object v0, v0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/TopListFragment$5;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/fragment/TopListFragment;

    invoke-static {v0}, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/TopListFragment;->access$800(Lcom/floatingtunes/youtubeplayer/topmusic/fragment/TopListFragment;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 571
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/TopListFragment$5$1;->this$1:Lcom/floatingtunes/youtubeplayer/topmusic/fragment/TopListFragment$5;

    iget-object v0, v0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/TopListFragment$5;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/fragment/TopListFragment;

    sget-object v1, Lcom/floatingtunes/youtubeplayer/topmusic/retrofit/YConfig;->NO_MORE_PAGE:Ljava/lang/String;

    iput-object v1, v0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/TopListFragment;->mCurrentPageToken:Ljava/lang/String;

    .line 574
    :cond_1
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/TopListFragment$5$1;->this$1:Lcom/floatingtunes/youtubeplayer/topmusic/fragment/TopListFragment$5;

    iget-object v0, v0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/TopListFragment$5;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/fragment/TopListFragment;

    invoke-static {v0}, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/TopListFragment;->access$000(Lcom/floatingtunes/youtubeplayer/topmusic/fragment/TopListFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/TopListFragment$5$1;->this$1:Lcom/floatingtunes/youtubeplayer/topmusic/fragment/TopListFragment$5;

    iget-object v0, v0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/TopListFragment$5;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/fragment/TopListFragment;

    invoke-static {v0}, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/TopListFragment;->access$800(Lcom/floatingtunes/youtubeplayer/topmusic/fragment/TopListFragment;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 575
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/TopListFragment$5$1;->this$1:Lcom/floatingtunes/youtubeplayer/topmusic/fragment/TopListFragment$5;

    iget-object v0, v0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/TopListFragment$5;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/fragment/TopListFragment;

    sget-object v1, Lcom/floatingtunes/youtubeplayer/topmusic/retrofit/YConfig;->NO_MORE_PAGE:Ljava/lang/String;

    iput-object v1, v0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/TopListFragment;->mCurrentPageToken:Ljava/lang/String;

    .line 579
    :cond_2
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/TopListFragment$5$1;->this$1:Lcom/floatingtunes/youtubeplayer/topmusic/fragment/TopListFragment$5;

    iget-object v0, v0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/TopListFragment$5;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/fragment/TopListFragment;

    invoke-static {v0}, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/TopListFragment;->access$700(Lcom/floatingtunes/youtubeplayer/topmusic/fragment/TopListFragment;)V

    return-void
.end method
