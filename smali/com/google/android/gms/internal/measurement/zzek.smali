.class final Lcom/google/android/gms/internal/measurement/zzek;
.super Lcom/google/android/gms/internal/measurement/zzei;
.source "com.google.android.gms:play-services-measurement-base@@17.2.2"


# instance fields
.field private final zzd:[B

.field private final zze:Z

.field private zzf:I

.field private zzg:I

.field private zzh:I

.field private zzi:I

.field private zzk:I


# direct methods
.method private constructor <init>([BIIZ)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/zzei;-><init>(Lcom/google/android/gms/internal/measurement/zzeh;)V

    const v0, 0x7fffffff

    .line 2
    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzek;->zzk:I

    .line 3
    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzek;->zzd:[B

    add-int/2addr p3, p2

    .line 4
    iput p3, p0, Lcom/google/android/gms/internal/measurement/zzek;->zzf:I

    .line 5
    iput p2, p0, Lcom/google/android/gms/internal/measurement/zzek;->zzh:I

    .line 6
    iget p1, p0, Lcom/google/android/gms/internal/measurement/zzek;->zzh:I

    iput p1, p0, Lcom/google/android/gms/internal/measurement/zzek;->zzi:I

    .line 7
    iput-boolean p4, p0, Lcom/google/android/gms/internal/measurement/zzek;->zze:Z

    return-void
.end method

.method synthetic constructor <init>([BIIZLcom/google/android/gms/internal/measurement/zzeh;)V
    .locals 0

    .line 206
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/measurement/zzek;-><init>([BIIZ)V

    return-void
.end method

.method private final zzz()V
    .locals 3

    .line 185
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzek;->zzf:I

    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzek;->zzg:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzek;->zzf:I

    .line 186
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzek;->zzf:I

    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzek;->zzi:I

    sub-int v1, v0, v1

    .line 187
    iget v2, p0, Lcom/google/android/gms/internal/measurement/zzek;->zzk:I

    if-le v1, v2, :cond_0

    sub-int/2addr v1, v2

    .line 188
    iput v1, p0, Lcom/google/android/gms/internal/measurement/zzek;->zzg:I

    .line 189
    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzek;->zzg:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzek;->zzf:I

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 190
    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzek;->zzg:I

    return-void
.end method


# virtual methods
.method public final zzc(I)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/measurement/zzfm;
        }
    .end annotation

    if-ltz p1, :cond_1

    .line 178
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzek;->zzu()I

    move-result v0

    add-int/2addr p1, v0

    .line 179
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzek;->zzk:I

    if-gt p1, v0, :cond_0

    .line 182
    iput p1, p0, Lcom/google/android/gms/internal/measurement/zzek;->zzk:I

    .line 183
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzek;->zzz()V

    return v0

    .line 181
    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzfm;->zza()Lcom/google/android/gms/internal/measurement/zzfm;

    move-result-object p1

    throw p1

    .line 177
    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzfm;->zzb()Lcom/google/android/gms/internal/measurement/zzfm;

    move-result-object p1

    throw p1
.end method

.method public final zzu()I
    .locals 2

    .line 196
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzek;->zzh:I

    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzek;->zzi:I

    sub-int/2addr v0, v1

    return v0
.end method
