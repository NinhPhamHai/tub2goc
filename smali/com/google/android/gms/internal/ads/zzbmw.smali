.class public final Lcom/google/android/gms/internal/ads/zzbmw;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@18.3.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdxg;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzdxg<",
        "Lcom/google/android/gms/internal/ads/zzczl;",
        ">;"
    }
.end annotation


# instance fields
.field private final zzfgf:Lcom/google/android/gms/internal/ads/zzbmt;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzbmt;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbmw;->zzfgf:Lcom/google/android/gms/internal/ads/zzbmt;

    return-void
.end method

.method public static zzc(Lcom/google/android/gms/internal/ads/zzbmt;)Lcom/google/android/gms/internal/ads/zzbmw;
    .locals 1

    .line 4
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbmw;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzbmw;-><init>(Lcom/google/android/gms/internal/ads/zzbmt;)V

    return-object v0
.end method

.method public static zzd(Lcom/google/android/gms/internal/ads/zzbmt;)Lcom/google/android/gms/internal/ads/zzczl;
    .locals 1

    .line 5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbmt;->zzagx()Lcom/google/android/gms/internal/ads/zzczl;

    move-result-object p0

    const-string v0, "Cannot return null from a non-@Nullable @Provides method"

    invoke-static {p0, v0}, Lcom/google/android/gms/internal/ads/zzdxm;->zza(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p0, Lcom/google/android/gms/internal/ads/zzczl;

    return-object p0
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbmw;->zzfgf:Lcom/google/android/gms/internal/ads/zzbmt;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbmw;->zzd(Lcom/google/android/gms/internal/ads/zzbmt;)Lcom/google/android/gms/internal/ads/zzczl;

    move-result-object v0

    return-object v0
.end method
