.class public abstract Lcom/google/android/gms/internal/ads/zzxe;
.super Lcom/google/android/gms/internal/ads/zzgb;
.source "com.google.android.gms:play-services-ads-lite@@18.3.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzxb;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "com.google.android.gms.ads.internal.client.IVideoController"

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzgb;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static zzj(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ads/zzxb;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.google.android.gms.ads.internal.client.IVideoController"

    .line 5
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 6
    instance-of v1, v0, Lcom/google/android/gms/internal/ads/zzxb;

    if-eqz v1, :cond_1

    .line 7
    check-cast v0, Lcom/google/android/gms/internal/ads/zzxb;

    return-object v0

    .line 8
    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzxd;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzxd;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method protected final zza(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x0

    return p1

    .line 63
    :pswitch_0
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzxb;->stop()V

    .line 64
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_1

    .line 59
    :pswitch_1
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzxb;->isClickToExpandEnabled()Z

    move-result p1

    .line 60
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 61
    invoke-static {p3, p1}, Lcom/google/android/gms/internal/ads/zzge;->writeBoolean(Landroid/os/Parcel;Z)V

    goto/16 :goto_1

    .line 55
    :pswitch_2
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzxb;->zzpm()Lcom/google/android/gms/internal/ads/zzxg;

    move-result-object p1

    .line 56
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 57
    invoke-static {p3, p1}, Lcom/google/android/gms/internal/ads/zzge;->zza(Landroid/os/Parcel;Landroid/os/IInterface;)V

    goto/16 :goto_1

    .line 51
    :pswitch_3
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzxb;->isCustomControlsEnabled()Z

    move-result p1

    .line 52
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 53
    invoke-static {p3, p1}, Lcom/google/android/gms/internal/ads/zzge;->writeBoolean(Landroid/os/Parcel;Z)V

    goto/16 :goto_1

    .line 47
    :pswitch_4
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzxb;->getAspectRatio()F

    move-result p1

    .line 48
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 49
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeFloat(F)V

    goto/16 :goto_1

    .line 36
    :pswitch_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const-string p2, "com.google.android.gms.ads.internal.client.IVideoLifecycleCallbacks"

    .line 39
    invoke-interface {p1, p2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p2

    .line 40
    instance-of p4, p2, Lcom/google/android/gms/internal/ads/zzxg;

    if-eqz p4, :cond_1

    .line 41
    move-object p1, p2

    check-cast p1, Lcom/google/android/gms/internal/ads/zzxg;

    goto :goto_0

    .line 42
    :cond_1
    new-instance p2, Lcom/google/android/gms/internal/ads/zzxi;

    invoke-direct {p2, p1}, Lcom/google/android/gms/internal/ads/zzxi;-><init>(Landroid/os/IBinder;)V

    move-object p1, p2

    .line 44
    :goto_0
    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/ads/zzxb;->zza(Lcom/google/android/gms/internal/ads/zzxg;)V

    .line 45
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_1

    .line 32
    :pswitch_6
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzxb;->zzpl()F

    move-result p1

    .line 33
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 34
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeFloat(F)V

    goto :goto_1

    .line 28
    :pswitch_7
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzxb;->zzpk()F

    move-result p1

    .line 29
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 30
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeFloat(F)V

    goto :goto_1

    .line 24
    :pswitch_8
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzxb;->getPlaybackState()I

    move-result p1

    .line 25
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 26
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    .line 20
    :pswitch_9
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzxb;->isMuted()Z

    move-result p1

    .line 21
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 22
    invoke-static {p3, p1}, Lcom/google/android/gms/internal/ads/zzge;->writeBoolean(Landroid/os/Parcel;Z)V

    goto :goto_1

    .line 16
    :pswitch_a
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzge;->zza(Landroid/os/Parcel;)Z

    move-result p1

    .line 17
    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/ads/zzxb;->mute(Z)V

    .line 18
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_1

    .line 13
    :pswitch_b
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzxb;->pause()V

    .line 14
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_1

    .line 10
    :pswitch_c
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzxb;->play()V

    .line 11
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    :goto_1
    const/4 p1, 0x1

    return p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
