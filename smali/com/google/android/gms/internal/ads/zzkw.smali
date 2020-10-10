.class public abstract Lcom/google/android/gms/internal/ads/zzkw;
.super Lcom/google/android/gms/internal/ads/zzgj;
.source "com.google.android.gms:play-services-ads@@18.3.0"


# static fields
.field private static final zzaxu:[B


# instance fields
.field private zzafz:Lcom/google/android/gms/internal/ads/zzgw;

.field private zzajf:[Ljava/nio/ByteBuffer;

.field private final zzaxv:Lcom/google/android/gms/internal/ads/zzky;

.field private final zzaxw:Lcom/google/android/gms/internal/ads/zzja;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzja<",
            "Lcom/google/android/gms/internal/ads/zzjc;",
            ">;"
        }
    .end annotation
.end field

.field private final zzaxx:Z

.field private final zzaxy:Lcom/google/android/gms/internal/ads/zzis;

.field private final zzaxz:Lcom/google/android/gms/internal/ads/zzis;

.field private final zzaya:Lcom/google/android/gms/internal/ads/zzgy;

.field private final zzayb:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final zzayc:Landroid/media/MediaCodec$BufferInfo;

.field private zzayd:Lcom/google/android/gms/internal/ads/zziy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zziy<",
            "Lcom/google/android/gms/internal/ads/zzjc;",
            ">;"
        }
    .end annotation
.end field

.field private zzaye:Lcom/google/android/gms/internal/ads/zziy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zziy<",
            "Lcom/google/android/gms/internal/ads/zzjc;",
            ">;"
        }
    .end annotation
.end field

.field private zzayf:Landroid/media/MediaCodec;

.field private zzayg:Lcom/google/android/gms/internal/ads/zzkt;

.field private zzayh:Z

.field private zzayi:Z

.field private zzayj:Z

.field private zzayk:Z

.field private zzayl:Z

.field private zzaym:Z

.field private zzayn:Z

.field private zzayo:Z

.field private zzayp:Z

