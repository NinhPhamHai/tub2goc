.class Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService$9;
.super Ljava/lang/Object;
.source "YTService.java"

# interfaces
.implements Lokhttp3/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;->loadImage(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;


# direct methods
.method constructor <init>(Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;)V
    .locals 0

    .line 855
    iput-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService$9;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lokhttp3/Call;Ljava/io/IOException;)V
    .locals 0

    return-void
.end method

.method public onResponse(Lokhttp3/Call;Lokhttp3/Response;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 864
    :try_start_0
    invoke-virtual {p2}, Lokhttp3/Response;->isSuccessful()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 865
    invoke-virtual {p2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/ResponseBody;->byteStream()Ljava/io/InputStream;

    move-result-object p1

    .line 866
    invoke-static {p1}, Lcom/floatingtunes/youtubeplayer/topmusic/player/BitmapUtil;->decodeFile(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 867
    iget-object p2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService$9;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;

    iget-object p2, p2, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;->mNBigView:Landroid/widget/RemoteViews;

    const v0, 0x7f09028f

    invoke-virtual {p2, v0, p1}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 868
    iget-object p2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService$9;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;

    iget-object p2, p2, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;->mNSmallView:Landroid/widget/RemoteViews;

    invoke-virtual {p2, v0, p1}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 869
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService$9;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;

    iget-object p1, p1, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;->mNotificationManager:Landroid/app/NotificationManager;

    const/16 p2, 0x65

    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService$9;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;

    iget-object v0, v0, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;->mNotification:Landroid/app/Notification;

    invoke-virtual {p1, p2, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 872
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method
