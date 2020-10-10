.class public final Lcom/google/android/gms/internal/ads/zzbws;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@18.3.0"


# instance fields
.field private extras:Landroid/os/Bundle;

.field private zzcvq:Lcom/google/android/gms/internal/ads/zzaca;

.field private zzcwf:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/ads/zzxy;",
            ">;"
        }
    .end annotation
.end field

.field private zzeim:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "*>;"
        }
    .end annotation
.end field

.field private zzeip:D

.field private zzejb:F

.field private zzffd:Lcom/google/android/gms/dynamic/IObjectWrapper;

.field private zzflz:I

.field private zzfma:Lcom/google/android/gms/internal/ads/zzxb;

.field private zzfmb:Landroid/view/View;

.field private zzfmc:Lcom/google/android/gms/internal/ads/zzxy;

.field private zzfmd:Lcom/google/android/gms/internal/ads/zzbdi;

.field private zzfme:Lcom/google/android/gms/internal/ads/zzbdi;

.field private zzfmf:Landroid/view/View;

.field private zzfmg:Lcom/google/android/gms/dynamic/IObjectWrapper;

.field private zzfmh:Lcom/google/android/gms/internal/ads/zzaci;

.field private zzfmi:Lcom/google/android/gms/internal/ads/zzaci;

.field private zzfmj:Ljava/lang/String;

.field private zzfmk:Landroidx/collection/SimpleArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/SimpleArrayMap<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/zzabu;",
            ">;"
        }
    .end annotation
.end field

.field private zzfml:Landroidx/collection/SimpleArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/SimpleArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private zzfmm:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroidx/collection/SimpleArrayMap;

    invoke-direct {v0}, Landroidx/collection/SimpleArrayMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbws;->zzfmk:Landroidx/collection/SimpleArrayMap;

    .line 3
    new-instance v0, Landroidx/collection/SimpleArrayMap;

    invoke-direct {v0}, Landroidx/collection/SimpleArrayMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbws;->zzfml:Landroidx/collection/SimpleArrayMap;

    .line 4
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbws;->zzcwf:Ljava/util/List;

    return-void
.end method

