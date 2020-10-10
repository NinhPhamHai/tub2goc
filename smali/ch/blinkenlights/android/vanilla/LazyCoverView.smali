.class public Lch/blinkenlights/android/vanilla/LazyCoverView;
.super Landroid/widget/ImageView;
.source "LazyCoverView.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lch/blinkenlights/android/vanilla/LazyCoverView$BitmapLruCache;,
        Lch/blinkenlights/android/vanilla/LazyCoverView$CoverMsg;
    }
.end annotation


# static fields
.field private static sBitmapLruCache:Lch/blinkenlights/android/vanilla/LazyCoverView$BitmapLruCache;

.field private static sFallbackBitmap:Landroid/graphics/Bitmap;

.field private static sHandler:Landroid/os/Handler;

.field private static sUiHandler:Landroid/os/Handler;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mExpectedKey:Lch/blinkenlights/android/vanilla/CoverCache$CoverKey;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 98
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 99
    iput-object p1, p0, Lch/blinkenlights/android/vanilla/LazyCoverView;->mContext:Landroid/content/Context;

    .line 100
    sget-object p2, Lch/blinkenlights/android/vanilla/LazyCoverView;->sBitmapLruCache:Lch/blinkenlights/android/vanilla/LazyCoverView$BitmapLruCache;

    if-nez p2, :cond_1

    const-string p2, "activity"

    .line 101
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/ActivityManager;

    .line 102
    invoke-virtual {p1}, Landroid/app/ActivityManager;->getMemoryClass()I

    move-result p1

    div-int/lit8 p1, p1, 0xa

    const/4 p2, 0x2

    if-ge p1, p2, :cond_0

    const/4 p1, 0x2

    .line 104
    :cond_0
    new-instance p2, Lch/blinkenlights/android/vanilla/LazyCoverView$BitmapLruCache;

    mul-int/lit16 p1, p1, 0x400

    mul-int/lit16 p1, p1, 0x400

    invoke-direct {p2, p1}, Lch/blinkenlights/android/vanilla/LazyCoverView$BitmapLruCache;-><init>(I)V

    sput-object p2, Lch/blinkenlights/android/vanilla/LazyCoverView;->sBitmapLruCache:Lch/blinkenlights/android/vanilla/LazyCoverView$BitmapLruCache;

    .line 106
    :cond_1
    sget-object p1, Lch/blinkenlights/android/vanilla/LazyCoverView;->sFallbackBitmap:Landroid/graphics/Bitmap;

    if-nez p1, :cond_2

    .line 107
    invoke-virtual {p0}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lch/blinkenlights/android/vanilla/R$drawable;->fallback_cover:I

    invoke-static {p1, p2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    sput-object p1, Lch/blinkenlights/android/vanilla/LazyCoverView;->sFallbackBitmap:Landroid/graphics/Bitmap;

    .line 109
    :cond_2
    sget-object p1, Lch/blinkenlights/android/vanilla/LazyCoverView;->sUiHandler:Landroid/os/Handler;

    if-nez p1, :cond_3

    .line 110
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    sput-object p1, Lch/blinkenlights/android/vanilla/LazyCoverView;->sUiHandler:Landroid/os/Handler;

    .line 112
    :cond_3
    sget-object p1, Lch/blinkenlights/android/vanilla/LazyCoverView;->sHandler:Landroid/os/Handler;

    if-nez p1, :cond_4

    .line 113
    new-instance p1, Landroid/os/HandlerThread;

    const-string p2, "LazyCoverRpc"

    invoke-direct {p1, p2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 114
    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 115
    new-instance p2, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {p2, p1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    sput-object p2, Lch/blinkenlights/android/vanilla/LazyCoverView;->sHandler:Landroid/os/Handler;

    :cond_4
    return-void
.end method

.method static synthetic access$000(Lch/blinkenlights/android/vanilla/LazyCoverView;)Lch/blinkenlights/android/vanilla/CoverCache$CoverKey;
    .locals 0

    .line 43
    iget-object p0, p0, Lch/blinkenlights/android/vanilla/LazyCoverView;->mExpectedKey:Lch/blinkenlights/android/vanilla/CoverCache$CoverKey;

    return-object p0
.end method


# virtual methods
.method public drawFromCache(Lch/blinkenlights/android/vanilla/CoverCache$CoverKey;Z)Z
    .locals 5

    .line 191
    sget-object v0, Lch/blinkenlights/android/vanilla/LazyCoverView;->sBitmapLruCache:Lch/blinkenlights/android/vanilla/LazyCoverView$BitmapLruCache;

    invoke-virtual {v0, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Bitmap;

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    :goto_0
    if-eqz p2, :cond_1

    .line 197
    new-instance p2, Landroid/graphics/drawable/TransitionDrawable;

    const/4 v3, 0x2

    new-array v3, v3, [Landroid/graphics/drawable/Drawable;

    .line 198
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    aput-object v4, v3, v0

    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 199
    invoke-virtual {p0}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-direct {v0, v4, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    aput-object v0, v3, v1

    invoke-direct {p2, v3}, Landroid/graphics/drawable/TransitionDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 201
    invoke-virtual {p0, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const/16 p1, 0x78

    .line 202
    invoke-virtual {p2, p1}, Landroid/graphics/drawable/TransitionDrawable;->startTransition(I)V

    goto :goto_1

    .line 204
    :cond_1
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :goto_1
    return v2
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 8

    .line 127
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lch/blinkenlights/android/vanilla/LazyCoverView$CoverMsg;

    .line 129
    invoke-virtual {v0}, Lch/blinkenlights/android/vanilla/LazyCoverView$CoverMsg;->isRecent()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    .line 133
    :cond_0
    iget p1, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x3d

    const/16 v3, 0x3e

    const/4 v4, 0x1

    if-eq p1, v1, :cond_2

    if-eq p1, v3, :cond_1

    return v2

    .line 159
    :cond_1
    iget-object p1, v0, Lch/blinkenlights/android/vanilla/LazyCoverView$CoverMsg;->view:Lch/blinkenlights/android/vanilla/LazyCoverView;

    iget-object v0, v0, Lch/blinkenlights/android/vanilla/LazyCoverView$CoverMsg;->key:Lch/blinkenlights/android/vanilla/CoverCache$CoverKey;

    invoke-virtual {p1, v0, v4}, Lch/blinkenlights/android/vanilla/LazyCoverView;->drawFromCache(Lch/blinkenlights/android/vanilla/CoverCache$CoverKey;Z)Z

    goto :goto_1

    .line 136
    :cond_2
    sget-object p1, Lch/blinkenlights/android/vanilla/LazyCoverView;->sBitmapLruCache:Lch/blinkenlights/android/vanilla/LazyCoverView$BitmapLruCache;

    iget-object v1, v0, Lch/blinkenlights/android/vanilla/LazyCoverView$CoverMsg;->key:Lch/blinkenlights/android/vanilla/CoverCache$CoverKey;

    invoke-virtual {p1, v1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Bitmap;

    if-nez p1, :cond_5

    .line 138
    iget-object v1, v0, Lch/blinkenlights/android/vanilla/LazyCoverView$CoverMsg;->key:Lch/blinkenlights/android/vanilla/CoverCache$CoverKey;

    iget v2, v1, Lch/blinkenlights/android/vanilla/CoverCache$CoverKey;->mediaType:I

    if-ne v2, v4, :cond_3

    .line 140
    iget-object v5, p0, Lch/blinkenlights/android/vanilla/LazyCoverView;->mContext:Landroid/content/Context;

    iget-wide v6, v1, Lch/blinkenlights/android/vanilla/CoverCache$CoverKey;->mediaId:J

    invoke-static {v5, v2, v6, v7}, Lch/blinkenlights/android/vanilla/MediaUtils;->getSongByTypeId(Landroid/content/Context;IJ)Lch/blinkenlights/android/vanilla/Song;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 142
    iget-object p1, p0, Lch/blinkenlights/android/vanilla/LazyCoverView;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Lch/blinkenlights/android/vanilla/Song;->getSmallCover(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object p1

    goto :goto_0

    .line 145
    :cond_3
    iget-object p1, p0, Lch/blinkenlights/android/vanilla/LazyCoverView;->mContext:Landroid/content/Context;

    sget v1, Lch/blinkenlights/android/vanilla/CoverCache;->SIZE_SMALL:I

    iget-object v2, v0, Lch/blinkenlights/android/vanilla/LazyCoverView$CoverMsg;->title:Ljava/lang/String;

    invoke-static {p1, v1, v1, v2}, Lch/blinkenlights/android/vanilla/CoverBitmap;->generatePlaceholderCover(Landroid/content/Context;IILjava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    :cond_4
    :goto_0
    if-nez p1, :cond_5

    .line 149
    sget-object p1, Lch/blinkenlights/android/vanilla/LazyCoverView;->sFallbackBitmap:Landroid/graphics/Bitmap;

    .line 153
    :cond_5
    sget-object v1, Lch/blinkenlights/android/vanilla/LazyCoverView;->sBitmapLruCache:Lch/blinkenlights/android/vanilla/LazyCoverView$BitmapLruCache;

    iget-object v2, v0, Lch/blinkenlights/android/vanilla/LazyCoverView$CoverMsg;->key:Lch/blinkenlights/android/vanilla/CoverCache$CoverKey;

    invoke-virtual {v1, v2, p1}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    sget-object p1, Lch/blinkenlights/android/vanilla/LazyCoverView;->sUiHandler:Landroid/os/Handler;

    invoke-virtual {p1, v3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :goto_1
    return v4
.end method

.method public setCover(IJLjava/lang/String;)V
    .locals 2

    .line 176
    new-instance v0, Lch/blinkenlights/android/vanilla/CoverCache$CoverKey;

    sget v1, Lch/blinkenlights/android/vanilla/CoverCache;->SIZE_SMALL:I

    invoke-direct {v0, p1, p2, p3, v1}, Lch/blinkenlights/android/vanilla/CoverCache$CoverKey;-><init>(IJI)V

    iput-object v0, p0, Lch/blinkenlights/android/vanilla/LazyCoverView;->mExpectedKey:Lch/blinkenlights/android/vanilla/CoverCache$CoverKey;

    .line 177
    iget-object p1, p0, Lch/blinkenlights/android/vanilla/LazyCoverView;->mExpectedKey:Lch/blinkenlights/android/vanilla/CoverCache$CoverKey;

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lch/blinkenlights/android/vanilla/LazyCoverView;->drawFromCache(Lch/blinkenlights/android/vanilla/CoverCache$CoverKey;Z)Z

    move-result p1

    if-nez p1, :cond_0

    .line 178
    new-instance p1, Lch/blinkenlights/android/vanilla/LazyCoverView$CoverMsg;

    iget-object p2, p0, Lch/blinkenlights/android/vanilla/LazyCoverView;->mExpectedKey:Lch/blinkenlights/android/vanilla/CoverCache$CoverKey;

    invoke-direct {p1, p2, p0, p4}, Lch/blinkenlights/android/vanilla/LazyCoverView$CoverMsg;-><init>(Lch/blinkenlights/android/vanilla/CoverCache$CoverKey;Lch/blinkenlights/android/vanilla/LazyCoverView;Ljava/lang/String;)V

    .line 179
    sget-object p2, Lch/blinkenlights/android/vanilla/LazyCoverView;->sHandler:Landroid/os/Handler;

    const/16 p3, 0x3d

    invoke-virtual {p2, p3, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method
