.class final Lcom/floatingtunes/youtubeplayer/topmusic/notification/NotiManager$2;
.super Ljava/lang/Object;
.source "NotiManager.java"

# interfaces
.implements Lokhttp3/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/floatingtunes/youtubeplayer/topmusic/notification/NotiManager;->createNoti(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$musicBean:Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;

.field final synthetic val$musicConfig:Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicConfig;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicConfig;)V
    .locals 0

    .line 77
    iput-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/notification/NotiManager$2;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/notification/NotiManager$2;->val$musicBean:Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;

    iput-object p3, p0, Lcom/floatingtunes/youtubeplayer/topmusic/notification/NotiManager$2;->val$musicConfig:Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicConfig;

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

    .line 86
    :try_start_0
    invoke-virtual {p2}, Lokhttp3/Response;->isSuccessful()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 89
    invoke-virtual {p2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/ResponseBody;->byteStream()Ljava/io/InputStream;

    move-result-object p1

    .line 90
    invoke-static {p1}, Lcom/floatingtunes/youtubeplayer/topmusic/player/BitmapUtil;->decodeFile(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 91
    iget-object p2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/notification/NotiManager$2;->val$context:Landroid/content/Context;

    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/notification/NotiManager$2;->val$musicBean:Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;

    invoke-static {p2, p1, v0}, Lcom/floatingtunes/youtubeplayer/topmusic/notification/NotiManager;->access$000(Landroid/content/Context;Landroid/graphics/Bitmap;Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;)V

    .line 93
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/notification/NotiManager$2;->val$musicConfig:Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicConfig;

    invoke-virtual {p1}, Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicConfig;->getData_update_time()J

    move-result-wide p1

    invoke-static {p1, p2}, Lcom/floatingtunes/youtubeplayer/topmusic/sp/SuperSp;->setNewSongShowTime(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 96
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method
