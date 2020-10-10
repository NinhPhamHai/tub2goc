.class final Lcom/google/android/gms/internal/ads/zzdkm;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@18.3.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdop;


# instance fields
.field private final zzgzr:Ljava/lang/String;

.field private final zzgzs:I

.field private zzgzt:Lcom/google/android/gms/internal/ads/zzdlv;

.field private zzgzu:Lcom/google/android/gms/internal/ads/zzdlf;

.field private zzgzv:I


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzdng;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdng;->zzavi()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdkm;->zzgzr:Ljava/lang/String;

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdkm;->zzgzr:Ljava/lang/String;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzdiy;->zzgys:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    :try_start_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdng;->zzavj()Lcom/google/android/gms/internal/ads/zzdqk;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdlw;->zzaf(Lcom/google/android/gms/internal/ads/zzdqk;)Lcom/google/android/gms/internal/ads/zzdlw;

    move-result-object v0

    .line 5
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzdit;->zzb(Lcom/google/android/gms/internal/ads/zzdng;)Lcom/google/android/gms/internal/ads/zzdte;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzdlv;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdkm;->zzgzt:Lcom/google/android/gms/internal/ads/zzdlv;

    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdlw;->getKeySize()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzdkm;->zzgzs:I
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzdse; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 9
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "invalid KeyFormat protobuf, expected AesGcmKeyFormat"

    invoke-direct {v0, v1, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdkm;->zzgzr:Ljava/lang/String;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzdiy;->zzgyr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 12
    :try_start_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdng;->zzavj()Lcom/google/android/gms/internal/ads/zzdqk;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdlg;->zzx(Lcom/google/android/gms/internal/ads/zzdqk;)Lcom/google/android/gms/internal/ads/zzdlg;

    move-result-object v0

    .line 13
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzdit;->zzb(Lcom/google/android/gms/internal/ads/zzdng;)Lcom/google/android/gms/internal/ads/zzdte;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzdlf;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdkm;->zzgzu:Lcom/google/android/gms/internal/ads/zzdlf;

    .line 14
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdlg;->zzate()Lcom/google/android/gms/internal/ads/zzdlk;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdlk;->getKeySize()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzdkm;->zzgzv:I

    .line 15
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdlg;->zzatf()Lcom/google/android/gms/internal/ads/zzdmw;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdmw;->getKeySize()I

    move-result p1

    .line 16
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzdkm;->zzgzv:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzdkm;->zzgzs:I
    :try_end_1
    .catch Lcom/google/android/gms/internal/ads/zzdse; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    :catch_1
    move-exception p1

    .line 19
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "invalid KeyFormat protobuf, expected AesCtrHmacAeadKeyFormat"

    invoke-direct {v0, v1, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 20
    :cond_1
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string v0, "unsupported AEAD DEM key type: "

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdkm;->zzgzr:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    :goto_0
    invoke-direct {p1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final zzasr()I
    .locals 1

    .line 21
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzdkm;->zzgzs:I

    return v0
.end method

.method public final zzm([B)Lcom/google/android/gms/internal/ads/zzdhx;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 22
    array-length v0, p1

    .line 23
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzdkm;->zzgzs:I

    if-ne v0, v1, :cond_2

    .line 26
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdkm;->zzgzr:Ljava/lang/String;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzdiy;->zzgys:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 27
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzdlv;->zzatw()Lcom/google/android/gms/internal/ads/zzdlv$zza;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdkm;->zzgzt:Lcom/google/android/gms/internal/ads/zzdlv;

    .line 28
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzdrt$zzb;->zzb(Lcom/google/android/gms/internal/ads/zzdrt;)Lcom/google/android/gms/internal/ads/zzdrt$zzb;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzdlv$zza;

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzdkm;->zzgzs:I

    .line 29
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/internal/ads/zzdqk;->zzi([BII)Lcom/google/android/gms/internal/ads/zzdqk;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzdlv$zza;->zzag(Lcom/google/android/gms/internal/ads/zzdqk;)Lcom/google/android/gms/internal/ads/zzdlv$zza;

    .line 30
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdrt$zzb;->zzbaf()Lcom/google/android/gms/internal/ads/zzdte;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzdlv;

    .line 31
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdkm;->zzgzr:Ljava/lang/String;

    const-class v1, Lcom/google/android/gms/internal/ads/zzdhx;

    invoke-static {v0, p1, v1}, Lcom/google/android/gms/internal/ads/zzdit;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzdte;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzdhx;

    return-object p1

    .line 32
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdkm;->zzgzr:Ljava/lang/String;

    sget-object v2, Lcom/google/android/gms/internal/ads/zzdiy;->zzgyr:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 33
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzdkm;->zzgzv:I

    invoke-static {p1, v1, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    .line 34
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzdkm;->zzgzv:I

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzdkm;->zzgzs:I

    invoke-static {p1, v1, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p1

    .line 35
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzdlj;->zzati()Lcom/google/android/gms/internal/ads/zzdlj$zza;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdkm;->zzgzu:Lcom/google/android/gms/internal/ads/zzdlf;

    .line 36
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzdlf;->zzata()Lcom/google/android/gms/internal/ads/zzdlj;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzdrt$zzb;->zzb(Lcom/google/android/gms/internal/ads/zzdrt;)Lcom/google/android/gms/internal/ads/zzdrt$zzb;

    check-cast v1, Lcom/google/android/gms/internal/ads/zzdlj$zza;

    .line 37
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdqk;->zzu([B)Lcom/google/android/gms/internal/ads/zzdqk;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzdlj$zza;->zzaa(Lcom/google/android/gms/internal/ads/zzdqk;)Lcom/google/android/gms/internal/ads/zzdlj$zza;

    .line 38
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzdrt$zzb;->zzbaf()Lcom/google/android/gms/internal/ads/zzdte;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzdlj;

    .line 39
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzdmv;->zzava()Lcom/google/android/gms/internal/ads/zzdmv$zza;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdkm;->zzgzu:Lcom/google/android/gms/internal/ads/zzdlf;

    .line 40
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzdlf;->zzatb()Lcom/google/android/gms/internal/ads/zzdmv;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzdrt$zzb;->zzb(Lcom/google/android/gms/internal/ads/zzdrt;)Lcom/google/android/gms/internal/ads/zzdrt$zzb;

    check-cast v1, Lcom/google/android/gms/internal/ads/zzdmv$zza;

    .line 41
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzdqk;->zzu([B)Lcom/google/android/gms/internal/ads/zzdqk;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/zzdmv$zza;->zzau(Lcom/google/android/gms/internal/ads/zzdqk;)Lcom/google/android/gms/internal/ads/zzdmv$zza;

    .line 42
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzdrt$zzb;->zzbaf()Lcom/google/android/gms/internal/ads/zzdte;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzdmv;

    .line 43
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzdlf;->zzatc()Lcom/google/android/gms/internal/ads/zzdlf$zza;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdkm;->zzgzu:Lcom/google/android/gms/internal/ads/zzdlf;

    .line 44
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzdlf;->getVersion()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzdlf$zza;->zzed(I)Lcom/google/android/gms/internal/ads/zzdlf$zza;

    .line 45
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzdlf$zza;->zzb(Lcom/google/android/gms/internal/ads/zzdlj;)Lcom/google/android/gms/internal/ads/zzdlf$zza;

    .line 46
    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/zzdlf$zza;->zzb(Lcom/google/android/gms/internal/ads/zzdmv;)Lcom/google/android/gms/internal/ads/zzdlf$zza;

    .line 47
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzdrt$zzb;->zzbaf()Lcom/google/android/gms/internal/ads/zzdte;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzdlf;

    .line 48
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdkm;->zzgzr:Ljava/lang/String;

    const-class v1, Lcom/google/android/gms/internal/ads/zzdhx;

    invoke-static {v0, p1, v1}, Lcom/google/android/gms/internal/ads/zzdit;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzdte;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzdhx;

    return-object p1

    .line 49
    :cond_1
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string v0, "unknown DEM key type"

    invoke-direct {p1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 25
    :cond_2
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string v0, "Symmetric key has incorrect length"

    invoke-direct {p1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
