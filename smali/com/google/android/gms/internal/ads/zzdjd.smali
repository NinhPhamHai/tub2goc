.class final Lcom/google/android/gms/internal/ads/zzdjd;
.super Lcom/google/android/gms/internal/ads/zzdih;
.source "com.google.android.gms:play-services-ads@@18.3.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzdih<",
        "Lcom/google/android/gms/internal/ads/zzdlg;",
        "Lcom/google/android/gms/internal/ads/zzdlf;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic zzgzc:Lcom/google/android/gms/internal/ads/zzdjc;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzdjc;Ljava/lang/Class;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdjd;->zzgzc:Lcom/google/android/gms/internal/ads/zzdjc;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/ads/zzdih;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public final synthetic zzc(Lcom/google/android/gms/internal/ads/zzdte;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 15
    check-cast p1, Lcom/google/android/gms/internal/ads/zzdlg;

    .line 16
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdjg;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzdjg;-><init>()V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdjg;->zzasg()Lcom/google/android/gms/internal/ads/zzdih;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdlg;->zzate()Lcom/google/android/gms/internal/ads/zzdlk;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzdih;->zzc(Lcom/google/android/gms/internal/ads/zzdte;)V

    .line 17
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdkq;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzdkq;-><init>()V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdkq;->zzasg()Lcom/google/android/gms/internal/ads/zzdih;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdlg;->zzatf()Lcom/google/android/gms/internal/ads/zzdmw;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzdih;->zzc(Lcom/google/android/gms/internal/ads/zzdte;)V

    .line 18
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdlg;->zzate()Lcom/google/android/gms/internal/ads/zzdlk;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdlk;->getKeySize()I

    move-result p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzdpo;->zzez(I)V

    return-void
.end method

.method public final synthetic zzd(Lcom/google/android/gms/internal/ads/zzdte;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 2
    check-cast p1, Lcom/google/android/gms/internal/ads/zzdlg;

    .line 3
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdjg;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzdjg;-><init>()V

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdjg;->zzasg()Lcom/google/android/gms/internal/ads/zzdih;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdlg;->zzate()Lcom/google/android/gms/internal/ads/zzdlk;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzdih;->zzd(Lcom/google/android/gms/internal/ads/zzdte;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzdlj;

    .line 5
    new-instance v1, Lcom/google/android/gms/internal/ads/zzdkq;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzdkq;-><init>()V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzdkq;->zzasg()Lcom/google/android/gms/internal/ads/zzdih;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdlg;->zzatf()Lcom/google/android/gms/internal/ads/zzdmw;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/zzdih;->zzd(Lcom/google/android/gms/internal/ads/zzdte;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzdmv;

    .line 6
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzdlf;->zzatc()Lcom/google/android/gms/internal/ads/zzdlf$zza;

    move-result-object v1

    .line 7
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzdlf$zza;->zzb(Lcom/google/android/gms/internal/ads/zzdlj;)Lcom/google/android/gms/internal/ads/zzdlf$zza;

    .line 8
    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/zzdlf$zza;->zzb(Lcom/google/android/gms/internal/ads/zzdmv;)Lcom/google/android/gms/internal/ads/zzdlf$zza;

    const/4 p1, 0x0

    .line 9
    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/zzdlf$zza;->zzed(I)Lcom/google/android/gms/internal/ads/zzdlf$zza;

    .line 10
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzdrt$zzb;->zzbaf()Lcom/google/android/gms/internal/ads/zzdte;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzdlf;

    return-object p1
.end method

.method public final synthetic zzq(Lcom/google/android/gms/internal/ads/zzdqk;)Lcom/google/android/gms/internal/ads/zzdte;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzdse;
        }
    .end annotation

    .line 13
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzdlg;->zzx(Lcom/google/android/gms/internal/ads/zzdqk;)Lcom/google/android/gms/internal/ads/zzdlg;

    move-result-object p1

    return-object p1
.end method
