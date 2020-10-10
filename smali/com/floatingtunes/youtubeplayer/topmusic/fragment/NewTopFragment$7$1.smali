.class Lcom/floatingtunes/youtubeplayer/topmusic/fragment/NewTopFragment$7$1;
.super Ljava/lang/Object;
.source "NewTopFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/floatingtunes/youtubeplayer/topmusic/fragment/NewTopFragment$7;->onResponse(Lokhttp3/Call;Lokhttp3/Response;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/floatingtunes/youtubeplayer/topmusic/fragment/NewTopFragment$7;

.field final synthetic val$data:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/floatingtunes/youtubeplayer/topmusic/fragment/NewTopFragment$7;Ljava/lang/String;)V
    .locals 0

    .line 793
    iput-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/NewTopFragment$7$1;->this$1:Lcom/floatingtunes/youtubeplayer/topmusic/fragment/NewTopFragment$7;

    iput-object p2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/NewTopFragment$7$1;->val$data:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 798
    :try_start_0
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/NewTopFragment$7$1;->val$data:Ljava/lang/String;

    iget-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/NewTopFragment$7$1;->this$1:Lcom/floatingtunes/youtubeplayer/topmusic/fragment/NewTopFragment$7;

    iget-object v1, v1, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/NewTopFragment$7;->val$country_code:Ljava/lang/String;

    iget-object v2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/NewTopFragment$7$1;->this$1:Lcom/floatingtunes/youtubeplayer/topmusic/fragment/NewTopFragment$7;

    iget-object v2, v2, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/NewTopFragment$7;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/fragment/NewTopFragment;

    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/NewTopFragment$7$1$1;

    invoke-direct {v3, p0}, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/NewTopFragment$7$1$1;-><init>(Lcom/floatingtunes/youtubeplayer/topmusic/fragment/NewTopFragment$7$1;)V

    invoke-static {v0, v1, v2, v3}, Lcom/floatingtunes/youtubeplayer/topmusic/util/TopChartsUtil;->parseTopChartsData(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Lcom/floatingtunes/youtubeplayer/topmusic/adapter/listener/DataListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 805
    :catch_0
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/NewTopFragment$7$1;->this$1:Lcom/floatingtunes/youtubeplayer/topmusic/fragment/NewTopFragment$7;

    iget-object v0, v0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/NewTopFragment$7;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/fragment/NewTopFragment;

    invoke-static {v0}, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/NewTopFragment;->access$1100(Lcom/floatingtunes/youtubeplayer/topmusic/fragment/NewTopFragment;)V

    :goto_0
    return-void
.end method
