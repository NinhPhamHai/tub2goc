.class public final Lcom/google/android/gms/internal/ads/zzcyz;
.super Lcom/google/android/gms/internal/ads/zzasj;
.source "com.google.android.gms:play-services-ads@@18.3.0"


# instance fields
.field private final zzbqz:Ljava/lang/String;

.field private final zzfhh:Lcom/google/android/gms/internal/ads/zzczs;

.field private final zzgkw:Lcom/google/android/gms/internal/ads/zzcyt;

.field private final zzgkx:Lcom/google/android/gms/internal/ads/zzcxz;

.field private zzgky:Lcom/google/android/gms/internal/ads/zzcbb;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzcyt;Lcom/google/android/gms/internal/ads/zzcxz;Lcom/google/android/gms/internal/ads/zzczs;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzasj;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcyz;->zzbqz:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcyz;->zzgkw:Lcom/google/android/gms/internal/ads/zzcyt;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzcyz;->zzgkx:Lcom/google/android/gms/internal/ads/zzcxz;

    .line 5
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzcyz;->zzfhh:Lcom/google/android/gms/internal/ads/zzczs;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzcyz;)Lcom/google/android/gms/internal/ads/zzcbb;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzcyz;->zzgky:Lcom/google/android/gms/internal/ads/zzcbb;

    return-object p0
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzcyz;Lcom/google/android/gms/internal/ads/zzcbb;)Lcom/google/android/gms/internal/ads/zzcbb;
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcyz;->zzgky:Lcom/google/android/gms/internal/ads/zzcbb;

    return-object p1
.end method


# virtual methods
.method public final getAdMetadata()Landroid/os/Bundle;
    .locals 1

    const-string v0, "#008 Must be called on the main UI thread."

    .line 42
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    .line 43
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcyz;->zzgky:Lcom/google/android/gms/internal/ads/zzcbb;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcbb;->getAdMetadata()Landroid/os/Bundle;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    return-object v0
.end method

