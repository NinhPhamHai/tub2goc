.class public final Lcom/google/android/gms/internal/ads/zzclj;
.super Lcom/google/android/gms/internal/ads/zzclk;
.source "com.google.android.gms:play-services-ads@@18.3.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzclk<",
        "Lcom/google/android/gms/internal/ads/zzbkk;",
        ">;"
    }
.end annotation


# instance fields
.field private final zzelu:Lcom/google/android/gms/internal/ads/zzbvi;

.field private final zzers:Lcom/google/android/gms/internal/ads/zzbrm;

.field private final zzexc:Lcom/google/android/gms/internal/ads/zzcns;

.field private final zzfdu:Landroid/view/ViewGroup;

.field private final zzffm:Lcom/google/android/gms/internal/ads/zzbqp;

.field private final zzfzz:Lcom/google/android/gms/internal/ads/zzbfx;

.field private final zzgaa:Lcom/google/android/gms/internal/ads/zzbod$zza;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzbfx;Lcom/google/android/gms/internal/ads/zzbod$zza;Lcom/google/android/gms/internal/ads/zzcns;Lcom/google/android/gms/internal/ads/zzbrm;Lcom/google/android/gms/internal/ads/zzbvi;Lcom/google/android/gms/internal/ads/zzbqp;Landroid/view/ViewGroup;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzclk;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzclj;->zzfzz:Lcom/google/android/gms/internal/ads/zzbfx;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzclj;->zzgaa:Lcom/google/android/gms/internal/ads/zzbod$zza;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzclj;->zzexc:Lcom/google/android/gms/internal/ads/zzcns;

    .line 5
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzclj;->zzers:Lcom/google/android/gms/internal/ads/zzbrm;

    .line 6
    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzclj;->zzelu:Lcom/google/android/gms/internal/ads/zzbvi;

    .line 7
    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzclj;->zzffm:Lcom/google/android/gms/internal/ads/zzbqp;

    .line 8
    iput-object p7, p0, Lcom/google/android/gms/internal/ads/zzclj;->zzfdu:Landroid/view/ViewGroup;

    return-void
.end method


# virtual methods
.method protected final zza(Lcom/google/android/gms/internal/ads/zzczu;Landroid/os/Bundle;)Lcom/google/android/gms/internal/ads/zzdhe;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzczu;",
            "Landroid/os/Bundle;",
            ")",
            "Lcom/google/android/gms/internal/ads/zzdhe<",
            "Lcom/google/android/gms/internal/ads/zzbkk;",
            ">;"
        }
    .end annotation

    .line 10
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzclj;->zzfzz:Lcom/google/android/gms/internal/ads/zzbfx;

    .line 11
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbfx;->zzach()Lcom/google/android/gms/internal/ads/zzblf;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzclj;->zzgaa:Lcom/google/android/gms/internal/ads/zzbod$zza;

    .line 12
    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/zzbod$zza;->zza(Lcom/google/android/gms/internal/ads/zzczu;)Lcom/google/android/gms/internal/ads/zzbod$zza;

    .line 13
    invoke-virtual {v1, p2}, Lcom/google/android/gms/internal/ads/zzbod$zza;->zze(Landroid/os/Bundle;)Lcom/google/android/gms/internal/ads/zzbod$zza;

    .line 14
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzbod$zza;->zzahh()Lcom/google/android/gms/internal/ads/zzbod;

    move-result-object p1

    .line 15
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzblf;->zzc(Lcom/google/android/gms/internal/ads/zzbod;)Lcom/google/android/gms/internal/ads/zzblf;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzclj;->zzers:Lcom/google/android/gms/internal/ads/zzbrm;

    .line 16
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzblf;->zzc(Lcom/google/android/gms/internal/ads/zzbrm;)Lcom/google/android/gms/internal/ads/zzblf;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzclj;->zzexc:Lcom/google/android/gms/internal/ads/zzcns;

    .line 17
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzblf;->zza(Lcom/google/android/gms/internal/ads/zzcns;)Lcom/google/android/gms/internal/ads/zzblf;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzclj;->zzelu:Lcom/google/android/gms/internal/ads/zzbvi;

    .line 18
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzblf;->zzb(Lcom/google/android/gms/internal/ads/zzbvi;)Lcom/google/android/gms/internal/ads/zzblf;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzbma;

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzclj;->zzffm:Lcom/google/android/gms/internal/ads/zzbqp;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzbma;-><init>(Lcom/google/android/gms/internal/ads/zzbqp;)V

    .line 19
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzblf;->zza(Lcom/google/android/gms/internal/ads/zzbma;)Lcom/google/android/gms/internal/ads/zzblf;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzbkf;

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzclj;->zzfdu:Landroid/view/ViewGroup;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzbkf;-><init>(Landroid/view/ViewGroup;)V

    .line 20
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzblf;->zzb(Lcom/google/android/gms/internal/ads/zzbkf;)Lcom/google/android/gms/internal/ads/zzblf;

    .line 21
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzblf;->zzaee()Lcom/google/android/gms/internal/ads/zzblg;

    move-result-object p1

    .line 22
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzblg;->zzadc()Lcom/google/android/gms/internal/ads/zzbmz;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbmz;->zzaha()Lcom/google/android/gms/internal/ads/zzdhe;

    move-result-object p1

    return-object p1
.end method
