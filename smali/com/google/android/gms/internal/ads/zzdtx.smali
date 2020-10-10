.class final Lcom/google/android/gms/internal/ads/zzdtx;
.super Ljava/io/InputStream;
.source "com.google.android.gms:play-services-ads-lite@@18.3.0"


# instance fields
.field private mark:I

.field private final synthetic zzhqd:Lcom/google/android/gms/internal/ads/zzdtt;

.field private zzhqe:Lcom/google/android/gms/internal/ads/zzdty;

.field private zzhqf:Lcom/google/android/gms/internal/ads/zzdqr;

.field private zzhqg:I

.field private zzhqh:I

.field private zzhqi:I


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzdtt;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdtx;->zzhqd:Lcom/google/android/gms/internal/ads/zzdtt;

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzdtx;->initialize()V

    return-void
.end method

.method private final initialize()V
    .locals 3

    .line 41
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdty;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdtx;->zzhqd:Lcom/google/android/gms/internal/ads/zzdtt;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzdty;-><init>(Lcom/google/android/gms/internal/ads/zzdqk;Lcom/google/android/gms/internal/ads/zzdtw;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdtx;->zzhqe:Lcom/google/android/gms/internal/ads/zzdty;

    .line 42
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdtx;->zzhqe:Lcom/google/android/gms/internal/ads/zzdty;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdty;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzdqr;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdtx;->zzhqf:Lcom/google/android/gms/internal/ads/zzdqr;

    .line 43
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdtx;->zzhqf:Lcom/google/android/gms/internal/ads/zzdqr;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdqk;->size()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzdtx;->zzhqg:I

    const/4 v0, 0x0

    .line 44
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzdtx;->zzhqh:I

    .line 45
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzdtx;->zzhqi:I

    return-void
.end method

.method private final zzbbr()V
    .locals 2

    .line 47
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdtx;->zzhqf:Lcom/google/android/gms/internal/ads/zzdqr;

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzdtx;->zzhqh:I

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzdtx;->zzhqg:I

    if-ne v0, v1, :cond_1

    .line 48
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzdtx;->zzhqi:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzdtx;->zzhqi:I

    const/4 v0, 0x0

    .line 49
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzdtx;->zzhqh:I

    .line 50
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdtx;->zzhqe:Lcom/google/android/gms/internal/ads/zzdty;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzdty;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 51
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdtx;->zzhqe:Lcom/google/android/gms/internal/ads/zzdty;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdty;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzdqr;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdtx;->zzhqf:Lcom/google/android/gms/internal/ads/zzdqr;

    .line 52
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdtx;->zzhqf:Lcom/google/android/gms/internal/ads/zzdqr;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdqk;->size()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzdtx;->zzhqg:I

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 53
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzdtx;->zzhqf:Lcom/google/android/gms/internal/ads/zzdqr;

    .line 54
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzdtx;->zzhqg:I

    :cond_1
    return-void
.end method

.method private final zzl([BII)I
    .locals 4

    move v0, p2

    move p2, p3

    :goto_0
    if-lez p2, :cond_2

    .line 16
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzdtx;->zzbbr()V

    .line 17
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdtx;->zzhqf:Lcom/google/android/gms/internal/ads/zzdqr;

    if-nez v1, :cond_0

    if-ne p2, p3, :cond_2

    const/4 p1, -0x1

    return p1

    .line 20
    :cond_0
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzdtx;->zzhqg:I

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzdtx;->zzhqh:I

    sub-int/2addr v1, v2

    .line 21
    invoke-static {v1, p2}, Ljava/lang/Math;->min(II)I

    move-result v1

    if-eqz p1, :cond_1

    .line 23
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdtx;->zzhqf:Lcom/google/android/gms/internal/ads/zzdqr;

    iget v3, p0, Lcom/google/android/gms/internal/ads/zzdtx;->zzhqh:I

    invoke-virtual {v2, p1, v3, v0, v1}, Lcom/google/android/gms/internal/ads/zzdqk;->zza([BIII)V

    add-int/2addr v0, v1

    .line 25
    :cond_1
    iget v2, p0, Lcom/google/android/gms/internal/ads/zzdtx;->zzhqh:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/google/android/gms/internal/ads/zzdtx;->zzhqh:I

    sub-int/2addr p2, v1

    goto :goto_0

    :cond_2
    sub-int/2addr p3, p2

    return p3
.end method


# virtual methods
.method public final available()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 33
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzdtx;->zzhqi:I

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzdtx;->zzhqh:I

    add-int/2addr v0, v1

    .line 34
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdtx;->zzhqd:Lcom/google/android/gms/internal/ads/zzdtt;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzdtt;->size()I

    move-result v1

    sub-int/2addr v1, v0

    return v1
.end method

.method public final mark(I)V
    .locals 1

    .line 36
    iget p1, p0, Lcom/google/android/gms/internal/ads/zzdtx;->zzhqi:I

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzdtx;->zzhqh:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzdtx;->mark:I

    return-void
.end method

.method public final markSupported()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final read()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 29
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzdtx;->zzbbr()V

    .line 30
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdtx;->zzhqf:Lcom/google/android/gms/internal/ads/zzdqr;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    return v0

    .line 32
    :cond_0
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzdtx;->zzhqh:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/ads/zzdtx;->zzhqh:I

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzdqk;->zzfe(I)B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public final read([BII)I
    .locals 1

    if-eqz p1, :cond_1

    if-ltz p2, :cond_0

    if-ltz p3, :cond_0

    .line 6
    array-length v0, p1

    sub-int/2addr v0, p2

    if-gt p3, v0, :cond_0

    .line 8
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzdtx;->zzl([BII)I

    move-result p1

    return p1

    .line 7
    :cond_0
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1

    .line 5
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public final declared-synchronized reset()V
    .locals 3

    monitor-enter p0

    .line 38
    :try_start_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzdtx;->initialize()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 39
    iget v2, p0, Lcom/google/android/gms/internal/ads/zzdtx;->mark:I

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzdtx;->zzl([BII)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final skip(J)J
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_1

    const-wide/32 v0, 0x7fffffff

    cmp-long v2, p1, v0

    if-lez v2, :cond_0

    move-wide p1, v0

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    long-to-int p2, p1

    .line 13
    invoke-direct {p0, v0, v1, p2}, Lcom/google/android/gms/internal/ads/zzdtx;->zzl([BII)I

    move-result p1

    int-to-long p1, p1

    return-wide p1

    .line 10
    :cond_1
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method
