.class public final Lcom/google/android/gms/internal/ads/zzij;
.super Lcom/google/android/gms/internal/ads/zzkw;
.source "com.google.android.gms:play-services-ads@@18.3.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzog;


# instance fields
.field private zzafo:I

.field private zzafq:I

.field private final zzakq:Lcom/google/android/gms/internal/ads/zzhr;

.field private final zzakr:Lcom/google/android/gms/internal/ads/zzhw;

.field private zzaks:Z

.field private zzakt:Z

.field private zzaku:Landroid/media/MediaFormat;

.field private zzakv:J

.field private zzakw:Z


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzky;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1
    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzij;-><init>(Lcom/google/android/gms/internal/ads/zzky;Lcom/google/android/gms/internal/ads/zzja;Z)V

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzky;Lcom/google/android/gms/internal/ads/zzja;Z)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzky;",
            "Lcom/google/android/gms/internal/ads/zzja<",
            "Lcom/google/android/gms/internal/ads/zzjc;",
            ">;Z)V"
        }
    .end annotation

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    .line 3
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzij;-><init>(Lcom/google/android/gms/internal/ads/zzky;Lcom/google/android/gms/internal/ads/zzja;ZLcom/google/android/gms/internal/ads/zzddu;Lcom/google/android/gms/internal/ads/zzho;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzky;Lcom/google/android/gms/internal/ads/zzja;ZLcom/google/android/gms/internal/ads/zzddu;Lcom/google/android/gms/internal/ads/zzho;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzky;",
            "Lcom/google/android/gms/internal/ads/zzja<",
            "Lcom/google/android/gms/internal/ads/zzjc;",
            ">;Z",
            "Lcom/google/android/gms/internal/ads/zzddu;",
            "Lcom/google/android/gms/internal/ads/zzho;",
            ")V"
        }
    .end annotation

    const/4 p2, 0x0

    .line 5
    new-array v7, p2, [Lcom/google/android/gms/internal/ads/zzhm;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/internal/ads/zzij;-><init>(Lcom/google/android/gms/internal/ads/zzky;Lcom/google/android/gms/internal/ads/zzja;ZLcom/google/android/gms/internal/ads/zzddu;Lcom/google/android/gms/internal/ads/zzho;Lcom/google/android/gms/internal/ads/zzhn;[Lcom/google/android/gms/internal/ads/zzhm;)V

    return-void
.end method

.method private varargs constructor <init>(Lcom/google/android/gms/internal/ads/zzky;Lcom/google/android/gms/internal/ads/zzja;ZLcom/google/android/gms/internal/ads/zzddu;Lcom/google/android/gms/internal/ads/zzho;Lcom/google/android/gms/internal/ads/zzhn;[Lcom/google/android/gms/internal/ads/zzhm;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzky;",
            "Lcom/google/android/gms/internal/ads/zzja<",
            "Lcom/google/android/gms/internal/ads/zzjc;",
            ">;Z",
            "Lcom/google/android/gms/internal/ads/zzddu;",
            "Lcom/google/android/gms/internal/ads/zzho;",
            "Lcom/google/android/gms/internal/ads/zzhn;",
            "[",
            "Lcom/google/android/gms/internal/ads/zzhm;",
            ")V"
        }
    .end annotation

    const/4 p4, 0x1

    .line 7
    invoke-direct {p0, p4, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzkw;-><init>(ILcom/google/android/gms/internal/ads/zzky;Lcom/google/android/gms/internal/ads/zzja;Z)V

    .line 8
    new-instance p1, Lcom/google/android/gms/internal/ads/zzhw;

    new-instance p2, Lcom/google/android/gms/internal/ads/zzil;

    const/4 p3, 0x0

    invoke-direct {p2, p0, p3}, Lcom/google/android/gms/internal/ads/zzil;-><init>(Lcom/google/android/gms/internal/ads/zzij;Lcom/google/android/gms/internal/ads/zzii;)V

    invoke-direct {p1, p3, p7, p2}, Lcom/google/android/gms/internal/ads/zzhw;-><init>(Lcom/google/android/gms/internal/ads/zzhn;[Lcom/google/android/gms/internal/ads/zzhm;Lcom/google/android/gms/internal/ads/zzic;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzij;->zzakr:Lcom/google/android/gms/internal/ads/zzhw;

    .line 9
    new-instance p1, Lcom/google/android/gms/internal/ads/zzhr;

    invoke-direct {p1, p3, p3}, Lcom/google/android/gms/internal/ads/zzhr;-><init>(Lcom/google/android/gms/internal/ads/zzddu;Lcom/google/android/gms/internal/ads/zzho;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzij;->zzakq:Lcom/google/android/gms/internal/ads/zzhr;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzij;)Lcom/google/android/gms/internal/ads/zzhr;
    .locals 0

    .line 145
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzij;->zzakq:Lcom/google/android/gms/internal/ads/zzhr;

    return-object p0
.end method

.method protected static zza(IJJ)V
    .locals 0

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzij;Z)Z
    .locals 0

    const/4 p1, 0x1

    .line 146
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzij;->zzakw:Z

    return p1
.end method

.method private final zzbc(Ljava/lang/String;)Z
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzij;->zzakr:Lcom/google/android/gms/internal/ads/zzhw;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzhw;->zzba(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method protected static zzft()V
    .locals 0

    return-void
.end method

.method protected static zzr(I)V
    .locals 0

    return-void
.end method


# virtual methods
.method public final isReady()Z
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzij;->zzakr:Lcom/google/android/gms/internal/ads/zzhw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhw;->zzfh()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-super {p0}, Lcom/google/android/gms/internal/ads/zzkw;->isReady()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method protected final onOutputFormatChanged(Landroid/media/MediaCodec;Landroid/media/MediaFormat;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzgl;
        }
    .end annotation

    .line 56
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzij;->zzaku:Landroid/media/MediaFormat;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    .line 57
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzij;->zzaku:Landroid/media/MediaFormat;

    const-string v2, "mime"

    invoke-virtual {v1, v2}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_1
    const-string v1, "audio/raw"

    :goto_1
    move-object v3, v1

    if-eqz p1, :cond_2

    .line 59
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzij;->zzaku:Landroid/media/MediaFormat;

    :cond_2
    const-string p1, "channel-count"

    .line 60
    invoke-virtual {p2, p1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v4

    const-string p1, "sample-rate"

    .line 61
    invoke-virtual {p2, p1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v5

    .line 62
    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzij;->zzakt:Z

    if-eqz p1, :cond_3

    const/4 p1, 0x6

    if-ne v4, p1, :cond_3

    iget p2, p0, Lcom/google/android/gms/internal/ads/zzij;->zzafo:I

    if-ge p2, p1, :cond_3

    .line 63
    new-array p1, p2, [I

    .line 64
    :goto_2
    iget p2, p0, Lcom/google/android/gms/internal/ads/zzij;->zzafo:I

    if-ge v0, p2, :cond_4

    .line 65
    aput v0, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    const/4 p1, 0x0

    :cond_4
    move-object v8, p1

    .line 68
    :try_start_0
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzij;->zzakr:Lcom/google/android/gms/internal/ads/zzhw;

    iget v6, p0, Lcom/google/android/gms/internal/ads/zzij;->zzafq:I

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v8}, Lcom/google/android/gms/internal/ads/zzhw;->zza(Ljava/lang/String;IIII[I)V
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzia; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 70
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgj;->getIndex()I

    move-result p2

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/zzgl;->zza(Ljava/lang/Exception;I)Lcom/google/android/gms/internal/ads/zzgl;

    move-result-object p1

    throw p1
.end method

.method protected final onStarted()V
    .locals 1

    .line 86
    invoke-super {p0}, Lcom/google/android/gms/internal/ads/zzkw;->onStarted()V

    .line 87
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzij;->zzakr:Lcom/google/android/gms/internal/ads/zzhw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhw;->play()V

    return-void
.end method

.method protected final onStopped()V
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzij;->zzakr:Lcom/google/android/gms/internal/ads/zzhw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhw;->pause()V

    .line 90
    invoke-super {p0}, Lcom/google/android/gms/internal/ads/zzkw;->onStopped()V

    return-void
.end method

.method protected final zza(Lcom/google/android/gms/internal/ads/zzky;Lcom/google/android/gms/internal/ads/zzgw;)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzlb;
        }
    .end annotation

    .line 11
    iget-object v0, p2, Lcom/google/android/gms/internal/ads/zzgw;->zzafe:Ljava/lang/String;

    .line 12
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzof;->zzbh(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    .line 14
    :cond_0
    sget v1, Lcom/google/android/gms/internal/ads/zzoq;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v1, v3, :cond_1

    const/16 v1, 0x10

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 15
    :goto_0
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzij;->zzbc(Ljava/lang/String;)Z

    move-result v4

    const/4 v5, 0x3

    if-eqz v4, :cond_2

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzky;->zzhb()Lcom/google/android/gms/internal/ads/zzkt;

    move-result-object v4

    if-eqz v4, :cond_2

    or-int/lit8 p1, v1, 0x4

    or-int/2addr p1, v5

    return p1

    .line 17
    :cond_2
    invoke-interface {p1, v0, v2}, Lcom/google/android/gms/internal/ads/zzky;->zzb(Ljava/lang/String;Z)Lcom/google/android/gms/internal/ads/zzkt;

    move-result-object p1

    const/4 v0, 0x1

    if-nez p1, :cond_3

    return v0

    .line 20
    :cond_3
    sget v4, Lcom/google/android/gms/internal/ads/zzoq;->SDK_INT:I

    if-lt v4, v3, :cond_6

    iget v3, p2, Lcom/google/android/gms/internal/ads/zzgw;->zzafp:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_4

    .line 21
    invoke-virtual {p1, v3}, Lcom/google/android/gms/internal/ads/zzkt;->zzaq(I)Z

    move-result v3

    if-eqz v3, :cond_5

    :cond_4
    iget p2, p2, Lcom/google/android/gms/internal/ads/zzgw;->zzafo:I

    if-eq p2, v4, :cond_6

    .line 22
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzkt;->zzar(I)Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_1

    :cond_5
    const/4 v0, 0x0

    :cond_6
    :goto_1
    if-eqz v0, :cond_7

    goto :goto_2

    :cond_7
    const/4 v5, 0x2

    :goto_2
    or-int/lit8 p1, v1, 0x4

    or-int/2addr p1, v5

    return p1
.end method

.method protected final zza(Lcom/google/android/gms/internal/ads/zzky;Lcom/google/android/gms/internal/ads/zzgw;Z)Lcom/google/android/gms/internal/ads/zzkt;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzlb;
        }
    .end annotation

    .line 25
    iget-object v0, p2, Lcom/google/android/gms/internal/ads/zzgw;->zzafe:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzij;->zzbc(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 26
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzky;->zzhb()Lcom/google/android/gms/internal/ads/zzkt;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    .line 28
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzij;->zzaks:Z

    return-object v0

    :cond_0
    const/4 v0, 0x0

    .line 30
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzij;->zzaks:Z

    .line 31
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzkw;->zza(Lcom/google/android/gms/internal/ads/zzky;Lcom/google/android/gms/internal/ads/zzgw;Z)Lcom/google/android/gms/internal/ads/zzkt;

    move-result-object p1

    return-object p1
.end method

.method public final zza(ILjava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzgl;
        }
    .end annotation

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    .line 143
    invoke-super {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzgj;->zza(ILjava/lang/Object;)V

    return-void

    .line 140
    :cond_0
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 141
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzij;->zzakr:Lcom/google/android/gms/internal/ads/zzhw;

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzhw;->setStreamType(I)V

    return-void

    .line 138
    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzij;->zzakr:Lcom/google/android/gms/internal/ads/zzhw;

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzhw;->setVolume(F)V

    return-void
.end method

.method protected final zza(JZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzgl;
        }
    .end annotation

    .line 81
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzkw;->zza(JZ)V

    .line 82
    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzij;->zzakr:Lcom/google/android/gms/internal/ads/zzhw;

    invoke-virtual {p3}, Lcom/google/android/gms/internal/ads/zzhw;->reset()V

    .line 83
    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzij;->zzakv:J

    const/4 p1, 0x1

    .line 84
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzij;->zzakw:Z

    return-void
.end method

.method protected final zza(Lcom/google/android/gms/internal/ads/zzkt;Landroid/media/MediaCodec;Lcom/google/android/gms/internal/ads/zzgw;Landroid/media/MediaCrypto;)V
    .locals 3

    .line 33
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzkt;->name:Ljava/lang/String;

    .line 34
    sget p4, Lcom/google/android/gms/internal/ads/zzoq;->SDK_INT:I

    const/4 v0, 0x0

    const/16 v1, 0x18

    if-ge p4, v1, :cond_1

    const-string p4, "OMX.SEC.aac.dec"

    invoke-virtual {p4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    sget-object p1, Lcom/google/android/gms/internal/ads/zzoq;->MANUFACTURER:Ljava/lang/String;

    const-string p4, "samsung"

    .line 35
    invoke-virtual {p4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    sget-object p1, Lcom/google/android/gms/internal/ads/zzoq;->DEVICE:Ljava/lang/String;

    const-string p4, "zeroflte"

    .line 36
    invoke-virtual {p1, p4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    sget-object p1, Lcom/google/android/gms/internal/ads/zzoq;->DEVICE:Ljava/lang/String;

    const-string p4, "herolte"

    invoke-virtual {p1, p4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    sget-object p1, Lcom/google/android/gms/internal/ads/zzoq;->DEVICE:Ljava/lang/String;

    const-string p4, "heroqlte"

    .line 37
    invoke-virtual {p1, p4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 38
    :goto_0
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzij;->zzakt:Z

    .line 39
    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzij;->zzaks:Z

    const/4 p4, 0x0

    if-eqz p1, :cond_2

    .line 40
    invoke-virtual {p3}, Lcom/google/android/gms/internal/ads/zzgw;->zzeq()Landroid/media/MediaFormat;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzij;->zzaku:Landroid/media/MediaFormat;

    .line 41
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzij;->zzaku:Landroid/media/MediaFormat;

    const-string v1, "mime"

    const-string v2, "audio/raw"

    invoke-virtual {p1, v1, v2}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzij;->zzaku:Landroid/media/MediaFormat;

    invoke-virtual {p2, p1, p4, p4, v0}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 43
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzij;->zzaku:Landroid/media/MediaFormat;

    iget-object p2, p3, Lcom/google/android/gms/internal/ads/zzgw;->zzafe:Ljava/lang/String;

    invoke-virtual {p1, v1, p2}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 44
    :cond_2
    invoke-virtual {p3}, Lcom/google/android/gms/internal/ads/zzgw;->zzeq()Landroid/media/MediaFormat;

    move-result-object p1

    invoke-virtual {p2, p1, p4, p4, v0}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 45
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzij;->zzaku:Landroid/media/MediaFormat;

    return-void
.end method

.method protected final zza(JJLandroid/media/MediaCodec;Ljava/nio/ByteBuffer;IIJZ)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzgl;
        }
    .end annotation

    .line 119
    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzij;->zzaks:Z

    const/4 p2, 0x0

    const/4 p3, 0x1

    if-eqz p1, :cond_0

    and-int/lit8 p1, p8, 0x2

    if-eqz p1, :cond_0

    .line 120
    invoke-virtual {p5, p7, p2}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    return p3

    :cond_0
    if-eqz p11, :cond_1

    .line 123
    invoke-virtual {p5, p7, p2}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 124
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzkw;->zzaze:Lcom/google/android/gms/internal/ads/zzit;

    iget p2, p1, Lcom/google/android/gms/internal/ads/zzit;->zzamj:I

    add-int/2addr p2, p3

    iput p2, p1, Lcom/google/android/gms/internal/ads/zzit;->zzamj:I

    .line 125
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzij;->zzakr:Lcom/google/android/gms/internal/ads/zzhw;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzhw;->zzfe()V

    return p3

    .line 127
    :cond_1
    :try_start_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzij;->zzakr:Lcom/google/android/gms/internal/ads/zzhw;

    invoke-virtual {p1, p6, p9, p10}, Lcom/google/android/gms/internal/ads/zzhw;->zza(Ljava/nio/ByteBuffer;J)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 128
    invoke-virtual {p5, p7, p2}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 129
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzkw;->zzaze:Lcom/google/android/gms/internal/ads/zzit;

    iget p2, p1, Lcom/google/android/gms/internal/ads/zzit;->zzami:I

    add-int/2addr p2, p3

    iput p2, p1, Lcom/google/android/gms/internal/ads/zzit;->zzami:I
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzid; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/google/android/gms/internal/ads/zzie; {:try_start_0 .. :try_end_0} :catch_0

    return p3

    :cond_2
    return p2

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 132
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgj;->getIndex()I

    move-result p2

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/zzgl;->zza(Ljava/lang/Exception;I)Lcom/google/android/gms/internal/ads/zzgl;

    move-result-object p1

    throw p1
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzhc;)Lcom/google/android/gms/internal/ads/zzhc;
    .locals 1

    .line 117
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzij;->zzakr:Lcom/google/android/gms/internal/ads/zzhw;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzhw;->zzb(Lcom/google/android/gms/internal/ads/zzhc;)Lcom/google/android/gms/internal/ads/zzhc;

    move-result-object p1

    return-object p1
.end method

.method protected final zzc(Ljava/lang/String;JJ)V
    .locals 6

    .line 48
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzij;->zzakq:Lcom/google/android/gms/internal/ads/zzhr;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzhr;->zzb(Ljava/lang/String;JJ)V

    return-void
.end method

.method protected final zzd(Lcom/google/android/gms/internal/ads/zzgw;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzgl;
        }
    .end annotation

    .line 50
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/ads/zzkw;->zzd(Lcom/google/android/gms/internal/ads/zzgw;)V

    .line 51
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzij;->zzakq:Lcom/google/android/gms/internal/ads/zzhr;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzhr;->zzc(Lcom/google/android/gms/internal/ads/zzgw;)V

    .line 52
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzgw;->zzafe:Ljava/lang/String;

    const-string v1, "audio/raw"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p1, Lcom/google/android/gms/internal/ads/zzgw;->zzafq:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    .line 53
    :goto_0
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzij;->zzafq:I

    .line 54
    iget p1, p1, Lcom/google/android/gms/internal/ads/zzgw;->zzafo:I

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzij;->zzafo:I

    return-void
.end method

.method public final zzdq()Lcom/google/android/gms/internal/ads/zzog;
    .locals 0

    return-object p0
.end method

.method protected final zzdx()V
    .locals 3

    .line 92
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzij;->zzakr:Lcom/google/android/gms/internal/ads/zzhw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhw;->release()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 93
    :try_start_1
    invoke-super {p0}, Lcom/google/android/gms/internal/ads/zzkw;->zzdx()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 94
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzkw;->zzaze:Lcom/google/android/gms/internal/ads/zzit;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzit;->zzge()V

    .line 95
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzij;->zzakq:Lcom/google/android/gms/internal/ads/zzhr;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzkw;->zzaze:Lcom/google/android/gms/internal/ads/zzit;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzhr;->zzd(Lcom/google/android/gms/internal/ads/zzit;)V

    return-void

    :catchall_0
    move-exception v0

    .line 97
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzkw;->zzaze:Lcom/google/android/gms/internal/ads/zzit;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzit;->zzge()V

    .line 98
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzij;->zzakq:Lcom/google/android/gms/internal/ads/zzhr;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzkw;->zzaze:Lcom/google/android/gms/internal/ads/zzit;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzhr;->zzd(Lcom/google/android/gms/internal/ads/zzit;)V

    .line 99
    throw v0

    :catchall_1
    move-exception v0

    .line 101
    :try_start_2
    invoke-super {p0}, Lcom/google/android/gms/internal/ads/zzkw;->zzdx()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 102
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzkw;->zzaze:Lcom/google/android/gms/internal/ads/zzit;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzit;->zzge()V

    .line 103
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzij;->zzakq:Lcom/google/android/gms/internal/ads/zzhr;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzkw;->zzaze:Lcom/google/android/gms/internal/ads/zzit;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzhr;->zzd(Lcom/google/android/gms/internal/ads/zzit;)V

    .line 108
    throw v0

    :catchall_2
    move-exception v0

    .line 105
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzkw;->zzaze:Lcom/google/android/gms/internal/ads/zzit;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzit;->zzge()V

    .line 106
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzij;->zzakq:Lcom/google/android/gms/internal/ads/zzhr;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzkw;->zzaze:Lcom/google/android/gms/internal/ads/zzit;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzhr;->zzd(Lcom/google/android/gms/internal/ads/zzit;)V

    .line 107
    throw v0
.end method

.method protected final zze(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzgl;
        }
    .end annotation

    .line 74
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/ads/zzkw;->zze(Z)V

    .line 75
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzij;->zzakq:Lcom/google/android/gms/internal/ads/zzhr;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzkw;->zzaze:Lcom/google/android/gms/internal/ads/zzit;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzhr;->zzc(Lcom/google/android/gms/internal/ads/zzit;)V

    .line 76
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgj;->zzdy()Lcom/google/android/gms/internal/ads/zzhh;

    move-result-object p1

    iget p1, p1, Lcom/google/android/gms/internal/ads/zzhh;->zzagh:I

    if-eqz p1, :cond_0

    .line 78
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzij;->zzakr:Lcom/google/android/gms/internal/ads/zzhw;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzhw;->zzt(I)V

    return-void

    .line 79
    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzij;->zzakr:Lcom/google/android/gms/internal/ads/zzhw;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzhw;->zzfj()V

    return-void
.end method

.method public final zzeu()Z
    .locals 1

    .line 109
    invoke-super {p0}, Lcom/google/android/gms/internal/ads/zzkw;->zzeu()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzij;->zzakr:Lcom/google/android/gms/internal/ads/zzhw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhw;->zzeu()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final zzfi()Lcom/google/android/gms/internal/ads/zzhc;
    .locals 1

    .line 118
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzij;->zzakr:Lcom/google/android/gms/internal/ads/zzhw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhw;->zzfi()Lcom/google/android/gms/internal/ads/zzhc;

    move-result-object v0

    return-object v0
.end method

.method public final zzfp()J
    .locals 5

    .line 111
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzij;->zzakr:Lcom/google/android/gms/internal/ads/zzhw;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzij;->zzeu()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzhw;->zzj(Z)J

    move-result-wide v0

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    .line 113
    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzij;->zzakw:Z

    if-eqz v2, :cond_0

    goto :goto_0

    .line 114
    :cond_0
    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzij;->zzakv:J

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    :goto_0
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzij;->zzakv:J

    const/4 v0, 0x0

    .line 115
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzij;->zzakw:Z

    .line 116
    :cond_1
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzij;->zzakv:J

    return-wide v0
.end method

.method protected final zzfu()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzgl;
        }
    .end annotation

    .line 134
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzij;->zzakr:Lcom/google/android/gms/internal/ads/zzhw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhw;->zzff()V
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzie; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 136
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgj;->getIndex()I

    move-result v1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzgl;->zza(Ljava/lang/Exception;I)Lcom/google/android/gms/internal/ads/zzgl;

    move-result-object v0

    throw v0
.end method
