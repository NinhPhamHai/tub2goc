.class final Lcom/google/android/gms/internal/ads/zzdue;
.super Lcom/google/android/gms/internal/ads/zzdub;
.source "com.google.android.gms:play-services-ads-lite@@18.3.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzdub<",
        "TFieldDescriptorType;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(I)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzdub;-><init>(ILcom/google/android/gms/internal/ads/zzdue;)V

    return-void
.end method


# virtual methods
.method public final zzaxq()V
    .locals 3

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzdub;->isImmutable()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzdub;->zzbbs()I

    move-result v1

    const/4 v2, 0x0

    if-gtz v1, :cond_1

    .line 9
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzdub;->zzbbt()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 10
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzdro;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzdro;->zzazq()Z

    throw v2

    .line 4
    :cond_1
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzdub;->zzgw(I)Ljava/util/Map$Entry;

    move-result-object v0

    .line 5
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzdro;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzdro;->zzazq()Z

    throw v2

    .line 14
    :cond_2
    :goto_0
    invoke-super {p0}, Lcom/google/android/gms/internal/ads/zzdub;->zzaxq()V

    return-void
.end method
