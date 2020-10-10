.class final Lcom/google/android/gms/internal/ads/zzdbc;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@18.3.0"


# instance fields
.field private final zzgnw:Lcom/google/android/gms/internal/ads/zzdbf;

.field private zzgnx:I

.field private zzgny:I

.field private zzgnz:I

.field private zzgoa:I

.field private zzgob:I


# direct methods
.method constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdbf;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzdbf;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdbc;->zzgnw:Lcom/google/android/gms/internal/ads/zzdbf;

    return-void
.end method


# virtual methods
.method public final zzape()V
    .locals 1

    .line 3
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzdbc;->zzgnz:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzdbc;->zzgnz:I

    return-void
.end method

.method public final zzapf()V
    .locals 1

    .line 5
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzdbc;->zzgoa:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzdbc;->zzgoa:I

    return-void
.end method

.method public final zzapg()V
    .locals 2

    .line 7
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzdbc;->zzgnx:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzdbc;->zzgnx:I

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdbc;->zzgnw:Lcom/google/android/gms/internal/ads/zzdbf;

    iput-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzdbf;->zzgoq:Z

    return-void
.end method

.method public final zzaph()V
    .locals 2

    .line 10
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzdbc;->zzgny:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzdbc;->zzgny:I

    .line 11
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdbc;->zzgnw:Lcom/google/android/gms/internal/ads/zzdbf;

    iput-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzdbf;->zzgor:Z

    return-void
.end method

.method public final zzapi()V
    .locals 1

    .line 13
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzdbc;->zzgob:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzdbc;->zzgob:I

    return-void
.end method

.method public final zzapj()Lcom/google/android/gms/internal/ads/zzdbf;
    .locals 3

    .line 15
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdbc;->zzgnw:Lcom/google/android/gms/internal/ads/zzdbf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdbf;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzdbf;

    .line 16
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdbc;->zzgnw:Lcom/google/android/gms/internal/ads/zzdbf;

    const/4 v2, 0x0

    .line 17
    iput-boolean v2, v1, Lcom/google/android/gms/internal/ads/zzdbf;->zzgoq:Z

    .line 18
    iput-boolean v2, v1, Lcom/google/android/gms/internal/ads/zzdbf;->zzgor:Z

    return-object v0
.end method

.method public final zzapk()Ljava/lang/String;
    .locals 2

    .line 20
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\n\tPool does not exist: "

    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzdbc;->zzgnz:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\n\tNew pools created: "

    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzdbc;->zzgnx:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\n\tPools removed: "

    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzdbc;->zzgny:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\n\tEntries added: "

    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzdbc;->zzgob:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\n\tNo entries retrieved: "

    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzdbc;->zzgoa:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    .line 31
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
