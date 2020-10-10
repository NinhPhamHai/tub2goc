.class public final Lcom/floatingtunes/youtubeplayer/topmusic/app/GlideApp;
.super Ljava/lang/Object;
.source "GlideApp.java"


# direct methods
.method public static with(Landroid/content/Context;)Lcom/floatingtunes/youtubeplayer/topmusic/app/GlideRequests;
    .locals 0

    .line 88
    invoke-static {p0}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object p0

    check-cast p0, Lcom/floatingtunes/youtubeplayer/topmusic/app/GlideRequests;

    return-object p0
.end method
