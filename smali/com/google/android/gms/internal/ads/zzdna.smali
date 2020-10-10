.class public final Lcom/google/android/gms/internal/ads/zzdna;
.super Lcom/google/android/gms/internal/ads/zzdrt;
.source "com.google.android.gms:play-services-ads@@18.3.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdtg;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/ads/zzdna$zza;,
        Lcom/google/android/gms/internal/ads/zzdna$zzb;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzdrt<",
        "Lcom/google/android/gms/internal/ads/zzdna;",
        "Lcom/google/android/gms/internal/ads/zzdna$zza;",
        ">;",
        "Lcom/google/android/gms/internal/ads/zzdtg;"
    }
.end annotation


# static fields
.field private static volatile zzdz:Lcom/google/android/gms/internal/ads/zzdtn;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzdtn<",
            "Lcom/google/android/gms/internal/ads/zzdna;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzhcv:Lcom/google/android/gms/internal/ads/zzdna;


# instance fields
.field private zzhcs:Ljava/lang/String;

.field private zzhct:Lcom/google/android/gms/internal/ads/zzdqk;

.field private zzhcu:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 42
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdna;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzdna;-><init>()V

    .line 43
    sput-object v0, Lcom/google/android/gms/internal/ads/zzdna;->zzhcv:Lcom/google/android/gms/internal/ads/zzdna;

    .line 44
    const-class v1, Lcom/google/android/gms/internal/ads/zzdna;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzdrt;->zza(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzdrt;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzdrt;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdna;->zzhcs:Ljava/lang/String;

    .line 3
    sget-object v0, Lcom/google/android/gms/internal/ads/zzdqk;->zzhhx:Lcom/google/android/gms/internal/ads/zzdqk;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdna;->zzhct:Lcom/google/android/gms/internal/ads/zzdqk;

    return-void
.end method

.method private final zza(Lcom/google/android/gms/internal/ads/zzdna$zzb;)V
    .locals 0

    .line 15
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdna$zzb;->zzae()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzdna;->zzhcu:I

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzdna;Lcom/google/android/gms/internal/ads/zzdna$zzb;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzdna;->zza(Lcom/google/android/gms/internal/ads/zzdna$zzb;)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzdna;Lcom/google/android/gms/internal/ads/zzdqk;)V
    .locals 0

    .line 40
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzdna;->zzav(Lcom/google/android/gms/internal/ads/zzdqk;)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzdna;Ljava/lang/String;)V
    .locals 0

    .line 39
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzdna;->zzha(Ljava/lang/String;)V

    return-void
.end method

.method private final zzav(Lcom/google/android/gms/internal/ads/zzdqk;)V
    .locals 0

    .line 10
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdna;->zzhct:Lcom/google/android/gms/internal/ads/zzdqk;

    return-void
.end method

.method public static zzavl()Lcom/google/android/gms/internal/ads/zzdna$zza;
    .locals 1

    .line 17
    sget-object v0, Lcom/google/android/gms/internal/ads/zzdna;->zzhcv:Lcom/google/android/gms/internal/ads/zzdna;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdrt;->zzazt()Lcom/google/android/gms/internal/ads/zzdrt$zzb;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzdna$zza;

    return-object v0
.end method

.method public static zzavm()Lcom/google/android/gms/internal/ads/zzdna;
    .locals 1

    .line 37
    sget-object v0, Lcom/google/android/gms/internal/ads/zzdna;->zzhcv:Lcom/google/android/gms/internal/ads/zzdna;

    return-object v0
.end method

.method static synthetic zzavn()Lcom/google/android/gms/internal/ads/zzdna;
    .locals 1

    .line 38
    sget-object v0, Lcom/google/android/gms/internal/ads/zzdna;->zzhcv:Lcom/google/android/gms/internal/ads/zzdna;

    return-object v0
.end method

.method private final zzha(Ljava/lang/String;)V
    .locals 0

    .line 6
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdna;->zzhcs:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected final zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 18
    sget-object p2, Lcom/google/android/gms/internal/ads/zzdnb;->zzdk:[I

    const/4 p3, 0x1

    sub-int/2addr p1, p3

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_0

    .line 36
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p2

    .line 34
    :pswitch_1
    invoke-static {p3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 25
    :pswitch_2
    sget-object p1, Lcom/google/android/gms/internal/ads/zzdna;->zzdz:Lcom/google/android/gms/internal/ads/zzdtn;

    if-nez p1, :cond_1

    .line 27
    const-class p2, Lcom/google/android/gms/internal/ads/zzdna;

    monitor-enter p2

    .line 28
    :try_start_0
    sget-object p1, Lcom/google/android/gms/internal/ads/zzdna;->zzdz:Lcom/google/android/gms/internal/ads/zzdtn;

    if-nez p1, :cond_0

    .line 30
    new-instance p1, Lcom/google/android/gms/internal/ads/zzdrt$zza;

    sget-object p3, Lcom/google/android/gms/internal/ads/zzdna;->zzhcv:Lcom/google/android/gms/internal/ads/zzdna;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/ads/zzdrt$zza;-><init>(Lcom/google/android/gms/internal/ads/zzdrt;)V

    .line 31
    sput-object p1, Lcom/google/android/gms/internal/ads/zzdna;->zzdz:Lcom/google/android/gms/internal/ads/zzdtn;

    .line 32
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

    .line 24
    :pswitch_3
    sget-object p1, Lcom/google/android/gms/internal/ads/zzdna;->zzhcv:Lcom/google/android/gms/internal/ads/zzdna;

    return-object p1

    :pswitch_4
    const/4 p1, 0x3

    .line 21
    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string/jumbo v0, "zzhcs"

    aput-object v0, p1, p2

    const-string/jumbo p2, "zzhct"

    aput-object p2, p1, p3

    const/4 p2, 0x2

    const-string/jumbo p3, "zzhcu"

    aput-object p3, p1, p2

    .line 23
    sget-object p2, Lcom/google/android/gms/internal/ads/zzdna;->zzhcv:Lcom/google/android/gms/internal/ads/zzdna;

    const-string p3, "\u0000\u0003\u0000\u0000\u0001\u0003\u0003\u0000\u0000\u0000\u0001\u0208\u0002\n\u0003\u000c"

    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/ads/zzdrt;->zza(Lcom/google/android/gms/internal/ads/zzdte;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 20
    :pswitch_5
    new-instance p1, Lcom/google/android/gms/internal/ads/zzdna$zza;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzdna$zza;-><init>(Lcom/google/android/gms/internal/ads/zzdnb;)V

    return-object p1

    .line 19
    :pswitch_6
    new-instance p1, Lcom/google/android/gms/internal/ads/zzdna;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzdna;-><init>()V

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

.method public final zzavi()Ljava/lang/String;
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdna;->zzhcs:Ljava/lang/String;

    return-object v0
.end method

.method public final zzavj()Lcom/google/android/gms/internal/ads/zzdqk;
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdna;->zzhct:Lcom/google/android/gms/internal/ads/zzdqk;

    return-object v0
.end method

.method public final zzavk()Lcom/google/android/gms/internal/ads/zzdna$zzb;
    .locals 1

    .line 13
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzdna;->zzhcu:I

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdna$zzb;->zzeo(I)Lcom/google/android/gms/internal/ads/zzdna$zzb;

    move-result-object v0

    if-nez v0, :cond_0

    .line 14
    sget-object v0, Lcom/google/android/gms/internal/ads/zzdna$zzb;->zzhdb:Lcom/google/android/gms/internal/ads/zzdna$zzb;

    :cond_0
    return-object v0
.end method
