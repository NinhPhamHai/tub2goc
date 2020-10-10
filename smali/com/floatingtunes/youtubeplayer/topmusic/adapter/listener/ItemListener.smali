.class public interface abstract Lcom/floatingtunes/youtubeplayer/topmusic/adapter/listener/ItemListener;
.super Ljava/lang/Object;
.source "ItemListener.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract onFavoriteClick(ZLjava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZTT;)V"
        }
    .end annotation
.end method

.method public abstract onItemClick(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method public abstract onLoadingClick(Lcom/floatingtunes/youtubeplayer/topmusic/adapter/LoadState;)V
.end method

.method public abstract onMoreItemClick(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method
