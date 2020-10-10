.class abstract Lcom/google/android/gms/internal/ads/zzdgc;
.super Lcom/google/android/gms/internal/ads/zzdfs$zzj;
.source "com.google.android.gms:play-services-ads@@18.3.0"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/ads/zzdgc$zzc;,
        Lcom/google/android/gms/internal/ads/zzdgc$zza;,
        Lcom/google/android/gms/internal/ads/zzdgc$zzb;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<OutputT:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/gms/internal/ads/zzdfs$zzj<",
        "TOutputT;>;"
    }
.end annotation


# static fields
.field private static final zzgvj:Ljava/util/logging/Logger;

.field private static final zzgwi:Lcom/google/android/gms/internal/ads/zzdgc$zzb;


# instance fields
.field private volatile remaining:I

.field private volatile seenExceptions:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 19
    const-class v0, Lcom/google/android/gms/internal/ads/zzdgc;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzdgc;->zzgvj:Ljava/util/logging/Logger;

    const/4 v0, 0x0

    .line 21
    :try_start_0
    new-instance v1, Lcom/google/android/gms/internal/ads/zzdgc$zza;

    const-class v2, Lcom/google/android/gms/internal/ads/zzdgc;

    const-class v3, Ljava/util/Set;

    const-string v4, "seenExceptions"

    .line 22
    invoke-static {v2, v3, v4}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v2

    const-class v3, Lcom/google/android/gms/internal/ads/zzdgc;

    const-string v4, "remaining"

    .line 23
    invoke-static {v3, v4}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzdgc$zza;-><init>(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-object v7, v0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 26
    new-instance v2, Lcom/google/android/gms/internal/ads/zzdgc$zzc;

    invoke-direct {v2, v0}, Lcom/google/android/gms/internal/ads/zzdgc$zzc;-><init>(Lcom/google/android/gms/internal/ads/zzdgb;)V

    move-object v7, v1

    move-object v1, v2

    .line 27
    :goto_0
    sput-object v1, Lcom/google/android/gms/internal/ads/zzdgc;->zzgwi:Lcom/google/android/gms/internal/ads/zzdgc$zzb;

    if-eqz v7, :cond_0

    .line 29
    sget-object v2, Lcom/google/android/gms/internal/ads/zzdgc;->zzgvj:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v4, "com.google.common.util.concurrent.AggregateFutureState"

    const-string v5, "<clinit>"

    const-string v6, "SafeAtomicHelper is broken!"

    invoke-virtual/range {v2 .. v7}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method constructor <init>(I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzdfs$zzj;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdgc;->seenExceptions:Ljava/util/Set;

    .line 3
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzdgc;->remaining:I

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzdgc;)Ljava/util/Set;
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzdgc;->seenExceptions:Ljava/util/Set;

    return-object p0
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzdgc;Ljava/util/Set;)Ljava/util/Set;
    .locals 0

    .line 17
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdgc;->seenExceptions:Ljava/util/Set;

    return-object p1
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/ads/zzdgc;)I
    .locals 1

    .line 18
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzdgc;->remaining:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzdgc;->remaining:I

    return v0
.end method


# virtual methods
.method final zzarp()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdgc;->seenExceptions:Ljava/util/Set;

    if-nez v0, :cond_0

    .line 7
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    .line 9
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzdgc;->zzg(Ljava/util/Set;)V

    .line 10
    sget-object v1, Lcom/google/android/gms/internal/ads/zzdgc;->zzgwi:Lcom/google/android/gms/internal/ads/zzdgc$zzb;

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2, v0}, Lcom/google/android/gms/internal/ads/zzdgc$zzb;->zza(Lcom/google/android/gms/internal/ads/zzdgc;Ljava/util/Set;Ljava/util/Set;)V

    .line 11
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdgc;->seenExceptions:Ljava/util/Set;

    :cond_0
    return-object v0
.end method

.method final zzarq()I
    .locals 1

    .line 13
    sget-object v0, Lcom/google/android/gms/internal/ads/zzdgc;->zzgwi:Lcom/google/android/gms/internal/ads/zzdgc$zzb;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/zzdgc$zzb;->zzc(Lcom/google/android/gms/internal/ads/zzdgc;)I

    move-result v0

    return v0
.end method

.method final zzarr()V
    .locals 1

    const/4 v0, 0x0

    .line 14
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdgc;->seenExceptions:Ljava/util/Set;

    return-void
.end method

.method abstract zzg(Ljava/util/Set;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Throwable;",
            ">;)V"
        }
    .end annotation
.end method
