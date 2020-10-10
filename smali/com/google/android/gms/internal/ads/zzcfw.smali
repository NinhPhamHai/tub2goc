.class public final Lcom/google/android/gms/internal/ads/zzcfw;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@18.3.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdxg;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzdxg<",
        "Lcom/google/android/gms/internal/ads/zzcgi;",
        ">;"
    }
.end annotation


# direct methods
.method public static zzca(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/zzcgi;
    .locals 1

    .line 2
    new-instance v0, Lcom/google/android/gms/internal/ads/zzcgi;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzcgi;-><init>(Landroid/content/Context;)V

    const-string p0, "Cannot return null from a non-@Nullable @Provides method"

    .line 3
    invoke-static {v0, p0}, Lcom/google/android/gms/internal/ads/zzdxm;->zza(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzcgi;

    return-object v0
.end method