.field private zzayq:[Ljava/nio/ByteBuffer;

.field private zzayr:J

.field private zzays:I

.field private zzayt:I

.field private zzayu:Z

.field private zzayv:Z

.field private zzayw:I

.field private zzayx:I

.field private zzayy:Z

.field private zzayz:Z

.field private zzaza:Z

.field private zzazb:Z

.field private zzazc:Z

.field private zzazd:Z

.field protected zzaze:Lcom/google/android/gms/internal/ads/zzit;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "0000016742C00BDA259000000168CE0F13200000016588840DCE7118A0002FBF1C31C3275D78"

    .line 483
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzoq;->zzbo(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzkw;->zzaxu:[B

    return-void
.end method

.method public constructor <init>(ILcom/google/android/gms/internal/ads/zzky;Lcom/google/android/gms/internal/ads/zzja;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/google/android/gms/internal/ads/zzky;",
            "Lcom/google/android/gms/internal/ads/zzja<",
            "Lcom/google/android/gms/internal/ads/zzjc;",
            ">;Z)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzgj;-><init>(I)V

    .line 2
    sget p1, Lcom/google/android/gms/internal/ads/zzoq;->SDK_INT:I

    const/4 v0, 0x0

    const/16 v1, 0x10

    if-lt p1, v1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzoc;->checkState(Z)V

    .line 3
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzoc;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p2, Lcom/google/android/gms/internal/ads/zzky;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzkw;->zzaxv:Lcom/google/android/gms/internal/ads/zzky;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzkw;->zzaxw:Lcom/google/android/gms/internal/ads/zzja;

    .line 5
    iput-boolean p4, p0, Lcom/google/android/gms/internal/ads/zzkw;->zzaxx:Z

    .line 6
    new-instance p1, Lcom/google/android/gms/internal/ads/zzis;

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/ads/zzis;-><init>(I)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzkw;->zzaxy:Lcom/google/android/gms/internal/ads/zzis;

    .line 8
    new-instance p1, Lcom/google/android/gms/internal/ads/zzis;

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/ads/zzis;-><init>(I)V

    .line 9
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzkw;->zzaxz:Lcom/google/android/gms/internal/ads/zzis;

    .line 10
    new-instance p1, Lcom/google/android/gms/internal/ads/zzgy;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzgy;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzkw;->zzaya:Lcom/google/android/gms/internal/ads/zzgy;

    .line 11
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzkw;->zzayb:Ljava/util/List;

    .line 12
    new-instance p1, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {p1}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzkw;->zzayc:Landroid/media/MediaCodec$BufferInfo;

    .line 13
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzkw;->zzayw:I

    .line 14
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzkw;->zzayx:I

    return-void
.end method

.method private final zza(Lcom/google/android/gms/internal/ads/zzkv;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzgl;
        }
    .end annotation

    .line 100
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgj;->getIndex()I

    move-result v0

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzgl;->zza(Ljava/lang/Exception;I)Lcom/google/android/gms/internal/ads/zzgl;

    move-result-object p1

    throw p1
.end method

.method private final zzd(JJ)Z
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzgl;
        }
    .end annotation

    move-object/from16 v12, p0

    .line 405
    iget v0, v12, Lcom/google/android/gms/internal/ads/zzkw;->zzayt:I

    const/4 v13, -0x1

    const/4 v14, 0x1

    const/4 v15, 0x0

    if-gez v0, :cond_e

    .line 406
    iget-boolean v0, v12, Lcom/google/android/gms/internal/ads/zzkw;->zzaym:Z

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_1

    iget-boolean v0, v12, Lcom/google/android/gms/internal/ads/zzkw;->zzayz:Z

    if-eqz v0, :cond_1

    .line 407
    :try_start_0
    iget-object v0, v12, Lcom/google/android/gms/internal/ads/zzkw;->zzayf:Landroid/media/MediaCodec;

    iget-object v3, v12, Lcom/google/android/gms/internal/ads/zzkw;->zzayc:Landroid/media/MediaCodec$BufferInfo;

    .line 409
    invoke-virtual {v0, v3, v1, v2}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v0

    iput v0, v12, Lcom/google/android/gms/internal/ads/zzkw;->zzayt:I
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    .line 412
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzkw;->zzha()V

    .line 413
    iget-boolean v0, v12, Lcom/google/android/gms/internal/ads/zzkw;->zzazb:Z

    if-eqz v0, :cond_0

    .line 414
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzkw;->zzgy()V

    :cond_0
    return v15

    .line 416
    :cond_1
    iget-object v0, v12, Lcom/google/android/gms/internal/ads/zzkw;->zzayf:Landroid/media/MediaCodec;

    iget-object v3, v12, Lcom/google/android/gms/internal/ads/zzkw;->zzayc:Landroid/media/MediaCodec$BufferInfo;

    .line 418
    invoke-virtual {v0, v3, v1, v2}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v0

    iput v0, v12, Lcom/google/android/gms/internal/ads/zzkw;->zzayt:I

    .line 419
    :goto_0
    iget v0, v12, Lcom/google/android/gms/internal/ads/zzkw;->zzayt:I

    if-ltz v0, :cond_7

    .line 420
    iget-boolean v1, v12, Lcom/google/android/gms/internal/ads/zzkw;->zzayp:Z

    if-eqz v1, :cond_2

    .line 421
    iput-boolean v15, v12, Lcom/google/android/gms/internal/ads/zzkw;->zzayp:Z

    .line 422
    iget-object v1, v12, Lcom/google/android/gms/internal/ads/zzkw;->zzayf:Landroid/media/MediaCodec;

    invoke-virtual {v1, v0, v15}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 423
    iput v13, v12, Lcom/google/android/gms/internal/ads/zzkw;->zzayt:I

    return v14

    .line 425
    :cond_2
    iget-object v1, v12, Lcom/google/android/gms/internal/ads/zzkw;->zzayc:Landroid/media/MediaCodec$BufferInfo;

    iget v2, v1, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_3

    .line 426
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzkw;->zzha()V

    .line 427
    iput v13, v12, Lcom/google/android/gms/internal/ads/zzkw;->zzayt:I

    return v15

    .line 429
    :cond_3
    iget-object v2, v12, Lcom/google/android/gms/internal/ads/zzkw;->zzajf:[Ljava/nio/ByteBuffer;

    aget-object v0, v2, v0

    if-eqz v0, :cond_4

    .line 431
    iget v1, v1, Landroid/media/MediaCodec$BufferInfo;->offset:I

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 432
    iget-object v1, v12, Lcom/google/android/gms/internal/ads/zzkw;->zzayc:Landroid/media/MediaCodec$BufferInfo;

    iget v2, v1, Landroid/media/MediaCodec$BufferInfo;->offset:I

    iget v1, v1, Landroid/media/MediaCodec$BufferInfo;->size:I

    add-int/2addr v2, v1

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 433
    :cond_4
    iget-object v0, v12, Lcom/google/android/gms/internal/ads/zzkw;->zzayc:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v0, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    .line 434
    iget-object v2, v12, Lcom/google/android/gms/internal/ads/zzkw;->zzayb:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_6

    .line 436
    iget-object v4, v12, Lcom/google/android/gms/internal/ads/zzkw;->zzayb:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v6, v4, v0

    if-nez v6, :cond_5

    .line 437
    iget-object v0, v12, Lcom/google/android/gms/internal/ads/zzkw;->zzayb:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    const/4 v0, 0x1

    goto :goto_2

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_6
    const/4 v0, 0x0

    .line 441
    :goto_2
    iput-boolean v0, v12, Lcom/google/android/gms/internal/ads/zzkw;->zzayu:Z

    goto :goto_4

    :cond_7
    const/4 v1, -0x2

    if-ne v0, v1, :cond_a

    .line 445
    iget-object v0, v12, Lcom/google/android/gms/internal/ads/zzkw;->zzayf:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v0

    .line 446
    iget-boolean v1, v12, Lcom/google/android/gms/internal/ads/zzkw;->zzayj:Z

    if-eqz v1, :cond_8

    const-string v1, "width"

    .line 447
    invoke-virtual {v0, v1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0x20

    if-ne v1, v2, :cond_8

    const-string v1, "height"

    .line 448
    invoke-virtual {v0, v1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v2, :cond_8

    .line 449
    iput-boolean v14, v12, Lcom/google/android/gms/internal/ads/zzkw;->zzayp:Z

    goto :goto_3

    .line 451
    :cond_8
    iget-boolean v1, v12, Lcom/google/android/gms/internal/ads/zzkw;->zzayn:Z

    if-eqz v1, :cond_9

    const-string v1, "channel-count"

    .line 452
    invoke-virtual {v0, v1, v14}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 453
    :cond_9
    iget-object v1, v12, Lcom/google/android/gms/internal/ads/zzkw;->zzayf:Landroid/media/MediaCodec;

    invoke-virtual {v12, v1, v0}, Lcom/google/android/gms/internal/ads/zzkw;->onOutputFormatChanged(Landroid/media/MediaCodec;Landroid/media/MediaFormat;)V

    :goto_3
    return v14

    :cond_a
    const/4 v1, -0x3

    if-ne v0, v1, :cond_b

    .line 457
    iget-object v0, v12, Lcom/google/android/gms/internal/ads/zzkw;->zzayf:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, v12, Lcom/google/android/gms/internal/ads/zzkw;->zzajf:[Ljava/nio/ByteBuffer;

    return v14

    .line 459
    :cond_b
    iget-boolean v0, v12, Lcom/google/android/gms/internal/ads/zzkw;->zzayk:Z

    if-eqz v0, :cond_d

    iget-boolean v0, v12, Lcom/google/android/gms/internal/ads/zzkw;->zzaza:Z

    if-nez v0, :cond_c

    iget v0, v12, Lcom/google/android/gms/internal/ads/zzkw;->zzayx:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_d

    .line 460
    :cond_c
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzkw;->zzha()V

    :cond_d
    return v15

    .line 462
    :cond_e
    :goto_4
    iget-boolean v0, v12, Lcom/google/android/gms/internal/ads/zzkw;->zzaym:Z

    if-eqz v0, :cond_10

    iget-boolean v0, v12, Lcom/google/android/gms/internal/ads/zzkw;->zzayz:Z

    if-eqz v0, :cond_10

    .line 463
    :try_start_1
    iget-object v5, v12, Lcom/google/android/gms/internal/ads/zzkw;->zzayf:Landroid/media/MediaCodec;

    iget-object v0, v12, Lcom/google/android/gms/internal/ads/zzkw;->zzajf:[Ljava/nio/ByteBuffer;

    iget v1, v12, Lcom/google/android/gms/internal/ads/zzkw;->zzayt:I

    aget-object v6, v0, v1

    iget v7, v12, Lcom/google/android/gms/internal/ads/zzkw;->zzayt:I

    iget-object v0, v12, Lcom/google/android/gms/internal/ads/zzkw;->zzayc:Landroid/media/MediaCodec$BufferInfo;

    iget v8, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    iget-object v0, v12, Lcom/google/android/gms/internal/ads/zzkw;->zzayc:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v9, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iget-boolean v11, v12, Lcom/google/android/gms/internal/ads/zzkw;->zzayu:Z

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-wide/from16 v3, p3

    invoke-virtual/range {v0 .. v11}, Lcom/google/android/gms/internal/ads/zzkw;->zza(JJLandroid/media/MediaCodec;Ljava/nio/ByteBuffer;IIJZ)Z

    move-result v0
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_5

    :catch_1
    nop

    .line 466
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzkw;->zzha()V

    .line 467
    iget-boolean v0, v12, Lcom/google/android/gms/internal/ads/zzkw;->zzazb:Z

    if-eqz v0, :cond_f

    .line 468
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzkw;->zzgy()V

    :cond_f
    return v15

    .line 470
    :cond_10
    iget-object v5, v12, Lcom/google/android/gms/internal/ads/zzkw;->zzayf:Landroid/media/MediaCodec;

    iget-object v0, v12, Lcom/google/android/gms/internal/ads/zzkw;->zzajf:[Ljava/nio/ByteBuffer;

    iget v7, v12, Lcom/google/android/gms/internal/ads/zzkw;->zzayt:I

    aget-object v6, v0, v7

    iget-object v0, v12, Lcom/google/android/gms/internal/ads/zzkw;->zzayc:Landroid/media/MediaCodec$BufferInfo;

    iget v8, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    iget-wide v9, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iget-boolean v11, v12, Lcom/google/android/gms/internal/ads/zzkw;->zzayu:Z

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-wide/from16 v3, p3

    invoke-virtual/range {v0 .. v11}, Lcom/google/android/gms/internal/ads/zzkw;->zza(JJLandroid/media/MediaCodec;Ljava/nio/ByteBuffer;IIJZ)Z

    move-result v0

    :goto_5
    if-eqz v0, :cond_11

    .line 472
    iget-object v0, v12, Lcom/google/android/gms/internal/ads/zzkw;->zzayc:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v0, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    .line 473
    iput v13, v12, Lcom/google/android/gms/internal/ads/zzkw;->zzayt:I

    return v14

    :cond_11
    return v15
.end method

.method private final zzgz()Z
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzgl;
        }
    .end annotation

    .line 269
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzkw;->zzayf:Landroid/media/MediaCodec;

    const/4 v1, 0x0

    if-eqz v0, :cond_1c

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzkw;->zzayx:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_1c

    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzkw;->zzaza:Z

    if-eqz v2, :cond_0

    goto/16 :goto_5

    .line 271
    :cond_0
    iget v2, p0, Lcom/google/android/gms/internal/ads/zzkw;->zzays:I

    if-gez v2, :cond_2

    const-wide/16 v4, 0x0

    .line 272
    invoke-virtual {v0, v4, v5}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzkw;->zzays:I

    .line 273
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzkw;->zzays:I

    if-gez v0, :cond_1

    return v1

    .line 275
    :cond_1
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzkw;->zzaxy:Lcom/google/android/gms/internal/ads/zzis;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzkw;->zzayq:[Ljava/nio/ByteBuffer;

    aget-object v0, v4, v0

    iput-object v0, v2, Lcom/google/android/gms/internal/ads/zzis;->zzcs:Ljava/nio/ByteBuffer;

    .line 276
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzis;->clear()V

    .line 277
    :cond_2
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzkw;->zzayx:I

    const/4 v2, -0x1

    const/4 v4, 0x1

    if-ne v0, v4, :cond_4

    .line 278
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzkw;->zzayk:Z

    if-nez v0, :cond_3

    .line 279
    iput-boolean v4, p0, Lcom/google/android/gms/internal/ads/zzkw;->zzayz:Z

    .line 280
    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzkw;->zzayf:Landroid/media/MediaCodec;

    iget v6, p0, Lcom/google/android/gms/internal/ads/zzkw;->zzays:I

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-wide/16 v9, 0x0

    const/4 v11, 0x4

    invoke-virtual/range {v5 .. v11}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 281
    iput v2, p0, Lcom/google/android/gms/internal/ads/zzkw;->zzays:I

    .line 282
    :cond_3
    iput v3, p0, Lcom/google/android/gms/internal/ads/zzkw;->zzayx:I

    return v1

    .line 284
    :cond_4
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzkw;->zzayo:Z

    if-eqz v0, :cond_5

    .line 285
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzkw;->zzayo:Z

    .line 286
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzkw;->zzaxy:Lcom/google/android/gms/internal/ads/zzis;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzis;->zzcs:Ljava/nio/ByteBuffer;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzkw;->zzaxu:[B

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 287
    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzkw;->zzayf:Landroid/media/MediaCodec;

    iget v6, p0, Lcom/google/android/gms/internal/ads/zzkw;->zzays:I

    const/4 v7, 0x0

    sget-object v0, Lcom/google/android/gms/internal/ads/zzkw;->zzaxu:[B

    array-length v8, v0

    const-wide/16 v9, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v5 .. v11}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 288
    iput v2, p0, Lcom/google/android/gms/internal/ads/zzkw;->zzays:I

    .line 289
    iput-boolean v4, p0, Lcom/google/android/gms/internal/ads/zzkw;->zzayy:Z

    return v4

    .line 292
    :cond_5
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzkw;->zzazc:Z

    if-eqz v0, :cond_6

    const/4 v0, -0x4

    const/4 v5, 0x0

    goto :goto_1

    .line 294
    :cond_6
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzkw;->zzayw:I

    if-ne v0, v4, :cond_8

    const/4 v0, 0x0

    .line 295
    :goto_0
    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzkw;->zzafz:Lcom/google/android/gms/internal/ads/zzgw;

    iget-object v5, v5, Lcom/google/android/gms/internal/ads/zzgw;->zzafg:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v0, v5, :cond_7

    .line 296
    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzkw;->zzafz:Lcom/google/android/gms/internal/ads/zzgw;

    iget-object v5, v5, Lcom/google/android/gms/internal/ads/zzgw;->zzafg:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    .line 297
    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzkw;->zzaxy:Lcom/google/android/gms/internal/ads/zzis;

    iget-object v6, v6, Lcom/google/android/gms/internal/ads/zzis;->zzcs:Ljava/nio/ByteBuffer;

    invoke-virtual {v6, v5}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 299
    :cond_7
    iput v3, p0, Lcom/google/android/gms/internal/ads/zzkw;->zzayw:I

    .line 300
    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzkw;->zzaxy:Lcom/google/android/gms/internal/ads/zzis;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzis;->zzcs:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .line 301
    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzkw;->zzaya:Lcom/google/android/gms/internal/ads/zzgy;

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzkw;->zzaxy:Lcom/google/android/gms/internal/ads/zzis;

    invoke-virtual {p0, v5, v6, v1}, Lcom/google/android/gms/internal/ads/zzgj;->zza(Lcom/google/android/gms/internal/ads/zzgy;Lcom/google/android/gms/internal/ads/zzis;Z)I

    move-result v5

    move v13, v5

    move v5, v0

    move v0, v13

    :goto_1
    const/4 v6, -0x3

    if-ne v0, v6, :cond_9

    return v1

    :cond_9
    const/4 v6, -0x5

    if-ne v0, v6, :cond_b

    .line 305
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzkw;->zzayw:I

    if-ne v0, v3, :cond_a

    .line 306
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzkw;->zzaxy:Lcom/google/android/gms/internal/ads/zzis;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzis;->clear()V

    .line 307
    iput v4, p0, Lcom/google/android/gms/internal/ads/zzkw;->zzayw:I

    .line 308
    :cond_a
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzkw;->zzaya:Lcom/google/android/gms/internal/ads/zzgy;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzgy;->zzafz:Lcom/google/android/gms/internal/ads/zzgw;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzkw;->zzd(Lcom/google/android/gms/internal/ads/zzgw;)V

    return v4

    .line 310
    :cond_b
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzkw;->zzaxy:Lcom/google/android/gms/internal/ads/zzis;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzip;->zzgb()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 311
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzkw;->zzayw:I

    if-ne v0, v3, :cond_c

    .line 312
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzkw;->zzaxy:Lcom/google/android/gms/internal/ads/zzis;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzis;->clear()V

    .line 313
    iput v4, p0, Lcom/google/android/gms/internal/ads/zzkw;->zzayw:I

    .line 314
    :cond_c
    iput-boolean v4, p0, Lcom/google/android/gms/internal/ads/zzkw;->zzaza:Z

    .line 315
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzkw;->zzayy:Z

    if-nez v0, :cond_d

    .line 316
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzkw;->zzha()V

    return v1

    .line 318
    :cond_d
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzkw;->zzayk:Z

    if-nez v0, :cond_e

    .line 319
    iput-boolean v4, p0, Lcom/google/android/gms/internal/ads/zzkw;->zzayz:Z

    .line 320
    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzkw;->zzayf:Landroid/media/MediaCodec;

    iget v6, p0, Lcom/google/android/gms/internal/ads/zzkw;->zzays:I

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-wide/16 v9, 0x0

    const/4 v11, 0x4

    invoke-virtual/range {v5 .. v11}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 321
    iput v2, p0, Lcom/google/android/gms/internal/ads/zzkw;->zzays:I
    :try_end_0
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_e
    return v1

    :catch_0
    move-exception v0

    .line 323
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgj;->getIndex()I

    move-result v1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzgl;->zza(Ljava/lang/Exception;I)Lcom/google/android/gms/internal/ads/zzgl;

    move-result-object v0

    throw v0

    .line 325
    :cond_f
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzkw;->zzazd:Z

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzkw;->zzaxy:Lcom/google/android/gms/internal/ads/zzis;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzip;->zzgc()Z

    move-result v0

    if-nez v0, :cond_11

    .line 326
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzkw;->zzaxy:Lcom/google/android/gms/internal/ads/zzis;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzis;->clear()V

    .line 327
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzkw;->zzayw:I

    if-ne v0, v3, :cond_10

    .line 328
    iput v4, p0, Lcom/google/android/gms/internal/ads/zzkw;->zzayw:I

    :cond_10
    return v4

    .line 330
    :cond_11
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzkw;->zzazd:Z

    .line 331
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzkw;->zzaxy:Lcom/google/android/gms/internal/ads/zzis;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzis;->zzgd()Z

    move-result v0

    .line 333
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzkw;->zzayd:Lcom/google/android/gms/internal/ads/zziy;

    if-eqz v3, :cond_14

    .line 334
    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/zziy;->getState()I

    move-result v3

    if-eqz v3, :cond_13

    const/4 v6, 0x4

    if-eq v3, v6, :cond_14

    if-nez v0, :cond_12

    .line 337
    iget-boolean v3, p0, Lcom/google/android/gms/internal/ads/zzkw;->zzaxx:Z

    if-nez v3, :cond_14

    :cond_12
    const/4 v3, 0x1

    goto :goto_2

    .line 336
    :cond_13
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzkw;->zzayd:Lcom/google/android/gms/internal/ads/zziy;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zziy;->zzgg()Lcom/google/android/gms/internal/ads/zzix;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgj;->getIndex()I

    move-result v1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzgl;->zza(Ljava/lang/Exception;I)Lcom/google/android/gms/internal/ads/zzgl;

    move-result-object v0

    throw v0

    :cond_14
    const/4 v3, 0x0

    .line 338
    :goto_2
    iput-boolean v3, p0, Lcom/google/android/gms/internal/ads/zzkw;->zzazc:Z

    .line 339
    iget-boolean v3, p0, Lcom/google/android/gms/internal/ads/zzkw;->zzazc:Z

    if-eqz v3, :cond_15

    return v1

    .line 341
    :cond_15
    iget-boolean v3, p0, Lcom/google/android/gms/internal/ads/zzkw;->zzayh:Z

    if-eqz v3, :cond_17

    if-nez v0, :cond_17

    .line 342
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzkw;->zzaxy:Lcom/google/android/gms/internal/ads/zzis;

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzis;->zzcs:Ljava/nio/ByteBuffer;

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzoi;->zzk(Ljava/nio/ByteBuffer;)V

    .line 343
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzkw;->zzaxy:Lcom/google/android/gms/internal/ads/zzis;

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzis;->zzcs:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    if-nez v3, :cond_16

    return v4

    .line 345
    :cond_16
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzkw;->zzayh:Z

    .line 346
    :cond_17
    :try_start_1
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzkw;->zzaxy:Lcom/google/android/gms/internal/ads/zzis;

    iget-wide v10, v3, Lcom/google/android/gms/internal/ads/zzis;->zzamd:J

    .line 347
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzkw;->zzaxy:Lcom/google/android/gms/internal/ads/zzis;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzip;->zzga()Z

    move-result v3

    if-eqz v3, :cond_18

    .line 348
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzkw;->zzayb:Ljava/util/List;

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 349
    :cond_18
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzkw;->zzaxy:Lcom/google/android/gms/internal/ads/zzis;

    .line 350
    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzis;->zzcs:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 351
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzkw;->zzaxy:Lcom/google/android/gms/internal/ads/zzis;

    invoke-virtual {p0, v3}, Lcom/google/android/gms/internal/ads/zzkw;->zza(Lcom/google/android/gms/internal/ads/zzis;)V

    if-eqz v0, :cond_1b

    .line 353
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzkw;->zzaxy:Lcom/google/android/gms/internal/ads/zzis;

    .line 354
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzis;->zzamc:Lcom/google/android/gms/internal/ads/zzio;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzio;->zzfz()Landroid/media/MediaCodec$CryptoInfo;

    move-result-object v9

    if-nez v5, :cond_19

    goto :goto_3

    .line 357
    :cond_19
    iget-object v0, v9, Landroid/media/MediaCodec$CryptoInfo;->numBytesOfClearData:[I

    if-nez v0, :cond_1a

    .line 358
    new-array v0, v4, [I

    iput-object v0, v9, Landroid/media/MediaCodec$CryptoInfo;->numBytesOfClearData:[I

    .line 359
    :cond_1a
    iget-object v0, v9, Landroid/media/MediaCodec$CryptoInfo;->numBytesOfClearData:[I

    aget v3, v0, v1

    add-int/2addr v3, v5

    aput v3, v0, v1

    .line 362
    :goto_3
    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzkw;->zzayf:Landroid/media/MediaCodec;

    iget v7, p0, Lcom/google/android/gms/internal/ads/zzkw;->zzays:I

    const/4 v8, 0x0

    const/4 v12, 0x0

    invoke-virtual/range {v6 .. v12}, Landroid/media/MediaCodec;->queueSecureInputBuffer(IILandroid/media/MediaCodec$CryptoInfo;JI)V

    goto :goto_4

    .line 364
    :cond_1b
    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzkw;->zzayf:Landroid/media/MediaCodec;

    iget v7, p0, Lcom/google/android/gms/internal/ads/zzkw;->zzays:I

    const/4 v8, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzkw;->zzaxy:Lcom/google/android/gms/internal/ads/zzis;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzis;->zzcs:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v9

    const/4 v12, 0x0

    invoke-virtual/range {v6 .. v12}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 365
    :goto_4
    iput v2, p0, Lcom/google/android/gms/internal/ads/zzkw;->zzays:I

    .line 366
    iput-boolean v4, p0, Lcom/google/android/gms/internal/ads/zzkw;->zzayy:Z

    .line 367
    iput v1, p0, Lcom/google/android/gms/internal/ads/zzkw;->zzayw:I

    .line 368
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzkw;->zzaze:Lcom/google/android/gms/internal/ads/zzit;

    iget v1, v0, Lcom/google/android/gms/internal/ads/zzit;->zzamh:I

    add-int/2addr v1, v4

    iput v1, v0, Lcom/google/android/gms/internal/ads/zzit;->zzamh:I
    :try_end_1
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_1 .. :try_end_1} :catch_1

    return v4

    :catch_1
    move-exception v0

    .line 370
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgj;->getIndex()I

    move-result v1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzgl;->zza(Ljava/lang/Exception;I)Lcom/google/android/gms/internal/ads/zzgl;

    move-result-object v0

    throw v0

    :cond_1c
    :goto_5
    return v1
.end method

.method private final zzha()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzgl;
        }
    .end annotation

    .line 477
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzkw;->zzayx:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 478
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzkw;->zzgy()V

    .line 479
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzkw;->zzgv()V

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 480
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzkw;->zzazb:Z

    .line 481
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzkw;->zzfu()V

    return-void
.end method


# virtual methods
.method public isReady()Z
    .locals 5

    .line 402
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzkw;->zzafz:Lcom/google/android/gms/internal/ads/zzgw;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzkw;->zzazc:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgj;->zzdz()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzkw;->zzayt:I

    if-gez v0, :cond_0

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzkw;->zzayr:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    .line 403
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzkw;->zzayr:J

    cmp-long v4, v0, v2

    if-gez v4, :cond_1

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method protected abstract onOutputFormatChanged(Landroid/media/MediaCodec;Landroid/media/MediaFormat;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzgl;
        }
    .end annotation
.end method

.method protected onStarted()V
    .locals 0

    return-void
.end method

.method protected onStopped()V
    .locals 0

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzgw;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzgl;
        }
    .end annotation

    .line 17
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzkw;->zzaxv:Lcom/google/android/gms/internal/ads/zzky;

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/ads/zzkw;->zza(Lcom/google/android/gms/internal/ads/zzky;Lcom/google/android/gms/internal/ads/zzgw;)I

    move-result p1
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzlb; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 18
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgj;->getIndex()I

    move-result v0

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzgl;->zza(Ljava/lang/Exception;I)Lcom/google/android/gms/internal/ads/zzgl;

    move-result-object p1

    throw p1
.end method

.method protected abstract zza(Lcom/google/android/gms/internal/ads/zzky;Lcom/google/android/gms/internal/ads/zzgw;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzlb;
        }
    .end annotation
.end method

.method protected zza(Lcom/google/android/gms/internal/ads/zzky;Lcom/google/android/gms/internal/ads/zzgw;Z)Lcom/google/android/gms/internal/ads/zzkt;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzlb;
        }
    .end annotation

    .line 19
    iget-object p2, p2, Lcom/google/android/gms/internal/ads/zzgw;->zzafe:Ljava/lang/String;

    invoke-interface {p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzky;->zzb(Ljava/lang/String;Z)Lcom/google/android/gms/internal/ads/zzkt;

    move-result-object p1

    return-object p1
.end method

.method protected zza(JZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzgl;
        }
    .end annotation

    const/4 p1, 0x0

    .line 106
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzkw;->zzaza:Z

    .line 107
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzkw;->zzazb:Z

    .line 108
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzkw;->zzayf:Landroid/media/MediaCodec;

    if-eqz p2, :cond_3

    const-wide p2, -0x7fffffffffffffffL    # -4.9E-324

    .line 110
    iput-wide p2, p0, Lcom/google/android/gms/internal/ads/zzkw;->zzayr:J

    const/4 p2, -0x1

    .line 111
    iput p2, p0, Lcom/google/android/gms/internal/ads/zzkw;->zzays:I

    .line 112
    iput p2, p0, Lcom/google/android/gms/internal/ads/zzkw;->zzayt:I

    const/4 p2, 0x1

    .line 113
    iput-boolean p2, p0, Lcom/google/android/gms/internal/ads/zzkw;->zzazd:Z

    .line 114
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzkw;->zzazc:Z

    .line 115
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzkw;->zzayu:Z

    .line 116
    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzkw;->zzayb:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->clear()V

    .line 117
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzkw;->zzayo:Z

    .line 118
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzkw;->zzayp:Z

    .line 119
    iget-boolean p3, p0, Lcom/google/android/gms/internal/ads/zzkw;->zzayi:Z

    if-nez p3, :cond_2

    iget-boolean p3, p0, Lcom/google/android/gms/internal/ads/zzkw;->zzayl:Z

    if-eqz p3, :cond_0

    iget-boolean p3, p0, Lcom/google/android/gms/internal/ads/zzkw;->zzayz:Z

    if-eqz p3, :cond_0

    goto :goto_0

    .line 122
    :cond_0
    iget p3, p0, Lcom/google/android/gms/internal/ads/zzkw;->zzayx:I

    if-eqz p3, :cond_1

    .line 123
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzkw;->zzgy()V

    .line 124
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzkw;->zzgv()V

    goto :goto_1

    .line 125
    :cond_1
    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzkw;->zzayf:Landroid/media/MediaCodec;

    invoke-virtual {p3}, Landroid/media/MediaCodec;->flush()V

    .line 126
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzkw;->zzayy:Z

    goto :goto_1

    .line 120
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzkw;->zzgy()V

    .line 121
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzkw;->zzgv()V

    .line 127
    :goto_1
    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzkw;->zzayv:Z

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzkw;->zzafz:Lcom/google/android/gms/internal/ads/zzgw;

    if-eqz p1, :cond_3

    .line 128
    iput p2, p0, Lcom/google/android/gms/internal/ads/zzkw;->zzayw:I

    :cond_3
    return-void
.end method

.method protected zza(Lcom/google/android/gms/internal/ads/zzis;)V
    .locals 0

    return-void
.end method

.method protected abstract zza(Lcom/google/android/gms/internal/ads/zzkt;Landroid/media/MediaCodec;Lcom/google/android/gms/internal/ads/zzgw;Landroid/media/MediaCrypto;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzlb;
        }
    .end annotation
.end method

.method protected abstract zza(JJLandroid/media/MediaCodec;Ljava/nio/ByteBuffer;IIJZ)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzgl;
        }
    .end annotation
.end method

.method protected zza(Landroid/media/MediaCodec;ZLcom/google/android/gms/internal/ads/zzgw;Lcom/google/android/gms/internal/ads/zzgw;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method protected zza(Lcom/google/android/gms/internal/ads/zzkt;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public final zzb(JJ)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzgl;
        }
    .end annotation

    .line 238
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzkw;->zzazb:Z

    if-eqz v0, :cond_0

    .line 239
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzkw;->zzfu()V

    return-void

    .line 241
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzkw;->zzafz:Lcom/google/android/gms/internal/ads/zzgw;

    const/4 v1, -0x4

    const/4 v2, -0x5

    const/4 v3, 0x1

    if-nez v0, :cond_3

    .line 242
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzkw;->zzaxz:Lcom/google/android/gms/internal/ads/zzis;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzis;->clear()V

    .line 243
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzkw;->zzaya:Lcom/google/android/gms/internal/ads/zzgy;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzkw;->zzaxz:Lcom/google/android/gms/internal/ads/zzis;

    invoke-virtual {p0, v0, v4, v3}, Lcom/google/android/gms/internal/ads/zzgj;->zza(Lcom/google/android/gms/internal/ads/zzgy;Lcom/google/android/gms/internal/ads/zzis;Z)I

    move-result v0

    if-ne v0, v2, :cond_1

    .line 245
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzkw;->zzaya:Lcom/google/android/gms/internal/ads/zzgy;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzgy;->zzafz:Lcom/google/android/gms/internal/ads/zzgw;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzkw;->zzd(Lcom/google/android/gms/internal/ads/zzgw;)V

    goto :goto_0

    :cond_1
    if-ne v0, v1, :cond_2

    .line 247
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzkw;->zzaxz:Lcom/google/android/gms/internal/ads/zzis;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzip;->zzgb()Z

    move-result p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzoc;->checkState(Z)V

    .line 248
    iput-boolean v3, p0, Lcom/google/android/gms/internal/ads/zzkw;->zzaza:Z

    .line 249
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzkw;->zzha()V

    :cond_2
    return-void

    .line 252
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzkw;->zzgv()V

    .line 253
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzkw;->zzayf:Landroid/media/MediaCodec;

    if-eqz v0, :cond_6

    const-string v0, "drainAndFeed"

    .line 254
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzon;->beginSection(Ljava/lang/String;)V

    .line 255
    :cond_4
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/ads/zzkw;->zzd(JJ)Z

    move-result v0

    if-nez v0, :cond_4

    .line 256
    :cond_5
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzkw;->zzgz()Z

    move-result p1

    if-nez p1, :cond_5

    .line 257
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzon;->endSection()V

    goto :goto_1

    .line 258
    :cond_6
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzgj;->zzdp(J)V

    .line 259
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzkw;->zzaxz:Lcom/google/android/gms/internal/ads/zzis;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzis;->clear()V

    .line 260
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzkw;->zzaya:Lcom/google/android/gms/internal/ads/zzgy;

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzkw;->zzaxz:Lcom/google/android/gms/internal/ads/zzis;

    const/4 p3, 0x0

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzgj;->zza(Lcom/google/android/gms/internal/ads/zzgy;Lcom/google/android/gms/internal/ads/zzis;Z)I

    move-result p1

    if-ne p1, v2, :cond_7

    .line 262
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzkw;->zzaya:Lcom/google/android/gms/internal/ads/zzgy;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzgy;->zzafz:Lcom/google/android/gms/internal/ads/zzgw;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzkw;->zzd(Lcom/google/android/gms/internal/ads/zzgw;)V

    goto :goto_1

    :cond_7
    if-ne p1, v1, :cond_8

    .line 264
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzkw;->zzaxz:Lcom/google/android/gms/internal/ads/zzis;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzip;->zzgb()Z

    move-result p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzoc;->checkState(Z)V

    .line 265
    iput-boolean v3, p0, Lcom/google/android/gms/internal/ads/zzkw;->zzaza:Z

    .line 266
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzkw;->zzha()V

    .line 267
    :cond_8
    :goto_1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzkw;->zzaze:Lcom/google/android/gms/internal/ads/zzit;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzit;->zzge()V

    return-void
.end method

.method protected abstract zzc(Ljava/lang/String;JJ)V
.end method

.method protected zzd(Lcom/google/android/gms/internal/ads/zzgw;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzgl;
        }
    .end annotation

    .line 373
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzkw;->zzafz:Lcom/google/android/gms/internal/ads/zzgw;

    .line 374
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzkw;->zzafz:Lcom/google/android/gms/internal/ads/zzgw;

    .line 375
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzkw;->zzafz:Lcom/google/android/gms/internal/ads/zzgw;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzgw;->zzafh:Lcom/google/android/gms/internal/ads/zziv;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v2, v1

    goto :goto_0

    .line 376
    :cond_0
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzgw;->zzafh:Lcom/google/android/gms/internal/ads/zziv;

    .line 377
    :goto_0
    invoke-static {p1, v2}, Lcom/google/android/gms/internal/ads/zzoq;->zza(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    const/4 v2, 0x1

    xor-int/2addr p1, v2

    if-eqz p1, :cond_3

    .line 379
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzkw;->zzafz:Lcom/google/android/gms/internal/ads/zzgw;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzgw;->zzafh:Lcom/google/android/gms/internal/ads/zziv;

    if-eqz p1, :cond_2

    .line 380
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzkw;->zzaxw:Lcom/google/android/gms/internal/ads/zzja;

    if-eqz p1, :cond_1

    .line 384
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzkw;->zzafz:Lcom/google/android/gms/internal/ads/zzgw;

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzgw;->zzafh:Lcom/google/android/gms/internal/ads/zziv;

    invoke-interface {p1, v1, v3}, Lcom/google/android/gms/internal/ads/zzja;->zza(Landroid/os/Looper;Lcom/google/android/gms/internal/ads/zziv;)Lcom/google/android/gms/internal/ads/zziy;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzkw;->zzaye:Lcom/google/android/gms/internal/ads/zziy;

    .line 385
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzkw;->zzaye:Lcom/google/android/gms/internal/ads/zziy;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzkw;->zzayd:Lcom/google/android/gms/internal/ads/zziy;

    if-ne p1, v1, :cond_3

    .line 386
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzkw;->zzaxw:Lcom/google/android/gms/internal/ads/zzja;

    invoke-interface {v1, p1}, Lcom/google/android/gms/internal/ads/zzja;->zza(Lcom/google/android/gms/internal/ads/zziy;)V

    goto :goto_1

    .line 381
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Media requires a DrmSessionManager"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 382
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgj;->getIndex()I

    move-result v0

    .line 383
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzgl;->zza(Ljava/lang/Exception;I)Lcom/google/android/gms/internal/ads/zzgl;

    move-result-object p1

    throw p1

    .line 387
    :cond_2
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzkw;->zzaye:Lcom/google/android/gms/internal/ads/zziy;

    .line 388
    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzkw;->zzaye:Lcom/google/android/gms/internal/ads/zziy;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzkw;->zzayd:Lcom/google/android/gms/internal/ads/zziy;

    if-ne p1, v1, :cond_5

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzkw;->zzayf:Landroid/media/MediaCodec;

    if-eqz p1, :cond_5

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzkw;->zzayg:Lcom/google/android/gms/internal/ads/zzkt;

    iget-boolean v1, v1, Lcom/google/android/gms/internal/ads/zzkt;->zzaxn:Z

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzkw;->zzafz:Lcom/google/android/gms/internal/ads/zzgw;

    .line 389
    invoke-virtual {p0, p1, v1, v0, v3}, Lcom/google/android/gms/internal/ads/zzkw;->zza(Landroid/media/MediaCodec;ZLcom/google/android/gms/internal/ads/zzgw;Lcom/google/android/gms/internal/ads/zzgw;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 390
    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzkw;->zzayv:Z

    .line 391
    iput v2, p0, Lcom/google/android/gms/internal/ads/zzkw;->zzayw:I

    .line 392
    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzkw;->zzayj:Z

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzkw;->zzafz:Lcom/google/android/gms/internal/ads/zzgw;

    iget v1, p1, Lcom/google/android/gms/internal/ads/zzgw;->width:I

    iget v3, v0, Lcom/google/android/gms/internal/ads/zzgw;->width:I

    if-ne v1, v3, :cond_4

    iget p1, p1, Lcom/google/android/gms/internal/ads/zzgw;->height:I

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzgw;->height:I

    if-ne p1, v0, :cond_4

    goto :goto_2

    :cond_4
    const/4 v2, 0x0

    :goto_2
    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzkw;->zzayo:Z

    return-void

    .line 393
    :cond_5
    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzkw;->zzayy:Z

    if-eqz p1, :cond_6

    .line 394
    iput v2, p0, Lcom/google/android/gms/internal/ads/zzkw;->zzayx:I

    return-void

    .line 395
    :cond_6
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzkw;->zzgy()V

    .line 396
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzkw;->zzgv()V

    return-void
.end method

.method public final zzdw()I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method

.method protected zzdx()V
    .locals 4

    const/4 v0, 0x0

    .line 130
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzkw;->zzafz:Lcom/google/android/gms/internal/ads/zzgw;

    .line 131
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzkw;->zzgy()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 132
    :try_start_1
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzkw;->zzayd:Lcom/google/android/gms/internal/ads/zziy;

    if-eqz v1, :cond_0

    .line 133
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzkw;->zzaxw:Lcom/google/android/gms/internal/ads/zzja;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzkw;->zzayd:Lcom/google/android/gms/internal/ads/zziy;

    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/zzja;->zza(Lcom/google/android/gms/internal/ads/zziy;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 134
    :cond_0
    :try_start_2
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzkw;->zzaye:Lcom/google/android/gms/internal/ads/zziy;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzkw;->zzaye:Lcom/google/android/gms/internal/ads/zziy;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzkw;->zzayd:Lcom/google/android/gms/internal/ads/zziy;

    if-eq v1, v2, :cond_1

    .line 135
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzkw;->zzaxw:Lcom/google/android/gms/internal/ads/zzja;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzkw;->zzaye:Lcom/google/android/gms/internal/ads/zziy;

    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/zzja;->zza(Lcom/google/android/gms/internal/ads/zziy;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 136
    :cond_1
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzkw;->zzayd:Lcom/google/android/gms/internal/ads/zziy;

    .line 137
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzkw;->zzaye:Lcom/google/android/gms/internal/ads/zziy;

    return-void

    :catchall_0
    move-exception v1

    .line 139
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzkw;->zzayd:Lcom/google/android/gms/internal/ads/zziy;

    .line 140
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzkw;->zzaye:Lcom/google/android/gms/internal/ads/zziy;

    .line 141
    throw v1

    :catchall_1
    move-exception v1

    .line 143
    :try_start_3
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzkw;->zzaye:Lcom/google/android/gms/internal/ads/zziy;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzkw;->zzaye:Lcom/google/android/gms/internal/ads/zziy;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzkw;->zzayd:Lcom/google/android/gms/internal/ads/zziy;

    if-eq v2, v3, :cond_2

    .line 144
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzkw;->zzaxw:Lcom/google/android/gms/internal/ads/zzja;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzkw;->zzaye:Lcom/google/android/gms/internal/ads/zziy;

    invoke-interface {v2, v3}, Lcom/google/android/gms/internal/ads/zzja;->zza(Lcom/google/android/gms/internal/ads/zziy;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 145
    :cond_2
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzkw;->zzayd:Lcom/google/android/gms/internal/ads/zziy;

    .line 146
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzkw;->zzaye:Lcom/google/android/gms/internal/ads/zziy;

    .line 151
    throw v1

    :catchall_2
    move-exception v1

    .line 148
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzkw;->zzayd:Lcom/google/android/gms/internal/ads/zziy;

    .line 149
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzkw;->zzaye:Lcom/google/android/gms/internal/ads/zziy;

    .line 150
    throw v1

    :catchall_3
    move-exception v1

    .line 153
    :try_start_4
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzkw;->zzayd:Lcom/google/android/gms/internal/ads/zziy;

    if-eqz v2, :cond_3

    .line 154
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzkw;->zzaxw:Lcom/google/android/gms/internal/ads/zzja;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzkw;->zzayd:Lcom/google/android/gms/internal/ads/zziy;

    invoke-interface {v2, v3}, Lcom/google/android/gms/internal/ads/zzja;->zza(Lcom/google/android/gms/internal/ads/zziy;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_5

    .line 155
    :cond_3
    :try_start_5
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzkw;->zzaye:Lcom/google/android/gms/internal/ads/zziy;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzkw;->zzaye:Lcom/google/android/gms/internal/ads/zziy;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzkw;->zzayd:Lcom/google/android/gms/internal/ads/zziy;

    if-eq v2, v3, :cond_4

    .line 156
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzkw;->zzaxw:Lcom/google/android/gms/internal/ads/zzja;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzkw;->zzaye:Lcom/google/android/gms/internal/ads/zziy;

    invoke-interface {v2, v3}, Lcom/google/android/gms/internal/ads/zzja;->zza(Lcom/google/android/gms/internal/ads/zziy;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .line 157
    :cond_4
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzkw;->zzayd:Lcom/google/android/gms/internal/ads/zziy;

    .line 158
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzkw;->zzaye:Lcom/google/android/gms/internal/ads/zziy;

    .line 173
    throw v1

    :catchall_4
    move-exception v1

    .line 160
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzkw;->zzayd:Lcom/google/android/gms/internal/ads/zziy;

    .line 161
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzkw;->zzaye:Lcom/google/android/gms/internal/ads/zziy;

    .line 162
    throw v1

    :catchall_5
    move-exception v1

    .line 164
    :try_start_6
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzkw;->zzaye:Lcom/google/android/gms/internal/ads/zziy;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzkw;->zzaye:Lcom/google/android/gms/internal/ads/zziy;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzkw;->zzayd:Lcom/google/android/gms/internal/ads/zziy;

    if-eq v2, v3, :cond_5

    .line 165
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzkw;->zzaxw:Lcom/google/android/gms/internal/ads/zzja;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzkw;->zzaye:Lcom/google/android/gms/internal/ads/zziy;

    invoke-interface {v2, v3}, Lcom/google/android/gms/internal/ads/zzja;->zza(Lcom/google/android/gms/internal/ads/zziy;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    .line 166
    :cond_5
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzkw;->zzayd:Lcom/google/android/gms/internal/ads/zziy;

    .line 167
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzkw;->zzaye:Lcom/google/android/gms/internal/ads/zziy;

    .line 172
    throw v1

    :catchall_6
    move-exception v1

    .line 169
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzkw;->zzayd:Lcom/google/android/gms/internal/ads/zziy;

    .line 170
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzkw;->zzaye:Lcom/google/android/gms/internal/ads/zziy;

    .line 171
    throw v1
.end method

.method protected zze(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzgl;
        }
    .end annotation

    .line 104
    new-instance p1, Lcom/google/android/gms/internal/ads/zzit;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzit;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzkw;->zzaze:Lcom/google/android/gms/internal/ads/zzit;

    return-void
.end method

.method public zzeu()Z
    .locals 1

    .line 401
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzkw;->zzazb:Z

    return v0
.end method

.method protected zzfu()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzgl;
        }
    .end annotation

    return-void
.end method

.method protected final zzgv()V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzgl;
        }
    .end annotation

    .line 20
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzkw;->zzayf:Landroid/media/MediaCodec;

    if-nez v0, :cond_17

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzkw;->zzafz:Lcom/google/android/gms/internal/ads/zzgw;

    if-nez v0, :cond_0

    goto/16 :goto_b

    .line 22
    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzkw;->zzaye:Lcom/google/android/gms/internal/ads/zziy;

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzkw;->zzayd:Lcom/google/android/gms/internal/ads/zziy;

    .line 23
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzgw;->zzafe:Ljava/lang/String;

    .line 24
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzkw;->zzayd:Lcom/google/android/gms/internal/ads/zziy;

    if-eqz v1, :cond_3

    .line 25
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zziy;->getState()I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    return-void

    .line 29
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzkw;->zzayd:Lcom/google/android/gms/internal/ads/zziy;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zziy;->zzgf()Lcom/google/android/gms/internal/ads/zziz;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzjc;

    .line 30
    new-instance v0, Ljava/lang/NoSuchMethodError;

    invoke-direct {v0}, Ljava/lang/NoSuchMethodError;-><init>()V

    throw v0

    .line 27
    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzkw;->zzayd:Lcom/google/android/gms/internal/ads/zziy;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zziy;->zzgg()Lcom/google/android/gms/internal/ads/zzix;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgj;->getIndex()I

    move-result v1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzgl;->zza(Ljava/lang/Exception;I)Lcom/google/android/gms/internal/ads/zzgl;

    move-result-object v0

    throw v0

    .line 32
    :cond_3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzkw;->zzayg:Lcom/google/android/gms/internal/ads/zzkt;

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-nez v1, :cond_5

    .line 33
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzkw;->zzaxv:Lcom/google/android/gms/internal/ads/zzky;

    invoke-virtual {p0, v1, v0, v3}, Lcom/google/android/gms/internal/ads/zzkw;->zza(Lcom/google/android/gms/internal/ads/zzky;Lcom/google/android/gms/internal/ads/zzgw;Z)Lcom/google/android/gms/internal/ads/zzkt;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzkw;->zzayg:Lcom/google/android/gms/internal/ads/zzkt;

    .line 34
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzkw;->zzayg:Lcom/google/android/gms/internal/ads/zzkt;
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzlb; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzkw;->zzayg:Lcom/google/android/gms/internal/ads/zzkt;

    if-eqz v0, :cond_4

    goto :goto_0

    .line 39
    :cond_4
    new-instance v0, Lcom/google/android/gms/internal/ads/zzkv;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzkw;->zzafz:Lcom/google/android/gms/internal/ads/zzgw;

    const v4, -0xc34f

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzkv;-><init>(Lcom/google/android/gms/internal/ads/zzgw;Ljava/lang/Throwable;ZI)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzkw;->zza(Lcom/google/android/gms/internal/ads/zzkv;)V

    throw v2

    :catch_0
    move-exception v0

    .line 37
    new-instance v1, Lcom/google/android/gms/internal/ads/zzkv;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzkw;->zzafz:Lcom/google/android/gms/internal/ads/zzgw;

    const v5, -0xc34e

    invoke-direct {v1, v4, v0, v3, v5}, Lcom/google/android/gms/internal/ads/zzkv;-><init>(Lcom/google/android/gms/internal/ads/zzgw;Ljava/lang/Throwable;ZI)V

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/zzkw;->zza(Lcom/google/android/gms/internal/ads/zzkv;)V

    throw v2

    .line 40
    :cond_5
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzkw;->zzayg:Lcom/google/android/gms/internal/ads/zzkt;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzkw;->zza(Lcom/google/android/gms/internal/ads/zzkt;)Z

    move-result v0

    if-nez v0, :cond_6

    return-void

    .line 42
    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzkw;->zzayg:Lcom/google/android/gms/internal/ads/zzkt;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzkt;->name:Ljava/lang/String;

    .line 43
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzkw;->zzafz:Lcom/google/android/gms/internal/ads/zzgw;

    .line 44
    sget v4, Lcom/google/android/gms/internal/ads/zzoq;->SDK_INT:I

    const/16 v5, 0x15

    const/4 v10, 0x1

    if-ge v4, v5, :cond_7

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzgw;->zzafg:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_7

    const-string v1, "OMX.MTK.VIDEO.DECODER.AVC"

    .line 45
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    const/4 v1, 0x1

    goto :goto_1

    :cond_7
    const/4 v1, 0x0

    .line 46
    :goto_1
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzkw;->zzayh:Z

    .line 48
    sget v1, Lcom/google/android/gms/internal/ads/zzoq;->SDK_INT:I

    const/16 v4, 0x13

    const/16 v6, 0x12

    if-lt v1, v6, :cond_a

    if-ne v1, v6, :cond_8

    const-string v1, "OMX.SEC.avc.dec"

    .line 49
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    const-string v1, "OMX.SEC.avc.dec.secure"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    :cond_8
    sget v1, Lcom/google/android/gms/internal/ads/zzoq;->SDK_INT:I

    if-ne v1, v4, :cond_9

    sget-object v1, Lcom/google/android/gms/internal/ads/zzoq;->MODEL:Ljava/lang/String;

    const-string v7, "SM-G800"

    .line 50
    invoke-virtual {v1, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    const-string v1, "OMX.Exynos.avc.dec"

    .line 51
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    const-string v1, "OMX.Exynos.avc.dec.secure"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    goto :goto_2

    :cond_9
    const/4 v1, 0x0

    goto :goto_3

    :cond_a
    :goto_2
    const/4 v1, 0x1

    .line 52
    :goto_3
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzkw;->zzayi:Z

    .line 54
    sget v1, Lcom/google/android/gms/internal/ads/zzoq;->SDK_INT:I

    const/16 v7, 0x18

    if-ge v1, v7, :cond_d

    const-string v1, "OMX.Nvidia.h264.decode"

    .line 55
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    const-string v1, "OMX.Nvidia.h264.decode.secure"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    :cond_b
    sget-object v1, Lcom/google/android/gms/internal/ads/zzoq;->DEVICE:Ljava/lang/String;

    const-string v7, "flounder"

    .line 56
    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    sget-object v1, Lcom/google/android/gms/internal/ads/zzoq;->DEVICE:Ljava/lang/String;

    const-string v7, "flounder_lte"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    sget-object v1, Lcom/google/android/gms/internal/ads/zzoq;->DEVICE:Ljava/lang/String;

    const-string v7, "grouper"

    .line 57
    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    sget-object v1, Lcom/google/android/gms/internal/ads/zzoq;->DEVICE:Ljava/lang/String;

    const-string v7, "tilapia"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    :cond_c
    const/4 v1, 0x1

    goto :goto_4

    :cond_d
    const/4 v1, 0x0

    .line 58
    :goto_4
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzkw;->zzayj:Z

    .line 60
    sget v1, Lcom/google/android/gms/internal/ads/zzoq;->SDK_INT:I

    const/16 v7, 0x11

    if-gt v1, v7, :cond_f

    const-string v1, "OMX.rk.video_decoder.avc"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    const-string v1, "OMX.allwinner.video.decoder.avc"

    .line 61
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    :cond_e
    const/4 v1, 0x1

    goto :goto_5

    :cond_f
    const/4 v1, 0x0

    .line 62
    :goto_5
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzkw;->zzayk:Z

    .line 64
    sget v1, Lcom/google/android/gms/internal/ads/zzoq;->SDK_INT:I

    const/16 v7, 0x17

    if-gt v1, v7, :cond_10

    const-string v1, "OMX.google.vorbis.decoder"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    :cond_10
    sget v1, Lcom/google/android/gms/internal/ads/zzoq;->SDK_INT:I

    if-gt v1, v4, :cond_12

    sget-object v1, Lcom/google/android/gms/internal/ads/zzoq;->DEVICE:Ljava/lang/String;

    const-string v4, "hb2000"

    .line 65
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    const-string v1, "OMX.amlogic.avc.decoder.awesome"

    .line 66
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    const-string v1, "OMX.amlogic.avc.decoder.awesome.secure"

    .line 67
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    :cond_11
    const/4 v1, 0x1

    goto :goto_6

    :cond_12
    const/4 v1, 0x0

    .line 68
    :goto_6
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzkw;->zzayl:Z

    .line 70
    sget v1, Lcom/google/android/gms/internal/ads/zzoq;->SDK_INT:I

    if-ne v1, v5, :cond_13

    const-string v1, "OMX.google.aac.decoder"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    const/4 v1, 0x1

    goto :goto_7

    :cond_13
    const/4 v1, 0x0

    .line 71
    :goto_7
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzkw;->zzaym:Z

    .line 72
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzkw;->zzafz:Lcom/google/android/gms/internal/ads/zzgw;

    .line 73
    sget v4, Lcom/google/android/gms/internal/ads/zzoq;->SDK_INT:I

    if-gt v4, v6, :cond_14

    iget v1, v1, Lcom/google/android/gms/internal/ads/zzgw;->zzafo:I

    if-ne v1, v10, :cond_14

    const-string v1, "OMX.MTK.AUDIO.DECODER.MP3"

    .line 74
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    const/4 v1, 0x1

    goto :goto_8

    :cond_14
    const/4 v1, 0x0

    .line 75
    :goto_8
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzkw;->zzayn:Z

    .line 76
    :try_start_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    const-string v1, "createCodec:"

    .line 77
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_15

    invoke-virtual {v1, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_9

    :cond_15
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v1, v6

    :goto_9
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzon;->beginSection(Ljava/lang/String;)V

    .line 78
    invoke-static {v0}, Landroid/media/MediaCodec;->createByCodecName(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzkw;->zzayf:Landroid/media/MediaCodec;

    .line 79
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzon;->endSection()V

    const-string v1, "configureCodec"

    .line 80
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzon;->beginSection(Ljava/lang/String;)V

    .line 81
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzkw;->zzayg:Lcom/google/android/gms/internal/ads/zzkt;

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzkw;->zzayf:Landroid/media/MediaCodec;

    iget-object v7, p0, Lcom/google/android/gms/internal/ads/zzkw;->zzafz:Lcom/google/android/gms/internal/ads/zzgw;

    invoke-virtual {p0, v1, v6, v7, v2}, Lcom/google/android/gms/internal/ads/zzkw;->zza(Lcom/google/android/gms/internal/ads/zzkt;Landroid/media/MediaCodec;Lcom/google/android/gms/internal/ads/zzgw;Landroid/media/MediaCrypto;)V

    .line 82
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzon;->endSection()V

    const-string v1, "startCodec"

    .line 83
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzon;->beginSection(Ljava/lang/String;)V

    .line 84
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzkw;->zzayf:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->start()V

    .line 85
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzon;->endSection()V

    .line 86
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long v8, v6, v4

    move-object v4, p0

    move-object v5, v0

    .line 87
    invoke-virtual/range {v4 .. v9}, Lcom/google/android/gms/internal/ads/zzkw;->zzc(Ljava/lang/String;JJ)V

    .line 88
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzkw;->zzayf:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->getInputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzkw;->zzayq:[Ljava/nio/ByteBuffer;

    .line 89
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzkw;->zzayf:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzkw;->zzajf:[Ljava/nio/ByteBuffer;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 93
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgj;->getState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_16

    .line 94
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    add-long/2addr v0, v2

    goto :goto_a

    :cond_16
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    :goto_a
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzkw;->zzayr:J

    const/4 v0, -0x1

    .line 95
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzkw;->zzays:I

    .line 96
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzkw;->zzayt:I

    .line 97
    iput-boolean v10, p0, Lcom/google/android/gms/internal/ads/zzkw;->zzazd:Z

    .line 98
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzkw;->zzaze:Lcom/google/android/gms/internal/ads/zzit;

    iget v1, v0, Lcom/google/android/gms/internal/ads/zzit;->zzamf:I

    add-int/2addr v1, v10

    iput v1, v0, Lcom/google/android/gms/internal/ads/zzit;->zzamf:I

    return-void

    :catch_1
    move-exception v1

    .line 92
    new-instance v4, Lcom/google/android/gms/internal/ads/zzkv;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzkw;->zzafz:Lcom/google/android/gms/internal/ads/zzgw;

    invoke-direct {v4, v5, v1, v3, v0}, Lcom/google/android/gms/internal/ads/zzkv;-><init>(Lcom/google/android/gms/internal/ads/zzgw;Ljava/lang/Throwable;ZLjava/lang/String;)V

    invoke-direct {p0, v4}, Lcom/google/android/gms/internal/ads/zzkw;->zza(Lcom/google/android/gms/internal/ads/zzkv;)V

    throw v2

    :cond_17
    :goto_b
    return-void
.end method

.method protected final zzgw()Landroid/media/MediaCodec;
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzkw;->zzayf:Landroid/media/MediaCodec;

    return-object v0
.end method

.method protected final zzgx()Lcom/google/android/gms/internal/ads/zzkt;
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzkw;->zzayg:Lcom/google/android/gms/internal/ads/zzkt;

    return-object v0
.end method

.method protected zzgy()V
    .locals 4

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 174
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzkw;->zzayr:J

    const/4 v0, -0x1

    .line 175
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzkw;->zzays:I

    .line 176
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzkw;->zzayt:I

    const/4 v0, 0x0

    .line 177
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzkw;->zzazc:Z

    .line 178
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzkw;->zzayu:Z

    .line 179
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzkw;->zzayb:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    const/4 v1, 0x0

    .line 180
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzkw;->zzayq:[Ljava/nio/ByteBuffer;

    .line 181
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzkw;->zzajf:[Ljava/nio/ByteBuffer;

    .line 182
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzkw;->zzayg:Lcom/google/android/gms/internal/ads/zzkt;

    .line 183
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzkw;->zzayv:Z

    .line 184
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzkw;->zzayy:Z

    .line 185
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzkw;->zzayh:Z

    .line 186
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzkw;->zzayi:Z

    .line 187
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzkw;->zzayj:Z

    .line 188
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzkw;->zzayk:Z

    .line 189
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzkw;->zzayl:Z

    .line 190
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzkw;->zzayn:Z

    .line 191
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzkw;->zzayo:Z

    .line 192
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzkw;->zzayp:Z

    .line 193
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzkw;->zzayz:Z

    .line 194
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzkw;->zzayw:I

    .line 195
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzkw;->zzayx:I

    .line 196
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzkw;->zzaxy:Lcom/google/android/gms/internal/ads/zzis;

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzis;->zzcs:Ljava/nio/ByteBuffer;

    .line 197
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzkw;->zzayf:Landroid/media/MediaCodec;

    if-eqz v0, :cond_4

    .line 198
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzkw;->zzaze:Lcom/google/android/gms/internal/ads/zzit;

    iget v3, v2, Lcom/google/android/gms/internal/ads/zzit;->zzamg:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Lcom/google/android/gms/internal/ads/zzit;->zzamg:I

    .line 199
    :try_start_0
    invoke-virtual {v0}, Landroid/media/MediaCodec;->stop()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 200
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzkw;->zzayf:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 201
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzkw;->zzayf:Landroid/media/MediaCodec;

    .line 202
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzkw;->zzayd:Lcom/google/android/gms/internal/ads/zziy;

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzkw;->zzaye:Lcom/google/android/gms/internal/ads/zziy;

    if-eq v2, v0, :cond_0

    .line 203
    :try_start_2
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzkw;->zzaxw:Lcom/google/android/gms/internal/ads/zzja;

    invoke-interface {v2, v0}, Lcom/google/android/gms/internal/ads/zzja;->zza(Lcom/google/android/gms/internal/ads/zziy;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 204
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzkw;->zzayd:Lcom/google/android/gms/internal/ads/zziy;

    return-void

    :catchall_0
    move-exception v0

    .line 206
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzkw;->zzayd:Lcom/google/android/gms/internal/ads/zziy;

    .line 207
    throw v0

    :cond_0
    return-void

    :catchall_1
    move-exception v0

    .line 208
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzkw;->zzayf:Landroid/media/MediaCodec;

    .line 209
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzkw;->zzayd:Lcom/google/android/gms/internal/ads/zziy;

    if-eqz v2, :cond_1

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzkw;->zzaye:Lcom/google/android/gms/internal/ads/zziy;

    if-eq v3, v2, :cond_1

    .line 210
    :try_start_3
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzkw;->zzaxw:Lcom/google/android/gms/internal/ads/zzja;

    invoke-interface {v3, v2}, Lcom/google/android/gms/internal/ads/zzja;->zza(Lcom/google/android/gms/internal/ads/zziy;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 211
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzkw;->zzayd:Lcom/google/android/gms/internal/ads/zziy;

    goto :goto_0

    :catchall_2
    move-exception v0

    .line 213
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzkw;->zzayd:Lcom/google/android/gms/internal/ads/zziy;

    .line 214
    throw v0

    .line 215
    :cond_1
    :goto_0
    throw v0

    :catchall_3
    move-exception v0

    .line 218
    :try_start_4
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzkw;->zzayf:Landroid/media/MediaCodec;

    invoke-virtual {v2}, Landroid/media/MediaCodec;->release()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_5

    .line 219
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzkw;->zzayf:Landroid/media/MediaCodec;

    .line 220
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzkw;->zzayd:Lcom/google/android/gms/internal/ads/zziy;

    if-eqz v2, :cond_2

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzkw;->zzaye:Lcom/google/android/gms/internal/ads/zziy;

    if-eq v3, v2, :cond_2

    .line 221
    :try_start_5
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzkw;->zzaxw:Lcom/google/android/gms/internal/ads/zzja;

    invoke-interface {v3, v2}, Lcom/google/android/gms/internal/ads/zzja;->zza(Lcom/google/android/gms/internal/ads/zziy;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .line 222
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzkw;->zzayd:Lcom/google/android/gms/internal/ads/zziy;

    goto :goto_1

    :catchall_4
    move-exception v0

    .line 224
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzkw;->zzayd:Lcom/google/android/gms/internal/ads/zziy;

    .line 225
    throw v0

    .line 234
    :cond_2
    :goto_1
    throw v0

    :catchall_5
    move-exception v0

    .line 226
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzkw;->zzayf:Landroid/media/MediaCodec;

    .line 227
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzkw;->zzayd:Lcom/google/android/gms/internal/ads/zziy;

    if-eqz v2, :cond_3

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzkw;->zzaye:Lcom/google/android/gms/internal/ads/zziy;

    if-eq v3, v2, :cond_3

    .line 228
    :try_start_6
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzkw;->zzaxw:Lcom/google/android/gms/internal/ads/zzja;

    invoke-interface {v3, v2}, Lcom/google/android/gms/internal/ads/zzja;->zza(Lcom/google/android/gms/internal/ads/zziy;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    .line 229
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzkw;->zzayd:Lcom/google/android/gms/internal/ads/zziy;

    goto :goto_2

    :catchall_6
    move-exception v0

    .line 231
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzkw;->zzayd:Lcom/google/android/gms/internal/ads/zziy;

    .line 232
    throw v0

    .line 233
    :cond_3
    :goto_2
    throw v0

    :cond_4
    return-void
.end method
