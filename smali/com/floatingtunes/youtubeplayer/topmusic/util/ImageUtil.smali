.class public Lcom/floatingtunes/youtubeplayer/topmusic/util/ImageUtil;
.super Ljava/lang/Object;
.source "ImageUtil.java"


# direct methods
.method public static loadArtistImage(Landroid/content/Context;Ljava/lang/String;Landroid/widget/ImageView;)V
    .locals 0

    .line 45
    invoke-static {p0}, Lcom/floatingtunes/youtubeplayer/topmusic/app/GlideApp;->with(Landroid/content/Context;)Lcom/floatingtunes/youtubeplayer/topmusic/app/GlideRequests;

    move-result-object p0

    .line 46
    invoke-virtual {p0, p1}, Lcom/floatingtunes/youtubeplayer/topmusic/app/GlideRequests;->load(Ljava/lang/String;)Lcom/floatingtunes/youtubeplayer/topmusic/app/GlideRequest;

    move-result-object p0

    const p1, 0x7f080204

    .line 47
    invoke-virtual {p0, p1}, Lcom/floatingtunes/youtubeplayer/topmusic/app/GlideRequest;->placeholder(I)Lcom/floatingtunes/youtubeplayer/topmusic/app/GlideRequest;

    move-result-object p0

    .line 48
    invoke-virtual {p0, p2}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    return-void
.end method

.method public static loadImage(Landroid/content/Context;Lcom/google/firebase/storage/StorageReference;Landroid/widget/ImageView;)V
    .locals 0

    .line 28
    invoke-static {p0}, Lcom/floatingtunes/youtubeplayer/topmusic/app/GlideApp;->with(Landroid/content/Context;)Lcom/floatingtunes/youtubeplayer/topmusic/app/GlideRequests;

    move-result-object p0

    .line 29
    invoke-virtual {p0, p1}, Lcom/floatingtunes/youtubeplayer/topmusic/app/GlideRequests;->load(Ljava/lang/Object;)Lcom/floatingtunes/youtubeplayer/topmusic/app/GlideRequest;

    move-result-object p0

    const p1, 0x7f080289

    .line 30
    invoke-virtual {p0, p1}, Lcom/floatingtunes/youtubeplayer/topmusic/app/GlideRequest;->placeholder(I)Lcom/floatingtunes/youtubeplayer/topmusic/app/GlideRequest;

    move-result-object p0

    sget-object p1, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->ALL:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    .line 31
    invoke-virtual {p0, p1}, Lcom/floatingtunes/youtubeplayer/topmusic/app/GlideRequest;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/floatingtunes/youtubeplayer/topmusic/app/GlideRequest;

    move-result-object p0

    .line 32
    invoke-virtual {p0, p2}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    return-void
.end method

.method public static loadImage(Landroid/content/Context;Ljava/lang/String;Landroid/widget/ImageView;)V
    .locals 0

    .line 20
    invoke-static {p0}, Lcom/floatingtunes/youtubeplayer/topmusic/app/GlideApp;->with(Landroid/content/Context;)Lcom/floatingtunes/youtubeplayer/topmusic/app/GlideRequests;

    move-result-object p0

    .line 21
    invoke-virtual {p0, p1}, Lcom/floatingtunes/youtubeplayer/topmusic/app/GlideRequests;->load(Ljava/lang/String;)Lcom/floatingtunes/youtubeplayer/topmusic/app/GlideRequest;

    move-result-object p0

    const p1, 0x7f080289

    .line 22
    invoke-virtual {p0, p1}, Lcom/floatingtunes/youtubeplayer/topmusic/app/GlideRequest;->placeholder(I)Lcom/floatingtunes/youtubeplayer/topmusic/app/GlideRequest;

    move-result-object p0

    .line 23
    invoke-virtual {p0}, Lcom/floatingtunes/youtubeplayer/topmusic/app/GlideRequest;->centerCrop()Lcom/floatingtunes/youtubeplayer/topmusic/app/GlideRequest;

    move-result-object p0

    .line 24
    invoke-virtual {p0, p2}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    return-void
.end method

.method public static loadImageFromAsset(Landroid/content/Context;Ljava/lang/String;Landroid/widget/ImageView;)V
    .locals 2

    .line 53
    invoke-static {p0}, Lcom/floatingtunes/youtubeplayer/topmusic/app/GlideApp;->with(Landroid/content/Context;)Lcom/floatingtunes/youtubeplayer/topmusic/app/GlideRequests;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "file:///android_asset/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 54
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/floatingtunes/youtubeplayer/topmusic/app/GlideRequests;->load(Landroid/net/Uri;)Lcom/floatingtunes/youtubeplayer/topmusic/app/GlideRequest;

    move-result-object p0

    .line 55
    invoke-virtual {p0, p2}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    return-void
.end method
