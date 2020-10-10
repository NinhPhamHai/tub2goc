.class Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchResultForChannel$5;
.super Ljava/lang/Object;
.source "SearchResultForChannel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchResultForChannel;->loadingErrorPrompt(Ljava/lang/Throwable;)V
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

    .line 238
    iput-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchResultForChannel$5;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchResultForChannel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 243
    :try_start_0
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchResultForChannel$5;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchResultForChannel;

    iget-object v0, v0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchResultForChannel;->mRvContent:Landroidx/recyclerview/widget/RecyclerView;

    const v1, 0x7f110207

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Lcom/google/android/material/snackbar/Snackbar;->make(Landroid/view/View;II)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object v0

    .line 244
    invoke-virtual {v0}, Lcom/google/android/material/snackbar/Snackbar;->show()V

    .line 245
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchResultForChannel$5;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchResultForChannel;

    iget-object v0, v0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchResultForChannel;->mLoadingAdapter:Lcom/floatingtunes/youtubeplayer/topmusic/adapter/LoadingAdapter;

    if-eqz v0, :cond_0

    .line 246
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchResultForChannel$5;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchResultForChannel;

    iget-object v0, v0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchResultForChannel;->mLoadingAdapter:Lcom/floatingtunes/youtubeplayer/topmusic/adapter/LoadingAdapter;

    sget-object v1, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/LoadState;->FAILED:Lcom/floatingtunes/youtubeplayer/topmusic/adapter/LoadState;

    invoke-virtual {v0, v1}, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/LoadingAdapter;->setLoadingSate(Lcom/floatingtunes/youtubeplayer/topmusic/adapter/LoadState;)V

    .line 249
    :cond_0
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchResultForChannel$5;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchResultForChannel;

    iget-object v0, v0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchResultForChannel;->mProgressBar:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_1

    .line 250
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchResultForChannel$5;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchResultForChannel;

    iget-object v0, v0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchResultForChannel;->mProgressBar:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 253
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method
