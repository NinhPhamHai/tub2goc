.class public final Lcom/google/android/gms/internal/ads/zzdky;
.super Lcom/google/android/gms/internal/ads/zzdrt;
.source "com.google.android.gms:play-services-ads@@18.3.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdtg;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/ads/zzdky$zza;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzdrt<",
        "Lcom/google/android/gms/internal/ads/zzdky;",
        "Lcom/google/android/gms/internal/ads/zzdky$zza;",
        ">;",
        "Lcom/google/android/gms/internal/ads/zzdtg;"
    }
.end annotation


# static fields
.field private static volatile zzdz:Lcom/google/android/gms/internal/ads/zzdtn;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzdtn<",
            "Lcom/google/android/gms/internal/ads/zzdky;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzhad:Lcom/google/android/gms/internal/ads/zzdky;


# instance fields
.field private zzhaa:I

.field private zzhab:Lcom/google/android/gms/internal/ads/zzdqk;

.field private zzhac:Lcom/google/android/gms/internal/ads/zzdlc;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 40
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdky;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzdky;-><init>()V

    .line 41
    sput-object v0, Lcom/google/android/gms/internal/ads/zzdky;->zzhad:Lcom/google/android/gms/internal/ads/zzdky;

    .line 42
    const-class v1, Lcom/google/android/gms/internal/ads/zzdky;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzdrt;->zza(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzdrt;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzdrt;-><init>()V

    .line 2
    sget-object v0, Lcom/google/android/gms/internal/ads/zzdqk;->zzhhx:Lcom/google/android/gms/internal/ads/zzdqk;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdky;->zzhab:Lcom/google/android/gms/internal/ads/zzdqk;

    return-void
.end method

.method private final setVersion(I)V
    .locals 0

    .line 5
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzdky;->zzhaa:I

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzdky;I)V
    .locals 0

    const/4 p1, 0x0

    .line 37
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzdky;->setVersion(I)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzdky;Lcom/google/android/gms/internal/ads/zzdlc;)V
    .locals 0

    .line 39
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzdky;->zzc(Lcom/google/android/gms/internal/ads/zzdlc;)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzdky;Lcom/google/android/gms/internal/ads/zzdqk;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzdky;->zzs(Lcom/google/android/gms/internal/ads/zzdqk;)V

    return-void
.end method

.method public static zzasu()Lcom/google/android/gms/internal/ads/zzdky$zza;
    .locals 1

    .line 16
    sget-object v0, Lcom/google/android/gms/internal/ads/zzdky;->zzhad:Lcom/google/android/gms/internal/ads/zzdky;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdrt;->zzazt()Lcom/google/android/gms/internal/ads/zzdrt$zzb;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzdky$zza;

    return-object v0
.end method

.method static synthetic zzasv()Lcom/google/android/gms/internal/ads/zzdky;
    .locals 1

    .line 36
    sget-object v0, Lcom/google/android/gms/internal/ads/zzdky;->zzhad:Lcom/google/android/gms/internal/ads/zzdky;

    return-object v0
.end method

.method private final zzc(Lcom/google/android/gms/internal/ads/zzdlc;)V
    .locals 0

    .line 12
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdky;->zzhac:Lcom/google/android/gms/internal/ads/zzdlc;

    return-void
.end method

.method private final zzs(Lcom/google/android/gms/internal/ads/zzdqk;)V
    .locals 0

    .line 8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdky;->zzhab:Lcom/google/android/gms/internal/ads/zzdqk;

    return-void
.end method

.method public static zzt(Lcom/google/android/gms/internal/ads/zzdqk;)Lcom/google/android/gms/internal/ads/zzdky;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzdse;
        }
    .end annotation

    .line 15
    sget-object v0, Lcom/google/android/gms/internal/ads/zzdky;->zzhad:Lcom/google/android/gms/internal/ads/zzdky;

    invoke-static {v0, p0}, Lcom/google/android/gms/internal/ads/zzdrt;->zza(Lcom/google/android/gms/internal/ads/zzdrt;Lcom/google/android/gms/internal/ads/zzdqk;)Lcom/google/android/gms/internal/ads/zzdrt;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzdky;

    return-object p0
.end method


# virtual methods
.method public final getVersion()I
    .locals 1

    .line 4
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzdky;->zzhaa:I

    return v0
.end method

.method protected final zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 17
    sget-object p2, Lcom/google/android/gms/internal/ads/zzdkz;->zzdk:[I

    const/4 p3, 0x1

    sub-int/2addr p1, p3

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_0

    .line 35
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p2

    .line 33
    :pswitch_1
    invoke-static {p3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 24
    :pswitch_2
    sget-object p1, Lcom/google/android/gms/internal/ads/zzdky;->zzdz:Lcom/google/android/gms/internal/ads/zzdtn;

    if-nez p1, :cond_1

    .line 26
    const-class p2, Lcom/google/android/gms/internal/ads/zzdky;

    monitor-enter p2

    .line 27
    :try_start_0
    sget-object p1, Lcom/google/android/gms/internal/ads/zzdky;->zzdz:Lcom/google/android/gms/internal/ads/zzdtn;

    if-nez p1, :cond_0

    .line 29
    new-instance p1, Lcom/google/android/gms/internal/ads/zzdrt$zza;

    sget-object p3, Lcom/google/android/gms/internal/ads/zzdky;->zzhad:Lcom/google/android/gms/internal/ads/zzdky;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/ads/zzdrt$zza;-><init>(Lcom/google/android/gms/internal/ads/zzdrt;)V

    .line 30
    sput-object p1, Lcom/google/android/gms/internal/ads/zzdky;->zzdz:Lcom/google/android/gms/internal/ads/zzdtn;

    .line 31
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

    .line 23
    :pswitch_3
    sget-object p1, Lcom/google/android/gms/internal/ads/zzdky;->zzhad:Lcom/google/android/gms/internal/ads/zzdky;

    return-object p1

    :pswitch_4
    const/4 p1, 0x3

    .line 20
    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string/jumbo v0, "zzhaa"

    aput-object v0, p1, p2

    const-string/jumbo p2, "zzhab"

    aput-object p2, p1, p3

    const/4 p2, 0x2

    const-string/jumbo p3, "zzhac"

    aput-object p3, p1, p2

    .line 22
    sget-object p2, Lcom/google/android/gms/internal/ads/zzdky;->zzhad:Lcom/google/android/gms/internal/ads/zzdky;

    const-string p3, "\u0000\u0003\u0000\u0000\u0001\u0003\u0003\u0000\u0000\u0000\u0001\u000b\u0002\n\u0003\t"

    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/ads/zzdrt;->zza(Lcom/google/android/gms/internal/ads/zzdte;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 19
    :pswitch_5
    new-instance p1, Lcom/google/android/gms/internal/ads/zzdky$zza;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzdky$zza;-><init>(Lcom/google/android/gms/internal/ads/zzdkz;)V

    return-object p1

    .line 18
    :pswitch_6
    new-instance p1, Lcom/google/android/gms/internal/ads/zzdky;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzdky;-><init>()V

    return-object p1

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

.method public final zzass()Lcom/google/android/gms/internal/ads/zzdqk;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdky;->zzhab:Lcom/google/android/gms/internal/ads/zzdqk;

    return-object v0
.end method

.method public final zzast()Lcom/google/android/gms/internal/ads/zzdlc;
    .locals 1

    .line 11
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdky;->zzhac:Lcom/google/android/gms/internal/ads/zzdlc;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzdlc;->zzasy()Lcom/google/android/gms/internal/ads/zzdlc;

    move-result-object v0

    :cond_0
    return-object v0
.end method