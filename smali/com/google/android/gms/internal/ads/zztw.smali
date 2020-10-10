.class public final Lcom/google/android/gms/internal/ads/zztw;
.super Lcom/google/android/gms/internal/ads/zzdvq;
.source "com.google.android.gms:play-services-ads@@18.3.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzdvq<",
        "Lcom/google/android/gms/internal/ads/zztw;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile zzcbc:[Lcom/google/android/gms/internal/ads/zztw;


# direct methods
.method public static zzoj()[Lcom/google/android/gms/internal/ads/zztw;
    .locals 2

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zztw;->zzcbc:[Lcom/google/android/gms/internal/ads/zztw;

    if-nez v0, :cond_1

    .line 2
    sget-object v0, Lcom/google/android/gms/internal/ads/zzdvu;->zzhtt:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/google/android/gms/internal/ads/zztw;->zzcbc:[Lcom/google/android/gms/internal/ads/zztw;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 4
    new-array v1, v1, [Lcom/google/android/gms/internal/ads/zztw;

    sput-object v1, Lcom/google/android/gms/internal/ads/zztw;->zzcbc:[Lcom/google/android/gms/internal/ads/zztw;

    .line 5
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 6
    :cond_1
    :goto_0
    sget-object v0, Lcom/google/android/gms/internal/ads/zztw;->zzcbc:[Lcom/google/android/gms/internal/ads/zztw;

    return-object v0
.end method
