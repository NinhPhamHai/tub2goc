.class public final Lcom/google/android/gms/internal/ads/zzsy$zzh;
.super Lcom/google/android/gms/internal/ads/zzdrt;
.source "com.google.android.gms:play-services-ads@@18.3.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdtg;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/ads/zzsy$zzh$zzb;,
        Lcom/google/android/gms/internal/ads/zzsy$zzh$zza;,
        Lcom/google/android/gms/internal/ads/zzsy$zzh$zzc;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzdrt<",
        "Lcom/google/android/gms/internal/ads/zzsy$zzh;",
        "Lcom/google/android/gms/internal/ads/zzsy$zzh$zzb;",
        ">;",
        "Lcom/google/android/gms/internal/ads/zzdtg;"
    }
.end annotation


# static fields
.field private static final zzbwi:Lcom/google/android/gms/internal/ads/zzsy$zzh;

.field private static volatile zzdz:Lcom/google/android/gms/internal/ads/zzdtn;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzdtn<",
            "Lcom/google/android/gms/internal/ads/zzsy$zzh;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private zzbut:I

.field private zzbwh:I

.field private zzdl:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 34
    new-instance v0, Lcom/google/android/gms/internal/ads/zzsy$zzh;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzsy$zzh;-><init>()V

    .line 35
    sput-object v0, Lcom/google/android/gms/internal/ads/zzsy$zzh;->zzbwi:Lcom/google/android/gms/internal/ads/zzsy$zzh;

    .line 36
    const-class v1, Lcom/google/android/gms/internal/ads/zzsy$zzh;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzdrt;->zza(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzdrt;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzdrt;-><init>()V

    return-void
.end method

.method private final zza(Lcom/google/android/gms/internal/ads/zzsy$zzh$zza;)V
    .locals 0

    .line 6
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzsy$zzh$zza;->zzae()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzsy$zzh;->zzbwh:I

    .line 7
    iget p1, p0, Lcom/google/android/gms/internal/ads/zzsy$zzh;->zzdl:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzsy$zzh;->zzdl:I

    return-void
.end method

.method private final zza(Lcom/google/android/gms/internal/ads/zzsy$zzh$zzc;)V
    .locals 0

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzsy$zzh$zzc;->zzae()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzsy$zzh;->zzbut:I

    .line 4
    iget p1, p0, Lcom/google/android/gms/internal/ads/zzsy$zzh;->zzdl:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzsy$zzh;->zzdl:I

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzsy$zzh;Lcom/google/android/gms/internal/ads/zzsy$zzh$zza;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzsy$zzh;->zza(Lcom/google/android/gms/internal/ads/zzsy$zzh$zza;)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzsy$zzh;Lcom/google/android/gms/internal/ads/zzsy$zzh$zzc;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzsy$zzh;->zza(Lcom/google/android/gms/internal/ads/zzsy$zzh$zzc;)V

    return-void
.end method

.method public static zznl()Lcom/google/android/gms/internal/ads/zzsy$zzh$zzb;
    .locals 1

    .line 9
    sget-object v0, Lcom/google/android/gms/internal/ads/zzsy$zzh;->zzbwi:Lcom/google/android/gms/internal/ads/zzsy$zzh;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdrt;->zzazt()Lcom/google/android/gms/internal/ads/zzdrt$zzb;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzsy$zzh$zzb;

    return-object v0
.end method

.method static synthetic zznm()Lcom/google/android/gms/internal/ads/zzsy$zzh;
    .locals 1

    .line 31
    sget-object v0, Lcom/google/android/gms/internal/ads/zzsy$zzh;->zzbwi:Lcom/google/android/gms/internal/ads/zzsy$zzh;

    return-object v0
.end method


# virtual methods
.method protected final zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 10
    sget-object p2, Lcom/google/android/gms/internal/ads/zzsx;->zzdk:[I

    const/4 p3, 0x1

    sub-int/2addr p1, p3

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_0

    .line 30
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p2

    .line 28
    :pswitch_1
    invoke-static {p3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 19
    :pswitch_2
    sget-object p1, Lcom/google/android/gms/internal/ads/zzsy$zzh;->zzdz:Lcom/google/android/gms/internal/ads/zzdtn;

    if-nez p1, :cond_1

    .line 21
    const-class p2, Lcom/google/android/gms/internal/ads/zzsy$zzh;

    monitor-enter p2

    .line 22
    :try_start_0
    sget-object p1, Lcom/google/android/gms/internal/ads/zzsy$zzh;->zzdz:Lcom/google/android/gms/internal/ads/zzdtn;

    if-nez p1, :cond_0

    .line 24
    new-instance p1, Lcom/google/android/gms/internal/ads/zzdrt$zza;

    sget-object p3, Lcom/google/android/gms/internal/ads/zzsy$zzh;->zzbwi:Lcom/google/android/gms/internal/ads/zzsy$zzh;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/ads/zzdrt$zza;-><init>(Lcom/google/android/gms/internal/ads/zzdrt;)V

    .line 25
    sput-object p1, Lcom/google/android/gms/internal/ads/zzsy$zzh;->zzdz:Lcom/google/android/gms/internal/ads/zzdtn;

    .line 26
    :cond_0
    monitor-exit p2

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    :goto_0
    return-object p1

    .line 18
    :pswitch_3
    sget-object p1, Lcom/google/android/gms/internal/ads/zzsy$zzh;->zzbwi:Lcom/google/android/gms/internal/ads/zzsy$zzh;

    return-object p1

    :pswitch_4
    const/4 p1, 0x5

    .line 13
    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string v0, "zzdl"

    aput-object v0, p1, p2

    const-string p2, "zzbut"

    aput-object p2, p1, p3

    const/4 p2, 0x2

    .line 14
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzsy$zzh$zzc;->zzaf()Lcom/google/android/gms/internal/ads/zzdsa;

    move-result-object p3

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-string p3, "zzbwh"

    aput-object p3, p1, p2

    const/4 p2, 0x4

    .line 15
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzsy$zzh$zza;->zzaf()Lcom/google/android/gms/internal/ads/zzdsa;

    move-result-object p3

    aput-object p3, p1, p2

    .line 17
    sget-object p2, Lcom/google/android/gms/internal/ads/zzsy$zzh;->zzbwi:Lcom/google/android/gms/internal/ads/zzsy$zzh;

    const-string p3, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001\u000c\u0000\u0002\u000c\u0001"

    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/ads/zzdrt;->zza(Lcom/google/android/gms/internal/ads/zzdte;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 12
    :pswitch_5
    new-instance p1, Lcom/google/android/gms/internal/ads/zzsy$zzh$zzb;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzsy$zzh$zzb;-><init>(Lcom/google/android/gms/internal/ads/zzsx;)V

    return-object p1

    .line 11
    :pswitch_6
    new-instance p1, Lcom/google/android/gms/internal/ads/zzsy$zzh;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzsy$zzh;-><init>()V

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
