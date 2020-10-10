.class public final Lcom/google/android/gms/ads/AdRequest$Builder;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@18.3.0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/ads/AdRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final zzabe:Lcom/google/android/gms/internal/ads/zzxm;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/google/android/gms/internal/ads/zzxm;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzxm;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/ads/AdRequest$Builder;->zzabe:Lcom/google/android/gms/internal/ads/zzxm;

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/ads/AdRequest$Builder;->zzabe:Lcom/google/android/gms/internal/ads/zzxm;

    const-string v1, "B3EEABB8EE11C2BE770B684D95219ECB"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzxm;->zzcg(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/ads/AdRequest$Builder;)Lcom/google/android/gms/internal/ads/zzxm;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/google/android/gms/ads/AdRequest$Builder;->zzabe:Lcom/google/android/gms/internal/ads/zzxm;

    return-object p0
.end method


# virtual methods
.method public final addCustomEventExtrasBundle(Ljava/lang/Class;Landroid/os/Bundle;)Lcom/google/android/gms/ads/AdRequest$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/google/android/gms/ads/mediation/customevent/CustomEvent;",
            ">;",
            "Landroid/os/Bundle;",
            ")",
            "Lcom/google/android/gms/ads/AdRequest$Builder;"
        }
    .end annotation

    .line 14
    iget-object v0, p0, Lcom/google/android/gms/ads/AdRequest$Builder;->zzabe:Lcom/google/android/gms/internal/ads/zzxm;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzxm;->zzb(Ljava/lang/Class;Landroid/os/Bundle;)V

    return-object p0
.end method

.method public final addKeyword(Ljava/lang/String;)Lcom/google/android/gms/ads/AdRequest$Builder;
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/ads/AdRequest$Builder;->zzabe:Lcom/google/android/gms/internal/ads/zzxm;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzxm;->zzcf(Ljava/lang/String;)V

    return-object p0
.end method

.method public final addNetworkExtras(Lcom/google/android/gms/ads/mediation/NetworkExtras;)Lcom/google/android/gms/ads/AdRequest$Builder;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/ads/AdRequest$Builder;->zzabe:Lcom/google/android/gms/internal/ads/zzxm;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzxm;->zza(Lcom/google/android/gms/ads/mediation/NetworkExtras;)V

    return-object p0
.end method

