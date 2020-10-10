.class Lcom/floatingtunes/youtubeplayer/topmusic/player/PlayActivity$6;
.super Ljava/lang/Object;
.source "PlayActivity.java"

# interfaces
.implements Lokhttp3/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/floatingtunes/youtubeplayer/topmusic/player/PlayActivity;->loadHttpBitmap(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/floatingtunes/youtubeplayer/topmusic/player/PlayActivity;


# direct methods
.method constructor <init>(Lcom/floatingtunes/youtubeplayer/topmusic/player/PlayActivity;)V
    .locals 0

    .line 569
    iput-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/PlayActivity$6;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/player/PlayActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lokhttp3/Call;Ljava/io/IOException;)V
    .locals 0

    return-void
.end method

.method public onResponse(Lokhttp3/Call;Lokhttp3/Response;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 578
    :try_start_0
    invoke-virtual {p2}, Lokhttp3/Response;->isSuccessful()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 579
    invoke-virtual {p2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/ResponseBody;->byteStream()Ljava/io/InputStream;

    move-result-object p1

    .line 580
    invoke-static {p1}, Lcom/floatingtunes/youtubeplayer/topmusic/util/BitmapUtils;->decodeInputStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 581
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p2

    .line 582
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    .line 584
    div-int/lit8 v1, p2, 0x2

    .line 585
    div-int/lit8 v2, v0, 0x2

    sub-int/2addr p2, v1

    .line 587
    div-int/lit8 p2, p2, 0x2

    sub-int/2addr v0, v2

    .line 588
    div-int/lit8 v0, v0, 0x2

    .line 590
    invoke-static {p1, p2, v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 591
    iget-object p2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/PlayActivity$6;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/player/PlayActivity;

    invoke-static {p2, p1}, Lcom/floatingtunes/youtubeplayer/topmusic/util/BitmapUtils;->blur(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 592
    new-instance p2, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/PlayActivity$6;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/player/PlayActivity;

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    const p1, -0x777778

    .line 593
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p2, p1, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 594
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/PlayActivity$6;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/player/PlayActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result p1

    if-nez p1, :cond_0

    .line 595
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/PlayActivity$6;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/player/PlayActivity;

    new-instance v0, Lcom/floatingtunes/youtubeplayer/topmusic/player/PlayActivity$6$1;

    invoke-direct {v0, p0, p2}, Lcom/floatingtunes/youtubeplayer/topmusic/player/PlayActivity$6$1;-><init>(Lcom/floatingtunes/youtubeplayer/topmusic/player/PlayActivity$6;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method
