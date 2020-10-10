.class final Lcom/google/android/gms/internal/measurement/zzhj;
.super Lcom/google/android/gms/internal/measurement/zzhg;
.source "com.google.android.gms:play-services-measurement-base@@17.2.2"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/measurement/zzhg<",
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
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/zzhg;-><init>(ILcom/google/android/gms/internal/measurement/zzhj;)V

    return-void
.end method


# virtual methods
.method public final zza()V
    .locals 3

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzhg;->zzb()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzhg;->zzc()I

    move-result v1

    const/4 v2, 0x0

    if-gtz v1, :cond_1

    .line 9
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzhg;->zzd()Ljava/lang/Iterable;

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

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzew;

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzew;->zzd()Z

    throw v2

    .line 4
    :cond_1
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/measurement/zzhg;->zzb(I)Ljava/util/Map$Entry;

    move-result-object v0

    .line 5
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzew;

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzew;->zzd()Z

    throw v2

    .line 14
    :cond_2
    :goto_0
    invoke-super {p0}, Lcom/google/android/gms/internal/measurement/zzhg;->zza()V

    return-void
.end method
