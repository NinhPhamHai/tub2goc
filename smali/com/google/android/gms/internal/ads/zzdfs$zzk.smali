.class final Lcom/google/android/gms/internal/ads/zzdfs$zzk;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@18.3.0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/ads/zzdfs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "zzk"
.end annotation


# static fields
.field static final zzgvw:Lcom/google/android/gms/internal/ads/zzdfs$zzk;


# instance fields
.field volatile next:Lcom/google/android/gms/internal/ads/zzdfs$zzk;

.field volatile thread:Ljava/lang/Thread;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 7
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdfs$zzk;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzdfs$zzk;-><init>(Z)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzdfs$zzk;->zzgvw:Lcom/google/android/gms/internal/ads/zzdfs$zzk;

    return-void
.end method

.method constructor <init>()V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzdfs;->zzarl()Lcom/google/android/gms/internal/ads/zzdfs$zza;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/google/android/gms/internal/ads/zzdfs$zza;->zza(Lcom/google/android/gms/internal/ads/zzdfs$zzk;Ljava/lang/Thread;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method final zzb(Lcom/google/android/gms/internal/ads/zzdfs$zzk;)V
    .locals 1

    .line 5
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzdfs;->zzarl()Lcom/google/android/gms/internal/ads/zzdfs$zza;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzdfs$zza;->zza(Lcom/google/android/gms/internal/ads/zzdfs$zzk;Lcom/google/android/gms/internal/ads/zzdfs$zzk;)V

    return-void
.end method