.method private final declared-synchronized setMediaContentAspectRatio(F)V
    .locals 0

    monitor-enter p0

    .line 42
    :try_start_0
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzbws;->zzejb:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public static zza(Lcom/google/android/gms/internal/ads/zzall;)Lcom/google/android/gms/internal/ads/zzbws;
    .locals 16

    .line 134
    :try_start_0
    invoke-interface/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzall;->getVideoController()Lcom/google/android/gms/internal/ads/zzxb;

    move-result-object v0

    .line 135
    invoke-interface/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzall;->zzrh()Lcom/google/android/gms/internal/ads/zzaca;

    move-result-object v1

    .line 136
    invoke-interface/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzall;->zzsu()Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzbws;->zzar(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 137
    invoke-interface/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzall;->getHeadline()Ljava/lang/String;

    move-result-object v3

    .line 138
    invoke-interface/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzall;->getImages()Ljava/util/List;

    move-result-object v4

    .line 139
    invoke-interface/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzall;->getBody()Ljava/lang/String;

    move-result-object v5

    .line 140
    invoke-interface/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzall;->getExtras()Landroid/os/Bundle;

    move-result-object v6

    .line 141
    invoke-interface/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzall;->getCallToAction()Ljava/lang/String;

    move-result-object v7

    .line 142
    invoke-interface/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzall;->zzsv()Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v8

    invoke-static {v8}, Lcom/google/android/gms/internal/ads/zzbws;->zzar(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/View;

    .line 143
    invoke-interface/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzall;->zzri()Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v9

    .line 144
    invoke-interface/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzall;->getStore()Ljava/lang/String;

    move-result-object v10

    .line 145
    invoke-interface/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzall;->getPrice()Ljava/lang/String;

    move-result-object v11

    .line 146
    invoke-interface/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzall;->getStarRating()D

    move-result-wide v12

    .line 147
    invoke-interface/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzall;->zzrg()Lcom/google/android/gms/internal/ads/zzaci;

    move-result-object v14

    .line 149
    new-instance v15, Lcom/google/android/gms/internal/ads/zzbws;

    invoke-direct {v15}, Lcom/google/android/gms/internal/ads/zzbws;-><init>()V

    move-object/from16 p0, v14

    const/4 v14, 0x2

    .line 150
    iput v14, v15, Lcom/google/android/gms/internal/ads/zzbws;->zzflz:I

    .line 151
    iput-object v0, v15, Lcom/google/android/gms/internal/ads/zzbws;->zzfma:Lcom/google/android/gms/internal/ads/zzxb;

    .line 152
    iput-object v1, v15, Lcom/google/android/gms/internal/ads/zzbws;->zzcvq:Lcom/google/android/gms/internal/ads/zzaca;

    .line 153
    iput-object v2, v15, Lcom/google/android/gms/internal/ads/zzbws;->zzfmb:Landroid/view/View;

    const-string v0, "headline"

    .line 154
    invoke-virtual {v15, v0, v3}, Lcom/google/android/gms/internal/ads/zzbws;->zzn(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    iput-object v4, v15, Lcom/google/android/gms/internal/ads/zzbws;->zzeim:Ljava/util/List;

    const-string v0, "body"

    .line 156
    invoke-virtual {v15, v0, v5}, Lcom/google/android/gms/internal/ads/zzbws;->zzn(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    iput-object v6, v15, Lcom/google/android/gms/internal/ads/zzbws;->extras:Landroid/os/Bundle;

    const-string v0, "call_to_action"

    .line 158
    invoke-virtual {v15, v0, v7}, Lcom/google/android/gms/internal/ads/zzbws;->zzn(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    iput-object v8, v15, Lcom/google/android/gms/internal/ads/zzbws;->zzfmf:Landroid/view/View;

    .line 160
    iput-object v9, v15, Lcom/google/android/gms/internal/ads/zzbws;->zzfmg:Lcom/google/android/gms/dynamic/IObjectWrapper;

    const-string v0, "store"

    .line 161
    invoke-virtual {v15, v0, v10}, Lcom/google/android/gms/internal/ads/zzbws;->zzn(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "price"

    .line 162
    invoke-virtual {v15, v0, v11}, Lcom/google/android/gms/internal/ads/zzbws;->zzn(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    iput-wide v12, v15, Lcom/google/android/gms/internal/ads/zzbws;->zzeip:D

    move-object/from16 v0, p0

    .line 164
    iput-object v0, v15, Lcom/google/android/gms/internal/ads/zzbws;->zzfmh:Lcom/google/android/gms/internal/ads/zzaci;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v15

    :catch_0
    move-exception v0

    const-string v1, "Failed to get native ad from app install ad mapper"

    .line 168
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzayu;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public static zza(Lcom/google/android/gms/internal/ads/zzalq;)Lcom/google/android/gms/internal/ads/zzbws;
    .locals 13

    .line 101
    :try_start_0
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzalq;->getVideoController()Lcom/google/android/gms/internal/ads/zzxb;

    move-result-object v0

    .line 102
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzalq;->zzrh()Lcom/google/android/gms/internal/ads/zzaca;

    move-result-object v1

    .line 103
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzalq;->zzsu()Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzbws;->zzar(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 104
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzalq;->getHeadline()Ljava/lang/String;

    move-result-object v3

    .line 105
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzalq;->getImages()Ljava/util/List;

    move-result-object v4

    .line 106
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzalq;->getBody()Ljava/lang/String;

    move-result-object v5

    .line 107
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzalq;->getExtras()Landroid/os/Bundle;

    move-result-object v6

    .line 108
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzalq;->getCallToAction()Ljava/lang/String;

    move-result-object v7

    .line 109
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzalq;->zzsv()Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v8

    invoke-static {v8}, Lcom/google/android/gms/internal/ads/zzbws;->zzar(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/View;

    .line 110
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzalq;->zzri()Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v9

    .line 111
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzalq;->getAdvertiser()Ljava/lang/String;

    move-result-object v10

    .line 112
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzalq;->zzrj()Lcom/google/android/gms/internal/ads/zzaci;

    move-result-object p0

    .line 114
    new-instance v11, Lcom/google/android/gms/internal/ads/zzbws;

    invoke-direct {v11}, Lcom/google/android/gms/internal/ads/zzbws;-><init>()V

    const/4 v12, 0x1

    .line 115
    iput v12, v11, Lcom/google/android/gms/internal/ads/zzbws;->zzflz:I

    .line 116
    iput-object v0, v11, Lcom/google/android/gms/internal/ads/zzbws;->zzfma:Lcom/google/android/gms/internal/ads/zzxb;

    .line 117
    iput-object v1, v11, Lcom/google/android/gms/internal/ads/zzbws;->zzcvq:Lcom/google/android/gms/internal/ads/zzaca;

    .line 118
    iput-object v2, v11, Lcom/google/android/gms/internal/ads/zzbws;->zzfmb:Landroid/view/View;

    const-string v0, "headline"

    .line 119
    invoke-virtual {v11, v0, v3}, Lcom/google/android/gms/internal/ads/zzbws;->zzn(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    iput-object v4, v11, Lcom/google/android/gms/internal/ads/zzbws;->zzeim:Ljava/util/List;

    const-string v0, "body"

    .line 121
    invoke-virtual {v11, v0, v5}, Lcom/google/android/gms/internal/ads/zzbws;->zzn(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    iput-object v6, v11, Lcom/google/android/gms/internal/ads/zzbws;->extras:Landroid/os/Bundle;

    const-string v0, "call_to_action"

    .line 123
    invoke-virtual {v11, v0, v7}, Lcom/google/android/gms/internal/ads/zzbws;->zzn(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    iput-object v8, v11, Lcom/google/android/gms/internal/ads/zzbws;->zzfmf:Landroid/view/View;

    .line 125
    iput-object v9, v11, Lcom/google/android/gms/internal/ads/zzbws;->zzfmg:Lcom/google/android/gms/dynamic/IObjectWrapper;

    const-string v0, "advertiser"

    .line 126
    invoke-virtual {v11, v0, v10}, Lcom/google/android/gms/internal/ads/zzbws;->zzn(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    iput-object p0, v11, Lcom/google/android/gms/internal/ads/zzbws;->zzfmi:Lcom/google/android/gms/internal/ads/zzaci;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v11

    :catch_0
    move-exception p0

    const-string v0, "Failed to get native ad from content ad mapper"

    .line 131
    invoke-static {v0, p0}, Lcom/google/android/gms/internal/ads/zzayu;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method private static zza(Lcom/google/android/gms/internal/ads/zzxb;Lcom/google/android/gms/internal/ads/zzaca;Landroid/view/View;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Landroid/view/View;Lcom/google/android/gms/dynamic/IObjectWrapper;Ljava/lang/String;Ljava/lang/String;DLcom/google/android/gms/internal/ads/zzaci;Ljava/lang/String;F)Lcom/google/android/gms/internal/ads/zzbws;
    .locals 3

    .line 227
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbws;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzbws;-><init>()V

    const/4 v1, 0x6

    .line 228
    iput v1, v0, Lcom/google/android/gms/internal/ads/zzbws;->zzflz:I

    move-object v1, p0

    .line 229
    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzbws;->zzfma:Lcom/google/android/gms/internal/ads/zzxb;

    move-object v1, p1

    .line 230
    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzbws;->zzcvq:Lcom/google/android/gms/internal/ads/zzaca;

    move-object v1, p2

    .line 231
    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzbws;->zzfmb:Landroid/view/View;

    const-string v1, "headline"

    move-object v2, p3

    .line 232
    invoke-virtual {v0, v1, p3}, Lcom/google/android/gms/internal/ads/zzbws;->zzn(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, p4

    .line 233
    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzbws;->zzeim:Ljava/util/List;

    const-string v1, "body"

    move-object v2, p5

    .line 234
    invoke-virtual {v0, v1, p5}, Lcom/google/android/gms/internal/ads/zzbws;->zzn(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, p6

    .line 235
    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzbws;->extras:Landroid/os/Bundle;

    const-string v1, "call_to_action"

    move-object v2, p7

    .line 236
    invoke-virtual {v0, v1, p7}, Lcom/google/android/gms/internal/ads/zzbws;->zzn(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, p8

    .line 237
    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzbws;->zzfmf:Landroid/view/View;

    move-object v1, p9

    .line 238
    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzbws;->zzfmg:Lcom/google/android/gms/dynamic/IObjectWrapper;

    const-string v1, "store"

    move-object v2, p10

    .line 239
    invoke-virtual {v0, v1, p10}, Lcom/google/android/gms/internal/ads/zzbws;->zzn(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "price"

    move-object v2, p11

    .line 240
    invoke-virtual {v0, v1, p11}, Lcom/google/android/gms/internal/ads/zzbws;->zzn(Ljava/lang/String;Ljava/lang/String;)V

    move-wide v1, p12

    .line 241
    iput-wide v1, v0, Lcom/google/android/gms/internal/ads/zzbws;->zzeip:D

    move-object/from16 v1, p14

    .line 242
    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzbws;->zzfmh:Lcom/google/android/gms/internal/ads/zzaci;

    const-string v1, "advertiser"

    move-object/from16 v2, p15

    .line 243
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzbws;->zzn(Ljava/lang/String;Ljava/lang/String;)V

    move/from16 v1, p16

    .line 244
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzbws;->setMediaContentAspectRatio(F)V

    return-object v0
.end method

.method private static zzar(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/dynamic/IObjectWrapper;",
            ")TT;"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 246
    :cond_0
    invoke-static {p0}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static zzb(Lcom/google/android/gms/internal/ads/zzall;)Lcom/google/android/gms/internal/ads/zzbws;
    .locals 18

    .line 192
    :try_start_0
    invoke-interface/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzall;->getVideoController()Lcom/google/android/gms/internal/ads/zzxb;

    move-result-object v1

    .line 193
    invoke-interface/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzall;->zzrh()Lcom/google/android/gms/internal/ads/zzaca;

    move-result-object v2

    .line 194
    invoke-interface/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzall;->zzsu()Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbws;->zzar(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/view/View;

    .line 195
    invoke-interface/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzall;->getHeadline()Ljava/lang/String;

    move-result-object v4

    .line 196
    invoke-interface/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzall;->getImages()Ljava/util/List;

    move-result-object v5

    .line 197
    invoke-interface/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzall;->getBody()Ljava/lang/String;

    move-result-object v6

    .line 198
    invoke-interface/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzall;->getExtras()Landroid/os/Bundle;

    move-result-object v7

    .line 199
    invoke-interface/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzall;->getCallToAction()Ljava/lang/String;

    move-result-object v8

    .line 200
    invoke-interface/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzall;->zzsv()Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbws;->zzar(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Landroid/view/View;

    .line 201
    invoke-interface/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzall;->zzri()Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v10

    .line 202
    invoke-interface/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzall;->getStore()Ljava/lang/String;

    move-result-object v11

    .line 203
    invoke-interface/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzall;->getPrice()Ljava/lang/String;

    move-result-object v12

    .line 204
    invoke-interface/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzall;->getStarRating()D

    move-result-wide v13

    .line 205
    invoke-interface/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzall;->zzrg()Lcom/google/android/gms/internal/ads/zzaci;

    move-result-object v15

    const/16 v16, 0x0

    const/16 v17, 0x0

    .line 206
    invoke-static/range {v1 .. v17}, Lcom/google/android/gms/internal/ads/zzbws;->zza(Lcom/google/android/gms/internal/ads/zzxb;Lcom/google/android/gms/internal/ads/zzaca;Landroid/view/View;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Landroid/view/View;Lcom/google/android/gms/dynamic/IObjectWrapper;Ljava/lang/String;Ljava/lang/String;DLcom/google/android/gms/internal/ads/zzaci;Ljava/lang/String;F)Lcom/google/android/gms/internal/ads/zzbws;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "Failed to get native ad assets from app install ad mapper"

    .line 208
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzayu;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public static zzb(Lcom/google/android/gms/internal/ads/zzalq;)Lcom/google/android/gms/internal/ads/zzbws;
    .locals 18

    .line 211
    :try_start_0
    invoke-interface/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzalq;->getVideoController()Lcom/google/android/gms/internal/ads/zzxb;

    move-result-object v1

    .line 212
    invoke-interface/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzalq;->zzrh()Lcom/google/android/gms/internal/ads/zzaca;

    move-result-object v2

    .line 213
    invoke-interface/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzalq;->zzsu()Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbws;->zzar(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/view/View;

    .line 214
    invoke-interface/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzalq;->getHeadline()Ljava/lang/String;

    move-result-object v4

    .line 215
    invoke-interface/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzalq;->getImages()Ljava/util/List;

    move-result-object v5

    .line 216
    invoke-interface/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzalq;->getBody()Ljava/lang/String;

    move-result-object v6

    .line 217
    invoke-interface/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzalq;->getExtras()Landroid/os/Bundle;

    move-result-object v7

    .line 218
    invoke-interface/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzalq;->getCallToAction()Ljava/lang/String;

    move-result-object v8

    .line 219
    invoke-interface/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzalq;->zzsv()Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbws;->zzar(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Landroid/view/View;

    .line 220
    invoke-interface/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzalq;->zzri()Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    const-wide/high16 v13, -0x4010000000000000L    # -1.0

    .line 221
    invoke-interface/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzalq;->zzrj()Lcom/google/android/gms/internal/ads/zzaci;

    move-result-object v15

    .line 222
    invoke-interface/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzalq;->getAdvertiser()Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x0

    .line 223
    invoke-static/range {v1 .. v17}, Lcom/google/android/gms/internal/ads/zzbws;->zza(Lcom/google/android/gms/internal/ads/zzxb;Lcom/google/android/gms/internal/ads/zzaca;Landroid/view/View;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Landroid/view/View;Lcom/google/android/gms/dynamic/IObjectWrapper;Ljava/lang/String;Ljava/lang/String;DLcom/google/android/gms/internal/ads/zzaci;Ljava/lang/String;F)Lcom/google/android/gms/internal/ads/zzbws;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "Failed to get native ad assets from content ad mapper"

    .line 225
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzayu;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public static zzb(Lcom/google/android/gms/internal/ads/zzalr;)Lcom/google/android/gms/internal/ads/zzbws;
    .locals 18

    .line 171
    :try_start_0
    invoke-interface/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzalr;->getVideoController()Lcom/google/android/gms/internal/ads/zzxb;

    move-result-object v1

    .line 172
    invoke-interface/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzalr;->zzrh()Lcom/google/android/gms/internal/ads/zzaca;

    move-result-object v2

    .line 173
    invoke-interface/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzalr;->zzsu()Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbws;->zzar(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/view/View;

    .line 174
    invoke-interface/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzalr;->getHeadline()Ljava/lang/String;

    move-result-object v4

    .line 175
    invoke-interface/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzalr;->getImages()Ljava/util/List;

    move-result-object v5

    .line 176
    invoke-interface/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzalr;->getBody()Ljava/lang/String;

    move-result-object v6

    .line 177
    invoke-interface/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzalr;->getExtras()Landroid/os/Bundle;

    move-result-object v7

    .line 178
    invoke-interface/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzalr;->getCallToAction()Ljava/lang/String;

    move-result-object v8

    .line 179
    invoke-interface/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzalr;->zzsv()Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbws;->zzar(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Landroid/view/View;

    .line 180
    invoke-interface/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzalr;->zzri()Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v10

    .line 181
    invoke-interface/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzalr;->getStore()Ljava/lang/String;

    move-result-object v11

    .line 182
    invoke-interface/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzalr;->getPrice()Ljava/lang/String;

    move-result-object v12

    .line 183
    invoke-interface/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzalr;->getStarRating()D

    move-result-wide v13

    .line 184
    invoke-interface/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzalr;->zzrg()Lcom/google/android/gms/internal/ads/zzaci;

    move-result-object v15

    .line 185
    invoke-interface/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzalr;->getAdvertiser()Ljava/lang/String;

    move-result-object v16

    .line 186
    invoke-interface/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzalr;->getMediaContentAspectRatio()F

    move-result v17

    .line 187
    invoke-static/range {v1 .. v17}, Lcom/google/android/gms/internal/ads/zzbws;->zza(Lcom/google/android/gms/internal/ads/zzxb;Lcom/google/android/gms/internal/ads/zzaca;Landroid/view/View;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Landroid/view/View;Lcom/google/android/gms/dynamic/IObjectWrapper;Ljava/lang/String;Ljava/lang/String;DLcom/google/android/gms/internal/ads/zzaci;Ljava/lang/String;F)Lcom/google/android/gms/internal/ads/zzbws;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "Failed to get native ad assets from unified ad mapper"

    .line 189
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzayu;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method private final declared-synchronized zzfy(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    monitor-enter p0

    .line 46
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbws;->zzfml:Landroidx/collection/SimpleArrayMap;

    invoke-virtual {v0, p1}, Landroidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public final declared-synchronized destroy()V
    .locals 2

    monitor-enter p0

    .line 80
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbws;->zzfmd:Lcom/google/android/gms/internal/ads/zzbdi;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbws;->zzfmd:Lcom/google/android/gms/internal/ads/zzbdi;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbdi;->destroy()V

    .line 82
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzbws;->zzfmd:Lcom/google/android/gms/internal/ads/zzbdi;

    .line 83
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbws;->zzfme:Lcom/google/android/gms/internal/ads/zzbdi;

    if-eqz v0, :cond_1

    .line 84
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbws;->zzfme:Lcom/google/android/gms/internal/ads/zzbdi;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbdi;->destroy()V

    .line 85
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzbws;->zzfme:Lcom/google/android/gms/internal/ads/zzbdi;

    .line 86
    :cond_1
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzbws;->zzffd:Lcom/google/android/gms/dynamic/IObjectWrapper;

    .line 87
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbws;->zzfmk:Landroidx/collection/SimpleArrayMap;

    invoke-virtual {v0}, Landroidx/collection/SimpleArrayMap;->clear()V

    .line 88
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbws;->zzfml:Landroidx/collection/SimpleArrayMap;

    invoke-virtual {v0}, Landroidx/collection/SimpleArrayMap;->clear()V

    .line 89
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzbws;->zzfma:Lcom/google/android/gms/internal/ads/zzxb;

    .line 90
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzbws;->zzcvq:Lcom/google/android/gms/internal/ads/zzaca;

    .line 91
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzbws;->zzfmb:Landroid/view/View;

    .line 92
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzbws;->zzeim:Ljava/util/List;

    .line 93
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzbws;->extras:Landroid/os/Bundle;

    .line 94
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzbws;->zzfmf:Landroid/view/View;

    .line 95
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzbws;->zzfmg:Lcom/google/android/gms/dynamic/IObjectWrapper;

    .line 96
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzbws;->zzfmh:Lcom/google/android/gms/internal/ads/zzaci;

    .line 97
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzbws;->zzfmi:Lcom/google/android/gms/internal/ads/zzaci;

    .line 98
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzbws;->zzfmj:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 99
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized getAdvertiser()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    :try_start_0
    const-string v0, "advertiser"

    .line 70
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzbws;->zzfy(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized getBody()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    :try_start_0
    const-string v0, "body"

    .line 59
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzbws;->zzfy(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized getCallToAction()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    :try_start_0
    const-string v0, "call_to_action"

    .line 63
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzbws;->zzfy(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized getCustomTemplateId()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    .line 72
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbws;->zzfmj:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized getExtras()Landroid/os/Bundle;
    .locals 1

    monitor-enter p0

    .line 60
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbws;->extras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    .line 61
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbws;->extras:Landroid/os/Bundle;

    .line 62
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbws;->extras:Landroid/os/Bundle;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized getHeadline()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    :try_start_0
    const-string v0, "headline"

    .line 51
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzbws;->zzfy(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized getImages()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "*>;"
        }
    .end annotation

    monitor-enter p0

    .line 52
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbws;->zzeim:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized getMediaContentAspectRatio()F
    .locals 1

    monitor-enter p0

    .line 77
    :try_start_0
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbws;->zzejb:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized getMuteThisAdReasons()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/ads/zzxy;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 57
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbws;->zzcwf:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized getPrice()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    :try_start_0
    const-string v0, "price"

    .line 67
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzbws;->zzfy(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized getStarRating()D
    .locals 2

    monitor-enter p0

    .line 68
    :try_start_0
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzbws;->zzeip:D
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized getStore()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    :try_start_0
    const-string v0, "store"

    .line 66
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzbws;->zzfy(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized getVideoController()Lcom/google/android/gms/internal/ads/zzxb;
    .locals 1

    monitor-enter p0

    .line 48
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbws;->zzfma:Lcom/google/android/gms/internal/ads/zzxb;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized setImages(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/ads/zzabu;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    .line 12
    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbws;->zzeim:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized setStarRating(D)V
    .locals 0

    monitor-enter p0

    .line 20
    :try_start_0
    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzbws;->zzeip:D
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized zza(Lcom/google/android/gms/internal/ads/zzaca;)V
    .locals 0

    monitor-enter p0

    .line 10
    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbws;->zzcvq:Lcom/google/android/gms/internal/ads/zzaca;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized zza(Lcom/google/android/gms/internal/ads/zzaci;)V
    .locals 0

    monitor-enter p0

    .line 22
    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbws;->zzfmh:Lcom/google/android/gms/internal/ads/zzaci;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized zza(Lcom/google/android/gms/internal/ads/zzxy;)V
    .locals 0

    monitor-enter p0

    .line 16
    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbws;->zzfmc:Lcom/google/android/gms/internal/ads/zzxy;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzabu;)V
    .locals 1

    monitor-enter p0

    if-nez p2, :cond_0

    .line 39
    :try_start_0
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzbws;->zzfmk:Landroidx/collection/SimpleArrayMap;

    invoke-virtual {p2, p1}, Landroidx/collection/SimpleArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    .line 40
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbws;->zzfmk:Landroidx/collection/SimpleArrayMap;

    invoke-virtual {v0, p1, p2}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 41
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized zzab(Landroid/view/View;)V
    .locals 0

    monitor-enter p0

    .line 18
    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbws;->zzfmf:Landroid/view/View;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized zzaja()I
    .locals 1

    monitor-enter p0

    .line 47
    :try_start_0
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbws;->zzflz:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized zzajb()Landroid/view/View;
    .locals 1

    monitor-enter p0

    .line 50
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbws;->zzfmb:Landroid/view/View;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final zzajc()Lcom/google/android/gms/internal/ads/zzaci;
    .locals 3

    .line 53
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbws;->zzeim:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 55
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbws;->zzeim:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 56
    instance-of v2, v0, Landroid/os/IBinder;

    if-eqz v2, :cond_1

    check-cast v0, Landroid/os/IBinder;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzach;->zzm(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ads/zzaci;

    move-result-object v0

    return-object v0

    :cond_1
    :goto_0
    return-object v1
.end method

.method public final declared-synchronized zzajd()Lcom/google/android/gms/internal/ads/zzxy;
    .locals 1

    monitor-enter p0

    .line 58
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbws;->zzfmc:Lcom/google/android/gms/internal/ads/zzxy;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized zzaje()Landroid/view/View;
    .locals 1

    monitor-enter p0

    .line 64
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbws;->zzfmf:Landroid/view/View;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized zzajf()Lcom/google/android/gms/internal/ads/zzbdi;
    .locals 1

    monitor-enter p0

    .line 73
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbws;->zzfmd:Lcom/google/android/gms/internal/ads/zzbdi;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized zzajg()Lcom/google/android/gms/internal/ads/zzbdi;
    .locals 1

    monitor-enter p0

    .line 74
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbws;->zzfme:Lcom/google/android/gms/internal/ads/zzbdi;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized zzajh()Lcom/google/android/gms/dynamic/IObjectWrapper;
    .locals 1

    monitor-enter p0

    .line 75
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbws;->zzffd:Lcom/google/android/gms/dynamic/IObjectWrapper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized zzaji()Landroidx/collection/SimpleArrayMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/collection/SimpleArrayMap<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/zzabu;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 76
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbws;->zzfmk:Landroidx/collection/SimpleArrayMap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized zzajj()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    .line 78
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbws;->zzfmm:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized zzajk()Landroidx/collection/SimpleArrayMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/collection/SimpleArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 79
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbws;->zzfml:Landroidx/collection/SimpleArrayMap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized zzaq(Lcom/google/android/gms/dynamic/IObjectWrapper;)V
    .locals 0

    monitor-enter p0

    .line 32
    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbws;->zzffd:Lcom/google/android/gms/dynamic/IObjectWrapper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized zzb(Lcom/google/android/gms/internal/ads/zzaci;)V
    .locals 0

    monitor-enter p0

    .line 24
    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbws;->zzfmi:Lcom/google/android/gms/internal/ads/zzaci;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized zzb(Lcom/google/android/gms/internal/ads/zzxb;)V
    .locals 0

    monitor-enter p0

    .line 8
    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbws;->zzfma:Lcom/google/android/gms/internal/ads/zzxb;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized zzdj(I)V
    .locals 0

    monitor-enter p0

    .line 6
    :try_start_0
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzbws;->zzflz:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized zzf(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/ads/zzxy;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    .line 14
    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbws;->zzcwf:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized zzfw(Ljava/lang/String;)V
    .locals 0

    monitor-enter p0

    .line 26
    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbws;->zzfmj:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized zzfx(Ljava/lang/String;)V
    .locals 0

    monitor-enter p0

    .line 44
    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbws;->zzfmm:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized zzi(Lcom/google/android/gms/internal/ads/zzbdi;)V
    .locals 0

    monitor-enter p0

    .line 28
    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbws;->zzfmd:Lcom/google/android/gms/internal/ads/zzbdi;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized zzj(Lcom/google/android/gms/internal/ads/zzbdi;)V
    .locals 0

    monitor-enter p0

    .line 30
    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbws;->zzfme:Lcom/google/android/gms/internal/ads/zzbdi;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized zzn(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    if-nez p2, :cond_0

    .line 35
    :try_start_0
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzbws;->zzfml:Landroidx/collection/SimpleArrayMap;

    invoke-virtual {p2, p1}, Landroidx/collection/SimpleArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    .line 36
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbws;->zzfml:Landroidx/collection/SimpleArrayMap;

    invoke-virtual {v0, p1, p2}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 37
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized zzrg()Lcom/google/android/gms/internal/ads/zzaci;
    .locals 1

    monitor-enter p0

    .line 69
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbws;->zzfmh:Lcom/google/android/gms/internal/ads/zzaci;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized zzrh()Lcom/google/android/gms/internal/ads/zzaca;
    .locals 1

    monitor-enter p0

    .line 49
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbws;->zzcvq:Lcom/google/android/gms/internal/ads/zzaca;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized zzri()Lcom/google/android/gms/dynamic/IObjectWrapper;
    .locals 1

    monitor-enter p0

    .line 65
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbws;->zzfmg:Lcom/google/android/gms/dynamic/IObjectWrapper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized zzrj()Lcom/google/android/gms/internal/ads/zzaci;
    .locals 1

    monitor-enter p0

    .line 71
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbws;->zzfmi:Lcom/google/android/gms/internal/ads/zzaci;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
