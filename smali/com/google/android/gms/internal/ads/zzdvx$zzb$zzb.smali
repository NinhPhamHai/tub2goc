.class public final Lcom/google/android/gms/internal/ads/zzdvx$zzb$zzb;
.super Lcom/google/android/gms/internal/ads/zzdrt;
.source "com.google.android.gms:play-services-ads@@18.3.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdtg;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/ads/zzdvx$zzb$zzb$zza;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzdrt<",
        "Lcom/google/android/gms/internal/ads/zzdvx$zzb$zzb;",
        "Lcom/google/android/gms/internal/ads/zzdvx$zzb$zzb$zza;",
        ">;",
        "Lcom/google/android/gms/internal/ads/zzdtg;"
    }
.end annotation


# static fields
.field private static volatile zzdz:Lcom/google/android/gms/internal/ads/zzdtn;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzdtn<",
            "Lcom/google/android/gms/internal/ads/zzdvx$zzb$zzb;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzhvp:Lcom/google/android/gms/internal/ads/zzdvx$zzb$zzb;


# instance fields
.field private zzdl:I

.field private zzhvo:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 30
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdvx$zzb$zzb;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzdvx$zzb$zzb;-><init>()V

    .line 31
    sput-object v0, Lcom/google/android/gms/internal/ads/zzdvx$zzb$zzb;->zzhvp:Lcom/google/android/gms/internal/ads/zzdvx$zzb$zzb;

    .line 32
    const-class v1, Lcom/google/android/gms/internal/ads/zzdvx$zzb$zzb;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzdrt;->zza(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzdrt;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzdrt;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdvx$zzb$zzb;->zzhvo:Ljava/lang/String;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzdvx$zzb$zzb;Ljava/lang/String;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzdvx$zzb$zzb;->zzhm(Ljava/lang/String;)V

    return-void
.end method

.method public static zzbcw()Lcom/google/android/gms/internal/ads/zzdvx$zzb$zzb$zza;
    .locals 1

    .line 8
    sget-object v0, Lcom/google/android/gms/internal/ads/zzdvx$zzb$zzb;->zzhvp:Lcom/google/android/gms/internal/ads/zzdvx$zzb$zzb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdrt;->zzazt()Lcom/google/android/gms/internal/ads/zzdrt$zzb;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzdvx$zzb$zzb$zza;

    return-object v0
.end method

.method static synthetic zzbcx()Lcom/google/android/gms/internal/ads/zzdvx$zzb$zzb;
    .locals 1

    .line 28
    sget-object v0, Lcom/google/android/gms/internal/ads/zzdvx$zzb$zzb;->zzhvp:Lcom/google/android/gms/internal/ads/zzdvx$zzb$zzb;

    return-object v0
.end method

.method private final zzhm(Ljava/lang/String;)V
    .locals 1

    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzdvx$zzb$zzb;->zzdl:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzdvx$zzb$zzb;->zzdl:I

    .line 6
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdvx$zzb$zzb;->zzhvo:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected final zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 9
    sget-object p2, Lcom/google/android/gms/internal/ads/zzdvz;->zzdk:[I

    const/4 p3, 0x1

    sub-int/2addr p1, p3

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_0

    .line 27
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p2

    .line 25
    :pswitch_1
    invoke-static {p3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 16
    :pswitch_2
    sget-object p1, Lcom/google/android/gms/internal/ads/zzdvx$zzb$zzb;->zzdz:Lcom/google/android/gms/internal/ads/zzdtn;

    if-nez p1, :cond_1

    .line 18
    const-class p2, Lcom/google/android/gms/internal/ads/zzdvx$zzb$zzb;

    monitor-enter p2

    .line 19
    :try_start_0
    sget-object p1, Lcom/google/android/gms/internal/ads/zzdvx$zzb$zzb;->zzdz:Lcom/google/android/gms/internal/ads/zzdtn;

    if-nez p1, :cond_0

    .line 21
    new-instance p1, Lcom/google/android/gms/internal/ads/zzdrt$zza;

    sget-object p3, Lcom/google/android/gms/internal/ads/zzdvx$zzb$zzb;->zzhvp:Lcom/google/android/gms/internal/ads/zzdvx$zzb$zzb;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/ads/zzdrt$zza;-><init>(Lcom/google/android/gms/internal/ads/zzdrt;)V

    .line 22
    sput-object p1, Lcom/google/android/gms/internal/ads/zzdvx$zzb$zzb;->zzdz:Lcom/google/android/gms/internal/ads/zzdtn;

    .line 23
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

    .line 15
    :pswitch_3
    sget-object p1, Lcom/google/android/gms/internal/ads/zzdvx$zzb$zzb;->zzhvp:Lcom/google/android/gms/internal/ads/zzdvx$zzb$zzb;

    return-object p1

    :pswitch_4
    const/4 p1, 0x2

    .line 12
    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string v0, "zzdl"

    aput-object v0, p1, p2

    const-string/jumbo p2, "zzhvo"

    aput-object p2, p1, p3

    .line 14
    sget-object p2, Lcom/google/android/gms/internal/ads/zzdvx$zzb$zzb;->zzhvp:Lcom/google/android/gms/internal/ads/zzdvx$zzb$zzb;

    const-string p3, "\u0001\u0001\u0000\u0001\u0001\u0001\u0001\u0000\u0000\u0000\u0001\u0008\u0000"

    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/ads/zzdrt;->zza(Lcom/google/android/gms/internal/ads/zzdte;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 11
    :pswitch_5
    new-instance p1, Lcom/google/android/gms/internal/ads/zzdvx$zzb$zzb$zza;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzdvx$zzb$zzb$zza;-><init>(Lcom/google/android/gms/internal/ads/zzdvz;)V

    return-object p1

    .line 10
    :pswitch_6
    new-instance p1, Lcom/google/android/gms/internal/ads/zzdvx$zzb$zzb;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzdvx$zzb$zzb;-><init>()V

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