.method public final addNetworkExtrasBundle(Ljava/lang/Class;Landroid/os/Bundle;)Lcom/google/android/gms/ads/AdRequest$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/google/android/gms/ads/mediation/MediationExtrasReceiver;",
            ">;",
            "Landroid/os/Bundle;",
            ")",
            "Lcom/google/android/gms/ads/AdRequest$Builder;"
        }
    .end annotation

    .line 9
    iget-object v0, p0, Lcom/google/android/gms/ads/AdRequest$Builder;->zzabe:Lcom/google/android/gms/internal/ads/zzxm;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzxm;->zza(Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 10
    const-class v0, Lcom/google/ads/mediation/admob/AdMobAdapter;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "_emulatorLiveAds"

    .line 11
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 12
    iget-object p1, p0, Lcom/google/android/gms/ads/AdRequest$Builder;->zzabe:Lcom/google/android/gms/internal/ads/zzxm;

    const-string p2, "B3EEABB8EE11C2BE770B684D95219ECB"

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzxm;->zzch(Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method public final addTestDevice(Ljava/lang/String;)Lcom/google/android/gms/ads/AdRequest$Builder;
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/google/android/gms/ads/AdRequest$Builder;->zzabe:Lcom/google/android/gms/internal/ads/zzxm;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzxm;->zzcg(Ljava/lang/String;)V

    return-object p0
.end method

.method public final build()Lcom/google/android/gms/ads/AdRequest;
    .locals 2

    .line 18
    new-instance v0, Lcom/google/android/gms/ads/AdRequest;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/ads/AdRequest;-><init>(Lcom/google/android/gms/ads/AdRequest$Builder;Lcom/google/android/gms/ads/zza;)V

    return-object v0
.end method

.method public final setAdData(Lcom/google/android/gms/ads/query/AdData;)Lcom/google/android/gms/ads/AdRequest$Builder;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/google/android/gms/ads/AdRequest$Builder;->zzabe:Lcom/google/android/gms/internal/ads/zzxm;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzxm;->zza(Lcom/google/android/gms/ads/query/AdData;)V

    return-object p0
.end method

.method public final setBirthday(Ljava/util/Date;)Lcom/google/android/gms/ads/AdRequest$Builder;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 19
    iget-object v0, p0, Lcom/google/android/gms/ads/AdRequest$Builder;->zzabe:Lcom/google/android/gms/internal/ads/zzxm;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzxm;->zza(Ljava/util/Date;)V

    return-object p0
.end method

.method public final setContentUrl(Ljava/lang/String;)Lcom/google/android/gms/ads/AdRequest$Builder;
    .locals 5

    const-string v0, "Content URL must be non-null."

    .line 21
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Content URL must be non-empty."

    .line 22
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 24
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v3, 0x200

    if-gt v0, v3, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    .line 25
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v4, v2

    .line 26
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v1

    const-string v1, "Content URL must not exceed %d in length.  Provided length was %d."

    .line 27
    invoke-static {v0, v1, v4}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 28
    iget-object v0, p0, Lcom/google/android/gms/ads/AdRequest$Builder;->zzabe:Lcom/google/android/gms/internal/ads/zzxm;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzxm;->zzci(Ljava/lang/String;)V

    return-object p0
.end method

.method public final setGender(I)Lcom/google/android/gms/ads/AdRequest$Builder;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 30
    iget-object v0, p0, Lcom/google/android/gms/ads/AdRequest$Builder;->zzabe:Lcom/google/android/gms/internal/ads/zzxm;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzxm;->zzcl(I)V

    return-object p0
.end method

.method public final setIsDesignedForFamilies(Z)Lcom/google/android/gms/ads/AdRequest$Builder;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 38
    iget-object v0, p0, Lcom/google/android/gms/ads/AdRequest$Builder;->zzabe:Lcom/google/android/gms/internal/ads/zzxm;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzxm;->zzaa(Z)V

    return-object p0
.end method

.method public final setLocation(Landroid/location/Location;)Lcom/google/android/gms/ads/AdRequest$Builder;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/google/android/gms/ads/AdRequest$Builder;->zzabe:Lcom/google/android/gms/internal/ads/zzxm;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzxm;->zza(Landroid/location/Location;)V

    return-object p0
.end method

.method public final setMaxAdContentRating(Ljava/lang/String;)Lcom/google/android/gms/ads/AdRequest$Builder;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 44
    iget-object v0, p0, Lcom/google/android/gms/ads/AdRequest$Builder;->zzabe:Lcom/google/android/gms/internal/ads/zzxm;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzxm;->zzcm(Ljava/lang/String;)V

    return-object p0
.end method

.method public final setRequestAgent(Ljava/lang/String;)Lcom/google/android/gms/ads/AdRequest$Builder;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/google/android/gms/ads/AdRequest$Builder;->zzabe:Lcom/google/android/gms/internal/ads/zzxm;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzxm;->zzck(Ljava/lang/String;)V

    return-object p0
.end method

.method public final setTagForUnderAgeOfConsent(I)Lcom/google/android/gms/ads/AdRequest$Builder;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 42
    iget-object v0, p0, Lcom/google/android/gms/ads/AdRequest$Builder;->zzabe:Lcom/google/android/gms/internal/ads/zzxm;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzxm;->zzcm(I)V

    return-object p0
.end method

.method public final tagForChildDirectedTreatment(Z)Lcom/google/android/gms/ads/AdRequest$Builder;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 36
    iget-object v0, p0, Lcom/google/android/gms/ads/AdRequest$Builder;->zzabe:Lcom/google/android/gms/internal/ads/zzxm;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzxm;->zzz(Z)V

    return-object p0
.end method
