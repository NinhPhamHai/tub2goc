.class public final Lcom/google/android/gms/gass/zzf;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-gass@@18.3.0"


# instance fields
.field private final zzgse:Landroid/os/Looper;

.field private final zzup:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/gass/zzf;->zzup:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/gass/zzf;->zzgse:Landroid/os/Looper;

    return-void
.end method


# virtual methods
.method public final zzgq(Ljava/lang/String;)V
    .locals 3

    .line 5
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzddn;->zzaqn()Lcom/google/android/gms/internal/ads/zzddn$zzb;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/gass/zzf;->zzup:Landroid/content/Context;

    .line 6
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzddn$zzb;->zzgt(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzddn$zzb;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzddn$zza;->zzgsy:Lcom/google/android/gms/internal/ads/zzddn$zza;

    .line 7
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzddn$zzb;->zzb(Lcom/google/android/gms/internal/ads/zzddn$zza;)Lcom/google/android/gms/internal/ads/zzddn$zzb;

    .line 8
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzddh;->zzaqk()Lcom/google/android/gms/internal/ads/zzddh$zzb;

    move-result-object v1

    .line 9
    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/zzddh$zzb;->zzgs(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzddh$zzb;

    sget-object p1, Lcom/google/android/gms/internal/ads/zzddh$zza;->zzgsr:Lcom/google/android/gms/internal/ads/zzddh$zza;

    .line 10
    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/zzddh$zzb;->zzb(Lcom/google/android/gms/internal/ads/zzddh$zza;)Lcom/google/android/gms/internal/ads/zzddh$zzb;

    .line 11
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzddn$zzb;->zza(Lcom/google/android/gms/internal/ads/zzddh$zzb;)Lcom/google/android/gms/internal/ads/zzddn$zzb;

    .line 12
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdrt$zzb;->zzbaf()Lcom/google/android/gms/internal/ads/zzdte;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzddn;

    .line 13
    iget-object v0, p0, Lcom/google/android/gms/gass/zzf;->zzup:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gms/gass/zzf;->zzgse:Landroid/os/Looper;

    .line 14
    new-instance v2, Lcom/google/android/gms/gass/zzh;

    invoke-direct {v2, v0, v1, p1}, Lcom/google/android/gms/gass/zzh;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/internal/ads/zzddn;)V

    .line 15
    invoke-virtual {v2}, Lcom/google/android/gms/gass/zzh;->zzaqm()V

    return-void
.end method