.method public final declared-synchronized getMediationAdapterClassName()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    .line 26
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcyz;->zzgky:Lcom/google/android/gms/internal/ads/zzcbb;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcyz;->zzgky:Lcom/google/android/gms/internal/ads/zzcbb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbmd;->zzags()Lcom/google/android/gms/internal/ads/zzbom;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 27
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcyz;->zzgky:Lcom/google/android/gms/internal/ads/zzcbb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbmd;->zzags()Lcom/google/android/gms/internal/ads/zzbom;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbom;->getMediationAdapterClassName()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    .line 28
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final isLoaded()Z
    .locals 1

    const-string v0, "#008 Must be called on the main UI thread."

    .line 29
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    .line 30
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcyz;->zzgky:Lcom/google/android/gms/internal/ads/zzcbb;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcbb;->zzaks()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final declared-synchronized zza(Lcom/google/android/gms/dynamic/IObjectWrapper;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    const-string v0, "#008 Must be called on the main UI thread."

    .line 17
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    .line 18
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcyz;->zzgky:Lcom/google/android/gms/internal/ads/zzcbb;

    if-nez v0, :cond_0

    const-string p1, "Rewarded can not be shown before loaded"

    .line 19
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzayu;->zzez(Ljava/lang/String;)V

    .line 20
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcyz;->zzgkx:Lcom/google/android/gms/internal/ads/zzcxz;

    const/4 p2, 0x2

    .line 21
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzcxz;->zzco(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    monitor-exit p0

    return-void

    .line 23
    :cond_0
    :try_start_1
    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    .line 24
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcyz;->zzgky:Lcom/google/android/gms/internal/ads/zzcbb;

    invoke-virtual {v0, p2, p1}, Lcom/google/android/gms/internal/ads/zzcbb;->zzb(ZLandroid/app/Activity;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 25
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzasl;)V
    .locals 1

    const-string v0, "#008 Must be called on the main UI thread."

    .line 31
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    .line 32
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcyz;->zzgkx:Lcom/google/android/gms/internal/ads/zzcxz;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzcxz;->zzb(Lcom/google/android/gms/internal/ads/zzasl;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzast;)V
    .locals 1

    const-string v0, "#008 Must be called on the main UI thread."

    .line 34
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    .line 35
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcyz;->zzgkx:Lcom/google/android/gms/internal/ads/zzcxz;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzcxz;->zzb(Lcom/google/android/gms/internal/ads/zzast;)V

    return-void
.end method

.method public final declared-synchronized zza(Lcom/google/android/gms/internal/ads/zzatb;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    const-string v0, "#008 Must be called on the main UI thread."

    .line 46
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    .line 47
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcyz;->zzfhh:Lcom/google/android/gms/internal/ads/zzczs;

    .line 48
    iget-object v1, p1, Lcom/google/android/gms/internal/ads/zzatb;->zzdnv:Ljava/lang/String;

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzczs;->zzdnv:Ljava/lang/String;

    .line 49
    sget-object v1, Lcom/google/android/gms/internal/ads/zzzn;->zzcja:Lcom/google/android/gms/internal/ads/zzzc;

    .line 50
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzve;->zzoy()Lcom/google/android/gms/internal/ads/zzzj;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzzj;->zzd(Lcom/google/android/gms/internal/ads/zzzc;)Ljava/lang/Object;

    move-result-object v1

    .line 51
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 52
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzatb;->zzdnw:Ljava/lang/String;

    iput-object p1, v0, Lcom/google/android/gms/internal/ads/zzczs;->zzdnw:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized zza(Lcom/google/android/gms/internal/ads/zzug;Lcom/google/android/gms/internal/ads/zzaso;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    const-string v0, "#008 Must be called on the main UI thread."

    .line 7
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcyz;->zzgkx:Lcom/google/android/gms/internal/ads/zzcxz;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/ads/zzcxz;->zza(Lcom/google/android/gms/internal/ads/zzaso;)V

    .line 9
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzcyz;->zzgky:Lcom/google/android/gms/internal/ads/zzcbb;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p2, :cond_0

    .line 10
    monitor-exit p0

    return-void

    .line 11
    :cond_0
    :try_start_1
    new-instance p2, Lcom/google/android/gms/internal/ads/zzcyq;

    const/4 v0, 0x0

    invoke-direct {p2, v0}, Lcom/google/android/gms/internal/ads/zzcyq;-><init>(Ljava/lang/String;)V

    .line 12
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcyz;->zzgkw:Lcom/google/android/gms/internal/ads/zzcyt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcyt;->zzaoj()V

    .line 13
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcyz;->zzgkw:Lcom/google/android/gms/internal/ads/zzcyt;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcyz;->zzbqz:Ljava/lang/String;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzcyy;

    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/ads/zzcyy;-><init>(Lcom/google/android/gms/internal/ads/zzcyz;)V

    invoke-virtual {v0, p1, v1, p2, v2}, Lcom/google/android/gms/internal/ads/zzcyt;->zza(Lcom/google/android/gms/internal/ads/zzug;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzcpa;Lcom/google/android/gms/internal/ads/zzcoz;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 14
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzwv;)V
    .locals 2

    if-nez p1, :cond_0

    .line 38
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcyz;->zzgkx:Lcom/google/android/gms/internal/ads/zzcxz;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzcxz;->zza(Lcom/google/android/gms/ads/reward/AdMetadataListener;)V

    return-void

    .line 40
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcyz;->zzgkx:Lcom/google/android/gms/internal/ads/zzcxz;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzczb;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/ads/zzczb;-><init>(Lcom/google/android/gms/internal/ads/zzcyz;Lcom/google/android/gms/internal/ads/zzwv;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzcxz;->zza(Lcom/google/android/gms/ads/reward/AdMetadataListener;)V

    return-void
.end method

.method public final declared-synchronized zzh(Lcom/google/android/gms/dynamic/IObjectWrapper;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x0

    .line 15
    :try_start_0
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzcyz;->zza(Lcom/google/android/gms/dynamic/IObjectWrapper;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final zzkb()Lcom/google/android/gms/internal/ads/zzxa;
    .locals 2

    .line 54
    sget-object v0, Lcom/google/android/gms/internal/ads/zzzn;->zzcrf:Lcom/google/android/gms/internal/ads/zzzc;

    .line 55
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzve;->zzoy()Lcom/google/android/gms/internal/ads/zzzj;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzzj;->zzd(Lcom/google/android/gms/internal/ads/zzzc;)Ljava/lang/Object;

    move-result-object v0

    .line 56
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 58
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcyz;->zzgky:Lcom/google/android/gms/internal/ads/zzcbb;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbmd;->zzags()Lcom/google/android/gms/internal/ads/zzbom;

    move-result-object v0

    return-object v0

    :cond_1
    return-object v1
.end method

.method public final zzpz()Lcom/google/android/gms/internal/ads/zzasf;
    .locals 1

    const-string v0, "#008 Must be called on the main UI thread."

    .line 44
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    .line 45
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcyz;->zzgky:Lcom/google/android/gms/internal/ads/zzcbb;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcbb;->zzpz()Lcom/google/android/gms/internal/ads/zzasf;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
