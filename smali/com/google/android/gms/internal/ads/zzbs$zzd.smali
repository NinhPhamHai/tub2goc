.class public final Lcom/google/android/gms/internal/ads/zzbs$zzd;
.super Lcom/google/android/gms/internal/ads/zzdrt;
.source "com.google.android.gms:play-services-gass@@18.3.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdtg;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/ads/zzbs$zzd$zza;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzdrt<",
        "Lcom/google/android/gms/internal/ads/zzbs$zzd;",
        "Lcom/google/android/gms/internal/ads/zzbs$zzd$zza;",
        ">;",
        "Lcom/google/android/gms/internal/ads/zzdtg;"
    }
.end annotation


# static fields
.field private static volatile zzdz:Lcom/google/android/gms/internal/ads/zzdtn;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzdtn<",
            "Lcom/google/android/gms/internal/ads/zzbs$zzd;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzll:Lcom/google/android/gms/internal/ads/zzbs$zzd;


# instance fields
.field private zzdl:I

.field private zzkj:J

.field private zzlj:Ljava/lang/String;

.field private zzlk:Lcom/google/android/gms/internal/ads/zzdqk;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 28
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbs$zzd;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzbs$zzd;-><init>()V

    .line 29
    sput-object v0, Lcom/google/android/gms/internal/ads/zzbs$zzd;->zzll:Lcom/google/android/gms/internal/ads/zzbs$zzd;

    .line 30
    const-class v1, Lcom/google/android/gms/internal/ads/zzbs$zzd;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzdrt;->zza(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzdrt;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzdrt;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbs$zzd;->zzlj:Ljava/lang/String;

    .line 3
    sget-object v0, Lcom/google/android/gms/internal/ads/zzdqk;->zzhhx:Lcom/google/android/gms/internal/ads/zzdqk;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbs$zzd;->zzlk:Lcom/google/android/gms/internal/ads/zzdqk;

    return-void
.end method

.method public static zzbf()Lcom/google/android/gms/internal/ads/zzbs$zzd;
    .locals 1

    .line 26
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbs$zzd;->zzll:Lcom/google/android/gms/internal/ads/zzbs$zzd;

    return-object v0
.end method

.method static synthetic zzbg()Lcom/google/android/gms/internal/ads/zzbs$zzd;
    .locals 1

    .line 27
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbs$zzd;->zzll:Lcom/google/android/gms/internal/ads/zzbs$zzd;

    return-object v0
.end method


# virtual methods
.method protected final zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 7
    sget-object p2, Lcom/google/android/gms/internal/ads/zzbt;->zzdk:[I

    const/4 p3, 0x1

    sub-int/2addr p1, p3

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_0

    .line 25
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p2

    .line 23
    :pswitch_1
    invoke-static {p3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 14
    :pswitch_2
    sget-object p1, Lcom/google/android/gms/internal/ads/zzbs$zzd;->zzdz:Lcom/google/android/gms/internal/ads/zzdtn;

    if-nez p1, :cond_1

    .line 16
    const-class p2, Lcom/google/android/gms/internal/ads/zzbs$zzd;

    monitor-enter p2

    .line 17
    :try_start_0
    sget-object p1, Lcom/google/android/gms/internal/ads/zzbs$zzd;->zzdz:Lcom/google/android/gms/internal/ads/zzdtn;

    if-nez p1, :cond_0

    .line 19
    new-instance p1, Lcom/google/android/gms/internal/ads/zzdrt$zza;

    sget-object p3, Lcom/google/android/gms/internal/ads/zzbs$zzd;->zzll:Lcom/google/android/gms/internal/ads/zzbs$zzd;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/ads/zzdrt$zza;-><init>(Lcom/google/android/gms/internal/ads/zzdrt;)V

    .line 20
    sput-object p1, Lcom/google/android/gms/internal/ads/zzbs$zzd;->zzdz:Lcom/google/android/gms/internal/ads/zzdtn;

    .line 21
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

    .line 13
    :pswitch_3
    sget-object p1, Lcom/google/android/gms/internal/ads/zzbs$zzd;->zzll:Lcom/google/android/gms/internal/ads/zzbs$zzd;

    return-object p1

    :pswitch_4
    const/4 p1, 0x4

    .line 10
    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string v0, "zzdl"

    aput-object v0, p1, p2

    const-string/jumbo p2, "zzkj"

    aput-object p2, p1, p3

    const/4 p2, 0x2

    const-string/jumbo p3, "zzlj"

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-string/jumbo p3, "zzlk"

    aput-object p3, p1, p2

    .line 12
    sget-object p2, Lcom/google/android/gms/internal/ads/zzbs$zzd;->zzll:Lcom/google/android/gms/internal/ads/zzbs$zzd;

    const-string p3, "\u0001\u0003\u0000\u0001\u0001\u0004\u0003\u0000\u0000\u0000\u0001\u0002\u0000\u0003\u0008\u0001\u0004\n\u0002"

    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/ads/zzdrt;->zza(Lcom/google/android/gms/internal/ads/zzdte;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 9
    :pswitch_5
    new-instance p1, Lcom/google/android/gms/internal/ads/zzbs$zzd$zza;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzbs$zzd$zza;-><init>(Lcom/google/android/gms/internal/ads/zzbt;)V

    return-object p1

    .line 8
    :pswitch_6
    new-instance p1, Lcom/google/android/gms/internal/ads/zzbs$zzd;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzbs$zzd;-><init>()V

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

.method public final zzbd()Z
    .locals 2

    .line 5
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbs$zzd;->zzdl:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final zzbe()J
    .locals 2

    .line 6
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzbs$zzd;->zzkj:J

    return-wide v0
.end method