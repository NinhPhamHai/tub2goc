.class Lch/blinkenlights/android/vanilla/MirrorLinkMediaBrowserService$2;
.super Landroid/os/AsyncTask;
.source "MirrorLinkMediaBrowserService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lch/blinkenlights/android/vanilla/MirrorLinkMediaBrowserService;->loadChildrenAsync(Lch/blinkenlights/android/vanilla/MirrorLinkMediaBrowserService$MediaID;Landroid/service/media/MediaBrowserService$Result;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lch/blinkenlights/android/vanilla/MirrorLinkMediaBrowserService;

.field final synthetic val$limiter:Lch/blinkenlights/android/vanilla/Limiter;

.field final synthetic val$parent:Lch/blinkenlights/android/vanilla/MirrorLinkMediaBrowserService$MediaID;

.field final synthetic val$result:Landroid/service/media/MediaBrowserService$Result;


# direct methods
.method constructor <init>(Lch/blinkenlights/android/vanilla/MirrorLinkMediaBrowserService;Lch/blinkenlights/android/vanilla/MirrorLinkMediaBrowserService$MediaID;Lch/blinkenlights/android/vanilla/Limiter;Landroid/service/media/MediaBrowserService$Result;)V
    .locals 0

    .line 338
    iput-object p1, p0, Lch/blinkenlights/android/vanilla/MirrorLinkMediaBrowserService$2;->this$0:Lch/blinkenlights/android/vanilla/MirrorLinkMediaBrowserService;

    iput-object p2, p0, Lch/blinkenlights/android/vanilla/MirrorLinkMediaBrowserService$2;->val$parent:Lch/blinkenlights/android/vanilla/MirrorLinkMediaBrowserService$MediaID;

    iput-object p3, p0, Lch/blinkenlights/android/vanilla/MirrorLinkMediaBrowserService$2;->val$limiter:Lch/blinkenlights/android/vanilla/Limiter;

    iput-object p4, p0, Lch/blinkenlights/android/vanilla/MirrorLinkMediaBrowserService$2;->val$result:Landroid/service/media/MediaBrowserService$Result;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 5

    const/4 p1, 0x1

    .line 346
    :try_start_0
    iget-object v0, p0, Lch/blinkenlights/android/vanilla/MirrorLinkMediaBrowserService$2;->this$0:Lch/blinkenlights/android/vanilla/MirrorLinkMediaBrowserService;

    invoke-static {v0}, Lch/blinkenlights/android/vanilla/MirrorLinkMediaBrowserService;->access$100(Lch/blinkenlights/android/vanilla/MirrorLinkMediaBrowserService;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 347
    iget-object v0, p0, Lch/blinkenlights/android/vanilla/MirrorLinkMediaBrowserService$2;->this$0:Lch/blinkenlights/android/vanilla/MirrorLinkMediaBrowserService;

    invoke-static {v0}, Lch/blinkenlights/android/vanilla/MirrorLinkMediaBrowserService;->access$200(Lch/blinkenlights/android/vanilla/MirrorLinkMediaBrowserService;)V

    .line 348
    iget-object v0, p0, Lch/blinkenlights/android/vanilla/MirrorLinkMediaBrowserService$2;->val$parent:Lch/blinkenlights/android/vanilla/MirrorLinkMediaBrowserService$MediaID;

    invoke-virtual {v0}, Lch/blinkenlights/android/vanilla/MirrorLinkMediaBrowserService$MediaID;->isTopAdapter()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 349
    iget-object v0, p0, Lch/blinkenlights/android/vanilla/MirrorLinkMediaBrowserService$2;->this$0:Lch/blinkenlights/android/vanilla/MirrorLinkMediaBrowserService;

    iget-object v1, p0, Lch/blinkenlights/android/vanilla/MirrorLinkMediaBrowserService$2;->this$0:Lch/blinkenlights/android/vanilla/MirrorLinkMediaBrowserService;

    invoke-static {v1}, Lch/blinkenlights/android/vanilla/MirrorLinkMediaBrowserService;->access$100(Lch/blinkenlights/android/vanilla/MirrorLinkMediaBrowserService;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lch/blinkenlights/android/vanilla/MirrorLinkMediaBrowserService$2;->val$parent:Lch/blinkenlights/android/vanilla/MirrorLinkMediaBrowserService$MediaID;

    iget v2, v2, Lch/blinkenlights/android/vanilla/MirrorLinkMediaBrowserService$MediaID;->mType:I

    iget-object v3, p0, Lch/blinkenlights/android/vanilla/MirrorLinkMediaBrowserService$2;->this$0:Lch/blinkenlights/android/vanilla/MirrorLinkMediaBrowserService;

    invoke-static {v3}, Lch/blinkenlights/android/vanilla/MirrorLinkMediaBrowserService;->access$300(Lch/blinkenlights/android/vanilla/MirrorLinkMediaBrowserService;)[Lch/blinkenlights/android/vanilla/MediaAdapter;

    move-result-object v3

    iget-object v4, p0, Lch/blinkenlights/android/vanilla/MirrorLinkMediaBrowserService$2;->val$parent:Lch/blinkenlights/android/vanilla/MirrorLinkMediaBrowserService$MediaID;

    iget v4, v4, Lch/blinkenlights/android/vanilla/MirrorLinkMediaBrowserService$MediaID;->mType:I

    aget-object v3, v3, v4

    invoke-static {v0, v1, v2, v3}, Lch/blinkenlights/android/vanilla/MirrorLinkMediaBrowserService;->access$400(Lch/blinkenlights/android/vanilla/MirrorLinkMediaBrowserService;Ljava/util/List;ILch/blinkenlights/android/vanilla/MediaAdapter;)V

    goto/16 :goto_0

    .line 350
    :cond_0
    iget-object v0, p0, Lch/blinkenlights/android/vanilla/MirrorLinkMediaBrowserService$2;->val$limiter:Lch/blinkenlights/android/vanilla/Limiter;

    if-eqz v0, :cond_6

    .line 351
    iget-object v0, p0, Lch/blinkenlights/android/vanilla/MirrorLinkMediaBrowserService$2;->val$limiter:Lch/blinkenlights/android/vanilla/Limiter;

    iget v0, v0, Lch/blinkenlights/android/vanilla/Limiter;->type:I

    if-eqz v0, :cond_5

    const/4 v1, 0x2

    if-eq v0, p1, :cond_4

    if-eq v0, v1, :cond_3

    const/4 v2, 0x3

    if-eq v0, v2, :cond_2

    const/4 v2, 0x4

    if-eq v0, v2, :cond_1

    goto/16 :goto_0

    .line 369
    :cond_1
    iget-object v0, p0, Lch/blinkenlights/android/vanilla/MirrorLinkMediaBrowserService$2;->this$0:Lch/blinkenlights/android/vanilla/MirrorLinkMediaBrowserService;

    invoke-static {v0}, Lch/blinkenlights/android/vanilla/MirrorLinkMediaBrowserService;->access$500(Lch/blinkenlights/android/vanilla/MirrorLinkMediaBrowserService;)Lch/blinkenlights/android/vanilla/MediaAdapter;

    move-result-object v0

    iget-object v2, p0, Lch/blinkenlights/android/vanilla/MirrorLinkMediaBrowserService$2;->val$limiter:Lch/blinkenlights/android/vanilla/Limiter;

    invoke-virtual {v0, v2}, Lch/blinkenlights/android/vanilla/MediaAdapter;->setLimiter(Lch/blinkenlights/android/vanilla/Limiter;)V

    .line 370
    iget-object v0, p0, Lch/blinkenlights/android/vanilla/MirrorLinkMediaBrowserService$2;->this$0:Lch/blinkenlights/android/vanilla/MirrorLinkMediaBrowserService;

    iget-object v2, p0, Lch/blinkenlights/android/vanilla/MirrorLinkMediaBrowserService$2;->this$0:Lch/blinkenlights/android/vanilla/MirrorLinkMediaBrowserService;

    invoke-static {v2}, Lch/blinkenlights/android/vanilla/MirrorLinkMediaBrowserService;->access$100(Lch/blinkenlights/android/vanilla/MirrorLinkMediaBrowserService;)Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lch/blinkenlights/android/vanilla/MirrorLinkMediaBrowserService$2;->this$0:Lch/blinkenlights/android/vanilla/MirrorLinkMediaBrowserService;

    invoke-static {v3}, Lch/blinkenlights/android/vanilla/MirrorLinkMediaBrowserService;->access$500(Lch/blinkenlights/android/vanilla/MirrorLinkMediaBrowserService;)Lch/blinkenlights/android/vanilla/MediaAdapter;

    move-result-object v3

    invoke-static {v0, v2, v1, v3}, Lch/blinkenlights/android/vanilla/MirrorLinkMediaBrowserService;->access$400(Lch/blinkenlights/android/vanilla/MirrorLinkMediaBrowserService;Ljava/util/List;ILch/blinkenlights/android/vanilla/MediaAdapter;)V

    goto/16 :goto_0

    .line 365
    :cond_2
    iget-object v0, p0, Lch/blinkenlights/android/vanilla/MirrorLinkMediaBrowserService$2;->this$0:Lch/blinkenlights/android/vanilla/MirrorLinkMediaBrowserService;

    invoke-static {v0}, Lch/blinkenlights/android/vanilla/MirrorLinkMediaBrowserService;->access$700(Lch/blinkenlights/android/vanilla/MirrorLinkMediaBrowserService;)Lch/blinkenlights/android/vanilla/MediaAdapter;

    move-result-object v0

    iget-object v1, p0, Lch/blinkenlights/android/vanilla/MirrorLinkMediaBrowserService$2;->val$limiter:Lch/blinkenlights/android/vanilla/Limiter;

    invoke-virtual {v0, v1}, Lch/blinkenlights/android/vanilla/MediaAdapter;->setLimiter(Lch/blinkenlights/android/vanilla/Limiter;)V

    .line 366
    iget-object v0, p0, Lch/blinkenlights/android/vanilla/MirrorLinkMediaBrowserService$2;->this$0:Lch/blinkenlights/android/vanilla/MirrorLinkMediaBrowserService;

    iget-object v1, p0, Lch/blinkenlights/android/vanilla/MirrorLinkMediaBrowserService$2;->this$0:Lch/blinkenlights/android/vanilla/MirrorLinkMediaBrowserService;

    invoke-static {v1}, Lch/blinkenlights/android/vanilla/MirrorLinkMediaBrowserService;->access$100(Lch/blinkenlights/android/vanilla/MirrorLinkMediaBrowserService;)Ljava/util/List;

    move-result-object v1

    iget-object v3, p0, Lch/blinkenlights/android/vanilla/MirrorLinkMediaBrowserService$2;->this$0:Lch/blinkenlights/android/vanilla/MirrorLinkMediaBrowserService;

    invoke-static {v3}, Lch/blinkenlights/android/vanilla/MirrorLinkMediaBrowserService;->access$700(Lch/blinkenlights/android/vanilla/MirrorLinkMediaBrowserService;)Lch/blinkenlights/android/vanilla/MediaAdapter;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lch/blinkenlights/android/vanilla/MirrorLinkMediaBrowserService;->access$400(Lch/blinkenlights/android/vanilla/MirrorLinkMediaBrowserService;Ljava/util/List;ILch/blinkenlights/android/vanilla/MediaAdapter;)V

    goto :goto_0

    .line 361
    :cond_3
    iget-object v0, p0, Lch/blinkenlights/android/vanilla/MirrorLinkMediaBrowserService$2;->this$0:Lch/blinkenlights/android/vanilla/MirrorLinkMediaBrowserService;

    invoke-static {v0}, Lch/blinkenlights/android/vanilla/MirrorLinkMediaBrowserService;->access$500(Lch/blinkenlights/android/vanilla/MirrorLinkMediaBrowserService;)Lch/blinkenlights/android/vanilla/MediaAdapter;

    move-result-object v0

    iget-object v2, p0, Lch/blinkenlights/android/vanilla/MirrorLinkMediaBrowserService$2;->val$limiter:Lch/blinkenlights/android/vanilla/Limiter;

    invoke-virtual {v0, v2}, Lch/blinkenlights/android/vanilla/MediaAdapter;->setLimiter(Lch/blinkenlights/android/vanilla/Limiter;)V

    .line 362
    iget-object v0, p0, Lch/blinkenlights/android/vanilla/MirrorLinkMediaBrowserService$2;->this$0:Lch/blinkenlights/android/vanilla/MirrorLinkMediaBrowserService;

    iget-object v2, p0, Lch/blinkenlights/android/vanilla/MirrorLinkMediaBrowserService$2;->this$0:Lch/blinkenlights/android/vanilla/MirrorLinkMediaBrowserService;

    invoke-static {v2}, Lch/blinkenlights/android/vanilla/MirrorLinkMediaBrowserService;->access$100(Lch/blinkenlights/android/vanilla/MirrorLinkMediaBrowserService;)Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lch/blinkenlights/android/vanilla/MirrorLinkMediaBrowserService$2;->this$0:Lch/blinkenlights/android/vanilla/MirrorLinkMediaBrowserService;

    invoke-static {v3}, Lch/blinkenlights/android/vanilla/MirrorLinkMediaBrowserService;->access$500(Lch/blinkenlights/android/vanilla/MirrorLinkMediaBrowserService;)Lch/blinkenlights/android/vanilla/MediaAdapter;

    move-result-object v3

    invoke-static {v0, v2, v1, v3}, Lch/blinkenlights/android/vanilla/MirrorLinkMediaBrowserService;->access$400(Lch/blinkenlights/android/vanilla/MirrorLinkMediaBrowserService;Ljava/util/List;ILch/blinkenlights/android/vanilla/MediaAdapter;)V

    goto :goto_0

    .line 353
    :cond_4
    iget-object v0, p0, Lch/blinkenlights/android/vanilla/MirrorLinkMediaBrowserService$2;->this$0:Lch/blinkenlights/android/vanilla/MirrorLinkMediaBrowserService;

    invoke-static {v0}, Lch/blinkenlights/android/vanilla/MirrorLinkMediaBrowserService;->access$500(Lch/blinkenlights/android/vanilla/MirrorLinkMediaBrowserService;)Lch/blinkenlights/android/vanilla/MediaAdapter;

    move-result-object v0

    iget-object v2, p0, Lch/blinkenlights/android/vanilla/MirrorLinkMediaBrowserService$2;->val$limiter:Lch/blinkenlights/android/vanilla/Limiter;

    invoke-virtual {v0, v2}, Lch/blinkenlights/android/vanilla/MediaAdapter;->setLimiter(Lch/blinkenlights/android/vanilla/Limiter;)V

    .line 354
    iget-object v0, p0, Lch/blinkenlights/android/vanilla/MirrorLinkMediaBrowserService$2;->this$0:Lch/blinkenlights/android/vanilla/MirrorLinkMediaBrowserService;

    iget-object v2, p0, Lch/blinkenlights/android/vanilla/MirrorLinkMediaBrowserService$2;->this$0:Lch/blinkenlights/android/vanilla/MirrorLinkMediaBrowserService;

    invoke-static {v2}, Lch/blinkenlights/android/vanilla/MirrorLinkMediaBrowserService;->access$100(Lch/blinkenlights/android/vanilla/MirrorLinkMediaBrowserService;)Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lch/blinkenlights/android/vanilla/MirrorLinkMediaBrowserService$2;->this$0:Lch/blinkenlights/android/vanilla/MirrorLinkMediaBrowserService;

    invoke-static {v3}, Lch/blinkenlights/android/vanilla/MirrorLinkMediaBrowserService;->access$500(Lch/blinkenlights/android/vanilla/MirrorLinkMediaBrowserService;)Lch/blinkenlights/android/vanilla/MediaAdapter;

    move-result-object v3

    invoke-static {v0, v2, v1, v3}, Lch/blinkenlights/android/vanilla/MirrorLinkMediaBrowserService;->access$400(Lch/blinkenlights/android/vanilla/MirrorLinkMediaBrowserService;Ljava/util/List;ILch/blinkenlights/android/vanilla/MediaAdapter;)V

    goto :goto_0

    .line 357
    :cond_5
    iget-object v0, p0, Lch/blinkenlights/android/vanilla/MirrorLinkMediaBrowserService$2;->this$0:Lch/blinkenlights/android/vanilla/MirrorLinkMediaBrowserService;

    invoke-static {v0}, Lch/blinkenlights/android/vanilla/MirrorLinkMediaBrowserService;->access$600(Lch/blinkenlights/android/vanilla/MirrorLinkMediaBrowserService;)Lch/blinkenlights/android/vanilla/MediaAdapter;

    move-result-object v0

    iget-object v1, p0, Lch/blinkenlights/android/vanilla/MirrorLinkMediaBrowserService$2;->val$limiter:Lch/blinkenlights/android/vanilla/Limiter;

    invoke-virtual {v0, v1}, Lch/blinkenlights/android/vanilla/MediaAdapter;->setLimiter(Lch/blinkenlights/android/vanilla/Limiter;)V

    .line 358
    iget-object v0, p0, Lch/blinkenlights/android/vanilla/MirrorLinkMediaBrowserService$2;->this$0:Lch/blinkenlights/android/vanilla/MirrorLinkMediaBrowserService;

    iget-object v1, p0, Lch/blinkenlights/android/vanilla/MirrorLinkMediaBrowserService$2;->this$0:Lch/blinkenlights/android/vanilla/MirrorLinkMediaBrowserService;

    invoke-static {v1}, Lch/blinkenlights/android/vanilla/MirrorLinkMediaBrowserService;->access$100(Lch/blinkenlights/android/vanilla/MirrorLinkMediaBrowserService;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lch/blinkenlights/android/vanilla/MirrorLinkMediaBrowserService$2;->this$0:Lch/blinkenlights/android/vanilla/MirrorLinkMediaBrowserService;

    invoke-static {v2}, Lch/blinkenlights/android/vanilla/MirrorLinkMediaBrowserService;->access$600(Lch/blinkenlights/android/vanilla/MirrorLinkMediaBrowserService;)Lch/blinkenlights/android/vanilla/MediaAdapter;

    move-result-object v2

    invoke-static {v0, v1, p1, v2}, Lch/blinkenlights/android/vanilla/MirrorLinkMediaBrowserService;->access$400(Lch/blinkenlights/android/vanilla/MirrorLinkMediaBrowserService;Ljava/util/List;ILch/blinkenlights/android/vanilla/MediaAdapter;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "VanillaMusic"

    const-string v0, "Failed retrieving Media"

    .line 376
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 378
    :cond_6
    :goto_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 338
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lch/blinkenlights/android/vanilla/MirrorLinkMediaBrowserService$2;->doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 2

    .line 384
    iget-object v0, p0, Lch/blinkenlights/android/vanilla/MirrorLinkMediaBrowserService$2;->val$result:Landroid/service/media/MediaBrowserService$Result;

    if-eqz v0, :cond_1

    .line 385
    iget-object v0, p0, Lch/blinkenlights/android/vanilla/MirrorLinkMediaBrowserService$2;->this$0:Lch/blinkenlights/android/vanilla/MirrorLinkMediaBrowserService;

    invoke-static {v0}, Lch/blinkenlights/android/vanilla/MirrorLinkMediaBrowserService;->access$100(Lch/blinkenlights/android/vanilla/MirrorLinkMediaBrowserService;)Ljava/util/List;

    move-result-object v0

    .line 387
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 388
    iget-object p1, p0, Lch/blinkenlights/android/vanilla/MirrorLinkMediaBrowserService$2;->val$result:Landroid/service/media/MediaBrowserService$Result;

    invoke-virtual {p1, v0}, Landroid/service/media/MediaBrowserService$Result;->sendResult(Ljava/lang/Object;)V

    goto :goto_0

    .line 390
    :cond_0
    iget-object p1, p0, Lch/blinkenlights/android/vanilla/MirrorLinkMediaBrowserService$2;->val$result:Landroid/service/media/MediaBrowserService$Result;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/service/media/MediaBrowserService$Result;->sendResult(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 393
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "result.send failed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "VanillaMusic"

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 338
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lch/blinkenlights/android/vanilla/MirrorLinkMediaBrowserService$2;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method
