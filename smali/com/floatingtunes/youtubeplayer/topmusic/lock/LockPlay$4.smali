.class Lcom/floatingtunes/youtubeplayer/topmusic/lock/LockPlay$4;
.super Ljava/lang/Object;
.source "LockPlay.java"

# interfaces
.implements Lcom/squareup/okhttp/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/floatingtunes/youtubeplayer/topmusic/lock/LockPlay;->loadHttpBitmap(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/floatingtunes/youtubeplayer/topmusic/lock/LockPlay;


# direct methods
.method constructor <init>(Lcom/floatingtunes/youtubeplayer/topmusic/lock/LockPlay;)V
    .locals 0

    .line 408
    iput-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/lock/LockPlay$4;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/lock/LockPlay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lcom/squareup/okhttp/Request;Ljava/io/IOException;)V
    .locals 0

    return-void
.end method

.method public onResponse(Lcom/squareup/okhttp/Response;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 417
    :try_start_0
    invoke-virtual {p1}, Lcom/squareup/okhttp/Response;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 418
    invoke-virtual {p1}, Lcom/squareup/okhttp/Response;->body()Lcom/squareup/okhttp/ResponseBody;

    move-result-object p1

    invoke-virtual {p1}, Lcom/squareup/okhttp/ResponseBody;->byteStream()Ljava/io/InputStream;

    move-result-object p1

    .line 419
    invoke-static {p1}, Lcom/floatingtunes/youtubeplayer/topmusic/util/BitmapUtils;->decodeInputStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 420
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 421
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 423
    div-int/lit8 v2, v0, 0x2

    .line 424
    div-int/lit8 v3, v1, 0x2

    sub-int/2addr v0, v2

    .line 426
    div-int/lit8 v0, v0, 0x2

    sub-int/2addr v1, v3

    .line 427
    div-int/lit8 v1, v1, 0x2

    .line 429
    invoke-static {p1, v0, v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 430
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/lock/LockPlay$4;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/lock/LockPlay;

    invoke-static {v0, p1}, Lcom/floatingtunes/youtubeplayer/topmusic/util/BitmapUtils;->blur(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 431
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/lock/LockPlay$4;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/lock/LockPlay;

    invoke-virtual {v1}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    const p1, -0x777778

    .line 432
    sget-object v1, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, p1, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 433
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/lock/LockPlay$4;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/lock/LockPlay;

    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result p1

    if-nez p1, :cond_0

    .line 434
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/lock/LockPlay$4;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/lock/LockPlay;

    new-instance v1, Lcom/floatingtunes/youtubeplayer/topmusic/lock/LockPlay$4$1;

    invoke-direct {v1, p0, v0}, Lcom/floatingtunes/youtubeplayer/topmusic/lock/LockPlay$4$1;-><init>(Lcom/floatingtunes/youtubeplayer/topmusic/lock/LockPlay$4;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p1, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method
