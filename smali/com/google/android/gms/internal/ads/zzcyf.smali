.class final synthetic Lcom/google/android/gms/internal/ads/zzcyf;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@18.3.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzcxo;


# instance fields
.field private final zzcyr:Ljava/lang/String;

.field private final zzdbl:Ljava/lang/String;

.field private final zzfhs:Lcom/google/android/gms/internal/ads/zzare;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzare;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcyf;->zzfhs:Lcom/google/android/gms/internal/ads/zzare;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcyf;->zzcyr:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzcyf;->zzdbl:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final zzt(Ljava/lang/Object;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcyf;->zzfhs:Lcom/google/android/gms/internal/ads/zzare;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcyf;->zzcyr:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcyf;->zzdbl:Ljava/lang/String;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzarj;

    .line 2
    invoke-interface {p1, v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzarj;->zza(Lcom/google/android/gms/internal/ads/zzare;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
