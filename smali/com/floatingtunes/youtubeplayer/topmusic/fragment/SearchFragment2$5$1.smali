.class Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchFragment2$5$1;
.super Ljava/lang/Object;
.source "SearchFragment2.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchFragment2$5;->onResponse(Lokhttp3/Call;Lokhttp3/Response;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchFragment2$5;

.field final synthetic val$mSearchArray:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchFragment2$5;[Ljava/lang/String;)V
    .locals 0

    .line 323
    iput-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchFragment2$5$1;->this$1:Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchFragment2$5;

    iput-object p2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchFragment2$5$1;->val$mSearchArray:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 326
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchFragment2$5$1;->this$1:Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchFragment2$5;

    iget-object v0, v0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchFragment2$5;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchFragment2;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 329
    :try_start_0
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchFragment2$5$1;->this$1:Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchFragment2$5;

    iget-object v0, v0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchFragment2$5;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchFragment2;

    iget-object v0, v0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchFragment2;->mMainFragment:Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchMain;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchFragment2$5$1;->this$1:Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchFragment2$5;

    iget-object v0, v0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchFragment2$5;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchFragment2;

    iget-object v0, v0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchFragment2;->mMainFragment:Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchMain;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 330
    new-instance v0, Landroid/widget/ArrayAdapter;

    iget-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchFragment2$5$1;->this$1:Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchFragment2$5;

    iget-object v1, v1, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchFragment2$5;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchFragment2;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x109000a

    iget-object v3, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchFragment2$5$1;->val$mSearchArray:[Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 332
    iget-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchFragment2$5$1;->this$1:Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchFragment2$5;

    iget-object v1, v1, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchFragment2$5;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchFragment2;

    iget-object v1, v1, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchFragment2;->mSearchEdit:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v1, v0}, Landroid/widget/AutoCompleteTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 334
    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 337
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method
