.class final synthetic Lcom/google/android/gms/internal/ads/zzcam;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@18.3.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzded;


# instance fields
.field private final zzfqj:Lcom/google/android/gms/internal/ads/zzcaj;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzcaj;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcam;->zzfqj:Lcom/google/android/gms/internal/ads/zzcaj;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcam;->zzfqj:Lcom/google/android/gms/internal/ads/zzcaj;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzbdi;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzcaj;->zzm(Lcom/google/android/gms/internal/ads/zzbdi;)Lcom/google/android/gms/internal/ads/zzbdi;

    return-object p1
.end method
