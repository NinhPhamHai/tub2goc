.class public final Lcom/google/android/gms/internal/ads/zzbtu;
.super Lcom/google/android/gms/internal/ads/zzbmd;
.source "com.google.android.gms:play-services-ads@@18.3.0"


# instance fields
.field private final zzfix:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/google/android/gms/internal/ads/zzbdi;",
            ">;"
        }
    .end annotation
.end field

.field private final zzfiy:Lcom/google/android/gms/internal/ads/zzbsk;

.field private final zzfiz:Lcom/google/android/gms/internal/ads/zzbuv;

.field private final zzfja:Lcom/google/android/gms/internal/ads/zzbmx;

.field private final zzfjb:Lcom/google/android/gms/gass/zzf;

.field private zzfjc:Z

.field private final zzup:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzbmg;Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbdi;Lcom/google/android/gms/internal/ads/zzbsk;Lcom/google/android/gms/internal/ads/zzbuv;Lcom/google/android/gms/internal/ads/zzbmx;Lcom/google/android/gms/gass/zzf;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzbmd;-><init>(Lcom/google/android/gms/internal/ads/zzbmg;)V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzbtu;->zzfjc:Z

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbtu;->zzup:Landroid/content/Context;

    .line 4
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbtu;->zzfix:Ljava/lang/ref/WeakReference;

    .line 5
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzbtu;->zzfiy:Lcom/google/android/gms/internal/ads/zzbsk;

    .line 6
    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzbtu;->zzfiz:Lcom/google/android/gms/internal/ads/zzbuv;

    .line 7
    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzbtu;->zzfja:Lcom/google/android/gms/internal/ads/zzbmx;

    .line 8
    iput-object p7, p0, Lcom/google/android/gms/internal/ads/zzbtu;->zzfjb:Lcom/google/android/gms/gass/zzf;

    return-void
.end method


# virtual methods
.method public final finalize()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 26
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbtu;->zzfix:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzbdi;

    .line 27
    sget-object v1, Lcom/google/android/gms/internal/ads/zzzn;->zzcrd:Lcom/google/android/gms/internal/ads/zzzc;

    .line 28
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzve;->zzoy()Lcom/google/android/gms/internal/ads/zzzj;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzzj;->zzd(Lcom/google/android/gms/internal/ads/zzzc;)Ljava/lang/Object;

    move-result-object v1

    .line 29
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 30
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzbtu;->zzfjc:Z

    if-nez v1, :cond_1

    if-eqz v0, :cond_1

    .line 31
    sget-object v1, Lcom/google/android/gms/internal/ads/zzazd;->zzdwi:Lcom/google/android/gms/internal/ads/zzdhd;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbtt;->zzh(Lcom/google/android/gms/internal/ads/zzbdi;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    .line 33
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbdi;->destroy()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    :cond_1
    :goto_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_0
    move-exception v0

    .line 36
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 37
    throw v0
.end method

.method public final isClosed()Z
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbtu;->zzfja:Lcom/google/android/gms/internal/ads/zzbmx;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbmx;->isClosed()Z

    move-result v0

    return v0
.end method

.method public final zzaid()Z
    .locals 3

    .line 15
    sget-object v0, Lcom/google/android/gms/internal/ads/zzzn;->zzcin:Lcom/google/android/gms/internal/ads/zzzc;

    .line 16
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzve;->zzoy()Lcom/google/android/gms/internal/ads/zzzj;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzzj;->zzd(Lcom/google/android/gms/internal/ads/zzzc;)Ljava/lang/Object;

    move-result-object v0

    .line 17
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 18
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzq;->zzkq()Lcom/google/android/gms/internal/ads/zzawb;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbtu;->zzup:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzawb;->zzau(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "Interstitials that show when your app is in the background are a violation of AdMob policies and may lead to blocked ad serving. To learn more, visit  https://googlemobileadssdk.page.link/admob-interstitial-policies"

    .line 19
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzayu;->zzez(Ljava/lang/String;)V

    .line 20
    sget-object v0, Lcom/google/android/gms/internal/ads/zzzn;->zzcio:Lcom/google/android/gms/internal/ads/zzzc;

    .line 21
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzve;->zzoy()Lcom/google/android/gms/internal/ads/zzzj;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/zzzj;->zzd(Lcom/google/android/gms/internal/ads/zzzc;)Ljava/lang/Object;

    move-result-object v0

    .line 22
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 23
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbtu;->zzfjb:Lcom/google/android/gms/gass/zzf;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbmd;->zzfbl:Lcom/google/android/gms/internal/ads/zzczt;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzczt;->zzgmi:Lcom/google/android/gms/internal/ads/zzczr;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzczr;->zzgmf:Lcom/google/android/gms/internal/ads/zzczn;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzczn;->zzbzo:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/gass/zzf;->zzgq(Ljava/lang/String;)V

    :cond_0
    return v1

    .line 25
    :cond_1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbtu;->zzfjc:Z

    if-nez v0, :cond_2

    const/4 v0, 0x1

    return v0

    :cond_2
    return v1
.end method

.method public final zzbg(Z)V
    .locals 2

    .line 10
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbtu;->zzfiy:Lcom/google/android/gms/internal/ads/zzbsk;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbsk;->zzahx()V

    .line 11
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbtu;->zzfiz:Lcom/google/android/gms/internal/ads/zzbuv;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbtu;->zzup:Landroid/content/Context;

    invoke-interface {v0, p1, v1}, Lcom/google/android/gms/internal/ads/zzbuv;->zza(ZLandroid/content/Context;)V

    const/4 p1, 0x1

    .line 12
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzbtu;->zzfjc:Z

    return-void
.end method
