.class public interface abstract Lch/blinkenlights/android/vanilla/LibraryAdapter;
.super Ljava/lang/Object;
.source "LibraryAdapter.java"

# interfaces
.implements Landroid/widget/ListAdapter;


# virtual methods
.method public abstract buildLimiter(J)Lch/blinkenlights/android/vanilla/Limiter;
.end method

.method public abstract buildSongQuery([Ljava/lang/String;)Lch/blinkenlights/android/vanilla/QueryTask;
.end method

.method public abstract clear()V
.end method

.method public abstract commitQuery(Ljava/lang/Object;)V
.end method

.method public abstract createData(Landroid/view/View;)Landroid/content/Intent;
.end method

.method public abstract getLimiter()Lch/blinkenlights/android/vanilla/Limiter;
.end method

.method public abstract getMediaType()I
.end method

.method public abstract query()Ljava/lang/Object;
.end method

.method public abstract setFilter(Ljava/lang/String;)V
.end method

.method public abstract setLimiter(Lch/blinkenlights/android/vanilla/Limiter;)V
.end method
