.class public Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter;
.super Ljava/lang/Object;
.source "MoPubAdapter.java"

# interfaces
.implements Lcom/google/android/gms/ads/mediation/MediationNativeAdapter;
.implements Lcom/google/android/gms/ads/mediation/MediationBannerAdapter;
.implements Lcom/google/android/gms/ads/mediation/MediationInterstitialAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter$BundleBuilder;,
        Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter$mMediationInterstitialListener;,
        Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter$MBannerListener;
    }
.end annotation


# static fields
.field public static final DEFAULT_MOPUB_IMAGE_SCALE:D = 1.0

.field public static final MOPUB_NATIVE_CEVENT_VERSION:Ljava/lang/String; = "gmext"

.field public static final TAG:Ljava/lang/String; = "MoPubAdapter"


# instance fields
.field private mAdSize:Lcom/google/android/gms/ads/AdSize;

.field private mMediationInterstitialListener:Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;

.field private mMoPubInterstitial:Lcom/mopub/mobileads/MoPubInterstitial;

.field private mMoPubNativeEventListener:Lcom/mopub/nativeads/NativeAd$MoPubNativeEventListener;

.field private mMoPubView:Lcom/mopub/mobileads/MoPubView;

.field private mPrivacyIconSize:I

.field private privacyIconPlacement:I

.field private requestParameters:Lcom/mopub/nativeads/RequestParameters;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter;)Lcom/mopub/nativeads/NativeAd$MoPubNativeEventListener;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter;->mMoPubNativeEventListener:Lcom/mopub/nativeads/NativeAd$MoPubNativeEventListener;

    return-object p0
.end method

.method static synthetic access$100(Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter;)I
    .locals 0

    .line 57
    iget p0, p0, Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter;->privacyIconPlacement:I

    return p0
.end method

.method static synthetic access$200(Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter;)I
    .locals 0

    .line 57
    iget p0, p0, Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter;->mPrivacyIconSize:I

    return p0
.end method

.method static synthetic access$300(Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter;)Lcom/mopub/nativeads/RequestParameters;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter;->requestParameters:Lcom/mopub/nativeads/RequestParameters;

    return-object p0
.end method

.method static synthetic access$400(Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter;)Lcom/mopub/mobileads/MoPubView;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter;->mMoPubView:Lcom/mopub/mobileads/MoPubView;

    return-object p0
.end method

.method static synthetic access$500(Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter;)Lcom/google/android/gms/ads/AdSize;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter;->mAdSize:Lcom/google/android/gms/ads/AdSize;

    return-object p0
.end method

.method static synthetic access$600(Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter;)Lcom/mopub/mobileads/MoPubInterstitial;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter;->mMoPubInterstitial:Lcom/mopub/mobileads/MoPubInterstitial;

    return-object p0
.end method

.method public static findClosestSize(Landroid/content/Context;Lcom/google/android/gms/ads/AdSize;Ljava/util/ArrayList;)Lcom/google/android/gms/ads/AdSize;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/gms/ads/AdSize;",
            "Ljava/util/ArrayList<",
            "Lcom/google/android/gms/ads/AdSize;",
            ">;)",
            "Lcom/google/android/gms/ads/AdSize;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p2, :cond_3

    if-nez p1, :cond_0

    goto :goto_2

    .line 354
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    .line 355
    invoke-virtual {p1, p0}, Lcom/google/android/gms/ads/AdSize;->getWidthInPixels(Landroid/content/Context;)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v1

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 356
    invoke-virtual {p1, p0}, Lcom/google/android/gms/ads/AdSize;->getHeightInPixels(Landroid/content/Context;)I

    move-result p0

    int-to-float p0, p0

    div-float/2addr p0, v1

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    .line 357
    new-instance p1, Lcom/google/android/gms/ads/AdSize;

    invoke-direct {p1, v2, p0}, Lcom/google/android/gms/ads/AdSize;-><init>(II)V

    .line 359
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/ads/AdSize;

    .line 360
    invoke-static {p1, p2}, Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter;->isSizeInRange(Lcom/google/android/gms/ads/AdSize;Lcom/google/android/gms/ads/AdSize;)Z

    move-result v1

    if-eqz v1, :cond_1

    if-nez v0, :cond_2

    goto :goto_1

    .line 364
    :cond_2
    invoke-static {v0, p2}, Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter;->getLargerByArea(Lcom/google/android/gms/ads/AdSize;Lcom/google/android/gms/ads/AdSize;)Lcom/google/android/gms/ads/AdSize;

    move-result-object p2

    :goto_1
    move-object v0, p2

    goto :goto_0

    :cond_3
    :goto_2
    return-object v0
.end method

.method private static getAge(Ljava/util/Date;)I
    .locals 2

    const-string v0, "yyyy"

    .line 455
    invoke-static {v0, p0}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Date;)Ljava/lang/CharSequence;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    .line 456
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    sub-int/2addr v0, p0

    return v0
.end method

.method public static getKeywords(Lcom/google/android/gms/ads/mediation/MediationAdRequest;Z)Ljava/lang/String;
    .locals 5

    .line 412
    invoke-interface {p0}, Lcom/google/android/gms/ads/mediation/MediationAdRequest;->getBirthday()Ljava/util/Date;

    move-result-object v0

    const-string v1, ""

    if-eqz v0, :cond_0

    .line 416
    invoke-static {v0}, Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter;->getAge(Ljava/util/Date;)I

    move-result v0

    .line 417
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "m_age:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 420
    :goto_0
    invoke-interface {p0}, Lcom/google/android/gms/ads/mediation/MediationAdRequest;->getGender()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    const-string v2, "m_gender:f"

    goto :goto_1

    :cond_1
    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    const-string v2, "m_gender:m"

    goto :goto_1

    :cond_2
    move-object v2, v1

    .line 431
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "gmext"

    .line 433
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ","

    .line 434
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 435
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_4

    .line 438
    invoke-static {}, Lcom/mopub/common/MoPub;->canCollectPersonalInformation()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 439
    invoke-static {p0}, Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter;->keywordsContainPII(Lcom/google/android/gms/ads/mediation/MediationAdRequest;)Z

    move-result p0

    if-eqz p0, :cond_3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_3
    return-object v1

    .line 444
    :cond_4
    invoke-static {p0}, Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter;->keywordsContainPII(Lcom/google/android/gms/ads/mediation/MediationAdRequest;)Z

    move-result p0

    if-eqz p0, :cond_5

    goto :goto_2

    :cond_5
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_2
    return-object v1
.end method

.method private static getLargerByArea(Lcom/google/android/gms/ads/AdSize;Lcom/google/android/gms/ads/AdSize;)Lcom/google/android/gms/ads/AdSize;
    .locals 3

    .line 396
    invoke-virtual {p0}, Lcom/google/android/gms/ads/AdSize;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/gms/ads/AdSize;->getHeight()I

    move-result v1

    mul-int v0, v0, v1

    .line 397
    invoke-virtual {p1}, Lcom/google/android/gms/ads/AdSize;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Lcom/google/android/gms/ads/AdSize;->getHeight()I

    move-result v2

    mul-int v1, v1, v2

    if-le v0, v1, :cond_0

    goto :goto_0

    :cond_0
    move-object p0, p1

    :goto_0
    return-object p0
.end method

.method private getSupportedAdSize(Landroid/content/Context;Lcom/google/android/gms/ads/AdSize;)Lcom/google/android/gms/ads/AdSize;
    .locals 3

    .line 332
    new-instance v0, Lcom/google/android/gms/ads/AdSize;

    invoke-virtual {p2}, Lcom/google/android/gms/ads/AdSize;->getWidth()I

    move-result v1

    .line 333
    invoke-virtual {p2}, Lcom/google/android/gms/ads/AdSize;->getHeight()I

    move-result p2

    invoke-direct {v0, v1, p2}, Lcom/google/android/gms/ads/AdSize;-><init>(II)V

    .line 335
    new-instance p2, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {p2, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 336
    sget-object v1, Lcom/google/android/gms/ads/AdSize;->BANNER:Lcom/google/android/gms/ads/AdSize;

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 337
    sget-object v1, Lcom/google/android/gms/ads/AdSize;->MEDIUM_RECTANGLE:Lcom/google/android/gms/ads/AdSize;

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 338
    sget-object v1, Lcom/google/android/gms/ads/AdSize;->LEADERBOARD:Lcom/google/android/gms/ads/AdSize;

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 339
    sget-object v1, Lcom/google/android/gms/ads/AdSize;->WIDE_SKYSCRAPER:Lcom/google/android/gms/ads/AdSize;

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 340
    sget-object v1, Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter;->TAG:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    invoke-static {p1, v0, p2}, Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter;->findClosestSize(Landroid/content/Context;Lcom/google/android/gms/ads/AdSize;Ljava/util/ArrayList;)Lcom/google/android/gms/ads/AdSize;

    move-result-object p1

    return-object p1
.end method

.method private static isSizeInRange(Lcom/google/android/gms/ads/AdSize;Lcom/google/android/gms/ads/AdSize;)Z
    .locals 10

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const-wide/high16 v1, 0x3fe0000000000000L    # 0.5

    const-wide v3, 0x3fe6666666666666L    # 0.7

    .line 378
    invoke-virtual {p0}, Lcom/google/android/gms/ads/AdSize;->getWidth()I

    move-result v5

    .line 379
    invoke-virtual {p1}, Lcom/google/android/gms/ads/AdSize;->getWidth()I

    move-result v6

    .line 380
    invoke-virtual {p0}, Lcom/google/android/gms/ads/AdSize;->getHeight()I

    move-result p0

    .line 381
    invoke-virtual {p1}, Lcom/google/android/gms/ads/AdSize;->getHeight()I

    move-result p1

    int-to-double v7, v5

    mul-double v7, v7, v1

    int-to-double v1, v6

    cmpl-double v9, v7, v1

    if-gtz v9, :cond_3

    if-ge v5, v6, :cond_1

    goto :goto_0

    :cond_1
    int-to-double v1, p0

    mul-double v1, v1, v3

    int-to-double v3, p1

    cmpl-double v5, v1, v3

    if-gtz v5, :cond_3

    if-ge p0, p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 p0, 0x1

    return p0

    :cond_3
    :goto_0
    return v0
.end method

.method private static keywordsContainPII(Lcom/google/android/gms/ads/mediation/MediationAdRequest;)Z
    .locals 2

    .line 450
    invoke-interface {p0}, Lcom/google/android/gms/ads/mediation/MediationAdRequest;->getBirthday()Ljava/util/Date;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-interface {p0}, Lcom/google/android/gms/ads/mediation/MediationAdRequest;->getGender()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 451
    invoke-interface {p0}, Lcom/google/android/gms/ads/mediation/MediationAdRequest;->getLocation()Landroid/location/Location;

    move-result-object p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method


# virtual methods
.method public getBannerView()Landroid/view/View;
    .locals 1

    .line 404
    iget-object v0, p0, Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter;->mMoPubView:Lcom/mopub/mobileads/MoPubView;

    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    .line 81
    iget-object v0, p0, Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter;->mMoPubInterstitial:Lcom/mopub/mobileads/MoPubInterstitial;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 82
    invoke-virtual {v0}, Lcom/mopub/mobileads/MoPubInterstitial;->destroy()V

    .line 83
    iput-object v1, p0, Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter;->mMoPubInterstitial:Lcom/mopub/mobileads/MoPubInterstitial;

    .line 85
    :cond_0
    iget-object v0, p0, Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter;->mMoPubView:Lcom/mopub/mobileads/MoPubView;

    if-eqz v0, :cond_1

    .line 86
    invoke-virtual {v0}, Lcom/mopub/mobileads/MoPubView;->destroy()V

    .line 87
    iput-object v1, p0, Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter;->mMoPubView:Lcom/mopub/mobileads/MoPubView;

    :cond_1
    return-void
.end method

.method public onPause()V
    .locals 0

    return-void
.end method

.method public onResume()V
    .locals 0

    return-void
.end method

.method public requestBannerAd(Landroid/content/Context;Lcom/google/android/gms/ads/mediation/MediationBannerListener;Landroid/os/Bundle;Lcom/google/android/gms/ads/AdSize;Lcom/google/android/gms/ads/mediation/MediationAdRequest;Landroid/os/Bundle;)V
    .locals 1

    const-string p6, "adUnitId"

    .line 289
    invoke-virtual {p3, p6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 290
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p6

    const/4 v0, 0x1

    if-eqz p6, :cond_0

    .line 291
    sget-object p1, Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter;->TAG:Ljava/lang/String;

    const-string p3, "Missing or Invalid MoPub Ad Unit ID."

    invoke-static {p1, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    invoke-interface {p2, p0, v0}, Lcom/google/android/gms/ads/mediation/MediationBannerListener;->onAdFailedToLoad(Lcom/google/android/gms/ads/mediation/MediationBannerAdapter;I)V

    return-void

    .line 297
    :cond_0
    invoke-direct {p0, p1, p4}, Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter;->getSupportedAdSize(Landroid/content/Context;Lcom/google/android/gms/ads/AdSize;)Lcom/google/android/gms/ads/AdSize;

    move-result-object p4

    iput-object p4, p0, Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter;->mAdSize:Lcom/google/android/gms/ads/AdSize;

    .line 298
    iget-object p4, p0, Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter;->mAdSize:Lcom/google/android/gms/ads/AdSize;

    if-nez p4, :cond_1

    .line 299
    sget-object p1, Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter;->TAG:Ljava/lang/String;

    const-string p3, "Failed to request ad, AdSize is null."

    invoke-static {p1, p3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    invoke-interface {p2, p0, v0}, Lcom/google/android/gms/ads/mediation/MediationBannerListener;->onAdFailedToLoad(Lcom/google/android/gms/ads/mediation/MediationBannerAdapter;I)V

    return-void

    .line 304
    :cond_1
    new-instance p4, Lcom/mopub/mobileads/MoPubView;

    invoke-direct {p4, p1}, Lcom/mopub/mobileads/MoPubView;-><init>(Landroid/content/Context;)V

    iput-object p4, p0, Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter;->mMoPubView:Lcom/mopub/mobileads/MoPubView;

    .line 305
    iget-object p4, p0, Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter;->mMoPubView:Lcom/mopub/mobileads/MoPubView;

    new-instance p6, Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter$MBannerListener;

    invoke-direct {p6, p0, p2}, Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter$MBannerListener;-><init>(Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter;Lcom/google/android/gms/ads/mediation/MediationBannerListener;)V

    invoke-virtual {p4, p6}, Lcom/mopub/mobileads/MoPubView;->setBannerAdListener(Lcom/mopub/mobileads/MoPubView$BannerAdListener;)V

    .line 306
    iget-object p2, p0, Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter;->mMoPubView:Lcom/mopub/mobileads/MoPubView;

    invoke-virtual {p2, p3}, Lcom/mopub/mobileads/MoPubView;->setAdUnitId(Ljava/lang/String;)V

    .line 309
    invoke-interface {p5}, Lcom/google/android/gms/ads/mediation/MediationAdRequest;->isTesting()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 310
    iget-object p2, p0, Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter;->mMoPubView:Lcom/mopub/mobileads/MoPubView;

    invoke-virtual {p2, v0}, Lcom/mopub/mobileads/MoPubView;->setTesting(Z)V

    .line 314
    :cond_2
    invoke-interface {p5}, Lcom/google/android/gms/ads/mediation/MediationAdRequest;->getLocation()Landroid/location/Location;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 315
    iget-object p2, p0, Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter;->mMoPubView:Lcom/mopub/mobileads/MoPubView;

    invoke-interface {p5}, Lcom/google/android/gms/ads/mediation/MediationAdRequest;->getLocation()Landroid/location/Location;

    move-result-object p4

    invoke-virtual {p2, p4}, Lcom/mopub/mobileads/MoPubView;->setLocation(Landroid/location/Location;)V

    .line 318
    :cond_3
    iget-object p2, p0, Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter;->mMoPubView:Lcom/mopub/mobileads/MoPubView;

    const/4 p4, 0x0

    invoke-static {p5, p4}, Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter;->getKeywords(Lcom/google/android/gms/ads/mediation/MediationAdRequest;Z)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2, p4}, Lcom/mopub/mobileads/MoPubView;->setKeywords(Ljava/lang/String;)V

    .line 319
    iget-object p2, p0, Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter;->mMoPubView:Lcom/mopub/mobileads/MoPubView;

    invoke-static {p5, v0}, Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter;->getKeywords(Lcom/google/android/gms/ads/mediation/MediationAdRequest;Z)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2, p4}, Lcom/mopub/mobileads/MoPubView;->setUserDataKeywords(Ljava/lang/String;)V

    .line 321
    new-instance p2, Lcom/mopub/common/SdkConfiguration$Builder;

    invoke-direct {p2, p3}, Lcom/mopub/common/SdkConfiguration$Builder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/mopub/common/SdkConfiguration$Builder;->build()Lcom/mopub/common/SdkConfiguration;

    move-result-object p2

    .line 322
    invoke-static {}, Lcom/google/ads/mediation/mopub/MoPubSingleton;->getInstance()Lcom/google/ads/mediation/mopub/MoPubSingleton;

    move-result-object p3

    new-instance p4, Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter$4;

    invoke-direct {p4, p0}, Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter$4;-><init>(Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter;)V

    invoke-virtual {p3, p1, p2, p4}, Lcom/google/ads/mediation/mopub/MoPubSingleton;->initializeMoPubSDK(Landroid/content/Context;Lcom/mopub/common/SdkConfiguration;Lcom/mopub/common/SdkInitializationListener;)V

    return-void
.end method

.method public requestInterstitialAd(Landroid/content/Context;Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;Landroid/os/Bundle;Lcom/google/android/gms/ads/mediation/MediationAdRequest;Landroid/os/Bundle;)V
    .locals 2

    .line 531
    instance-of p5, p1, Landroid/app/Activity;

    const/4 v0, 0x1

    if-nez p5, :cond_0

    .line 532
    sget-object p1, Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter;->TAG:Ljava/lang/String;

    const-string p3, "MoPub SDK requires an Activity context to load interstitial ads."

    invoke-static {p1, p3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 533
    invoke-interface {p2, p0, v0}, Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;->onAdFailedToLoad(Lcom/google/android/gms/ads/mediation/MediationInterstitialAdapter;I)V

    return-void

    :cond_0
    const-string p5, "adUnitId"

    .line 538
    invoke-virtual {p3, p5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 539
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p5

    if-eqz p5, :cond_1

    .line 540
    sget-object p1, Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter;->TAG:Ljava/lang/String;

    const-string p3, "Missing or Invalid MoPub Ad Unit ID."

    invoke-static {p1, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 541
    invoke-interface {p2, p0, v0}, Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;->onAdFailedToLoad(Lcom/google/android/gms/ads/mediation/MediationInterstitialAdapter;I)V

    return-void

    .line 546
    :cond_1
    iput-object p2, p0, Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter;->mMediationInterstitialListener:Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;

    .line 548
    new-instance p2, Lcom/mopub/mobileads/MoPubInterstitial;

    move-object p5, p1

    check-cast p5, Landroid/app/Activity;

    invoke-direct {p2, p5, p3}, Lcom/mopub/mobileads/MoPubInterstitial;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter;->mMoPubInterstitial:Lcom/mopub/mobileads/MoPubInterstitial;

    .line 549
    iget-object p2, p0, Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter;->mMoPubInterstitial:Lcom/mopub/mobileads/MoPubInterstitial;

    new-instance p5, Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter$mMediationInterstitialListener;

    iget-object v1, p0, Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter;->mMediationInterstitialListener:Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;

    invoke-direct {p5, p0, v1}, Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter$mMediationInterstitialListener;-><init>(Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter;Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;)V

    invoke-virtual {p2, p5}, Lcom/mopub/mobileads/MoPubInterstitial;->setInterstitialAdListener(Lcom/mopub/mobileads/MoPubInterstitial$InterstitialAdListener;)V

    .line 553
    invoke-interface {p4}, Lcom/google/android/gms/ads/mediation/MediationAdRequest;->isTesting()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 554
    iget-object p2, p0, Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter;->mMoPubInterstitial:Lcom/mopub/mobileads/MoPubInterstitial;

    invoke-virtual {p2, v0}, Lcom/mopub/mobileads/MoPubInterstitial;->setTesting(Z)V

    .line 557
    :cond_2
    iget-object p2, p0, Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter;->mMoPubInterstitial:Lcom/mopub/mobileads/MoPubInterstitial;

    const/4 p5, 0x0

    invoke-static {p4, p5}, Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter;->getKeywords(Lcom/google/android/gms/ads/mediation/MediationAdRequest;Z)Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p2, p5}, Lcom/mopub/mobileads/MoPubInterstitial;->setKeywords(Ljava/lang/String;)V

    .line 558
    iget-object p2, p0, Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter;->mMoPubInterstitial:Lcom/mopub/mobileads/MoPubInterstitial;

    invoke-static {p4, v0}, Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter;->getKeywords(Lcom/google/android/gms/ads/mediation/MediationAdRequest;Z)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2, p4}, Lcom/mopub/mobileads/MoPubInterstitial;->setKeywords(Ljava/lang/String;)V

    .line 560
    new-instance p2, Lcom/mopub/common/SdkConfiguration$Builder;

    invoke-direct {p2, p3}, Lcom/mopub/common/SdkConfiguration$Builder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/mopub/common/SdkConfiguration$Builder;->build()Lcom/mopub/common/SdkConfiguration;

    move-result-object p2

    .line 561
    invoke-static {}, Lcom/google/ads/mediation/mopub/MoPubSingleton;->getInstance()Lcom/google/ads/mediation/mopub/MoPubSingleton;

    move-result-object p3

    new-instance p4, Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter$5;

    invoke-direct {p4, p0}, Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter$5;-><init>(Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter;)V

    invoke-virtual {p3, p1, p2, p4}, Lcom/google/ads/mediation/mopub/MoPubSingleton;->initializeMoPubSDK(Landroid/content/Context;Lcom/mopub/common/SdkConfiguration;Lcom/mopub/common/SdkInitializationListener;)V

    return-void
.end method

.method public requestNativeAd(Landroid/content/Context;Lcom/google/android/gms/ads/mediation/MediationNativeListener;Landroid/os/Bundle;Lcom/google/android/gms/ads/mediation/NativeMediationAdRequest;Landroid/os/Bundle;)V
    .locals 7

    const-string v0, "adUnitId"

    .line 106
    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 107
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 108
    sget-object p1, Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter;->TAG:Ljava/lang/String;

    const-string p3, "Missing or Invalid MoPub Ad Unit ID."

    invoke-static {p1, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    invoke-interface {p2, p0, v1}, Lcom/google/android/gms/ads/mediation/MediationNativeListener;->onAdFailedToLoad(Lcom/google/android/gms/ads/mediation/MediationNativeAdapter;I)V

    return-void

    .line 113
    :cond_0
    invoke-interface {p4}, Lcom/google/android/gms/ads/mediation/NativeMediationAdRequest;->getNativeAdOptions()Lcom/google/android/gms/ads/formats/NativeAdOptions;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 116
    invoke-virtual {v0}, Lcom/google/android/gms/ads/formats/NativeAdOptions;->getAdChoicesPlacement()I

    move-result v0

    iput v0, p0, Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter;->privacyIconPlacement:I

    goto :goto_0

    .line 118
    :cond_1
    iput v1, p0, Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter;->privacyIconPlacement:I

    :goto_0
    if-eqz p5, :cond_4

    const-string v0, "privacy_icon_size_dp"

    .line 121
    invoke-virtual {p5, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p5

    const/16 v0, 0xa

    if-ge p5, v0, :cond_2

    .line 123
    iput v0, p0, Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter;->mPrivacyIconSize:I

    goto :goto_1

    :cond_2
    const/16 v0, 0x1e

    if-le p5, v0, :cond_3

    .line 125
    iput v0, p0, Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter;->mPrivacyIconSize:I

    goto :goto_1

    .line 127
    :cond_3
    iput p5, p0, Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter;->mPrivacyIconSize:I

    goto :goto_1

    :cond_4
    const/16 p5, 0x14

    .line 130
    iput p5, p0, Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter;->mPrivacyIconSize:I

    .line 133
    :goto_1
    new-instance p5, Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter$1;

    invoke-direct {p5, p0, p2, p1}, Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter$1;-><init>(Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter;Lcom/google/android/gms/ads/mediation/MediationNativeListener;Landroid/content/Context;)V

    .line 233
    new-instance v0, Lcom/mopub/nativeads/MoPubNative;

    invoke-direct {v0, p1, p3, p5}, Lcom/mopub/nativeads/MoPubNative;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/mopub/nativeads/MoPubNative$MoPubNativeNetworkListener;)V

    .line 235
    new-instance p5, Lcom/mopub/nativeads/ViewBinder$Builder;

    const/4 v2, 0x0

    invoke-direct {p5, v2}, Lcom/mopub/nativeads/ViewBinder$Builder;-><init>(I)V

    invoke-virtual {p5}, Lcom/mopub/nativeads/ViewBinder$Builder;->build()Lcom/mopub/nativeads/ViewBinder;

    move-result-object p5

    .line 236
    new-instance v3, Lcom/mopub/nativeads/MoPubStaticNativeAdRenderer;

    invoke-direct {v3, p5}, Lcom/mopub/nativeads/MoPubStaticNativeAdRenderer;-><init>(Lcom/mopub/nativeads/ViewBinder;)V

    .line 238
    invoke-virtual {v0, v3}, Lcom/mopub/nativeads/MoPubNative;->registerAdRenderer(Lcom/mopub/nativeads/MoPubAdRenderer;)V

    .line 239
    sget-object p5, Lcom/mopub/nativeads/RequestParameters$NativeAdAsset;->TITLE:Lcom/mopub/nativeads/RequestParameters$NativeAdAsset;

    sget-object v3, Lcom/mopub/nativeads/RequestParameters$NativeAdAsset;->TEXT:Lcom/mopub/nativeads/RequestParameters$NativeAdAsset;

    sget-object v4, Lcom/mopub/nativeads/RequestParameters$NativeAdAsset;->CALL_TO_ACTION_TEXT:Lcom/mopub/nativeads/RequestParameters$NativeAdAsset;

    sget-object v5, Lcom/mopub/nativeads/RequestParameters$NativeAdAsset;->MAIN_IMAGE:Lcom/mopub/nativeads/RequestParameters$NativeAdAsset;

    sget-object v6, Lcom/mopub/nativeads/RequestParameters$NativeAdAsset;->ICON_IMAGE:Lcom/mopub/nativeads/RequestParameters$NativeAdAsset;

    .line 240
    invoke-static {p5, v3, v4, v5, v6}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object p5

    .line 246
    new-instance v3, Lcom/mopub/nativeads/RequestParameters$Builder;

    invoke-direct {v3}, Lcom/mopub/nativeads/RequestParameters$Builder;-><init>()V

    .line 247
    invoke-static {p4, v2}, Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter;->getKeywords(Lcom/google/android/gms/ads/mediation/MediationAdRequest;Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/mopub/nativeads/RequestParameters$Builder;->keywords(Ljava/lang/String;)Lcom/mopub/nativeads/RequestParameters$Builder;

    move-result-object v2

    .line 248
    invoke-static {p4, v1}, Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter;->getKeywords(Lcom/google/android/gms/ads/mediation/MediationAdRequest;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/mopub/nativeads/RequestParameters$Builder;->userDataKeywords(Ljava/lang/String;)Lcom/mopub/nativeads/RequestParameters$Builder;

    move-result-object v1

    .line 249
    invoke-interface {p4}, Lcom/google/android/gms/ads/mediation/MediationAdRequest;->getLocation()Landroid/location/Location;

    move-result-object p4

    invoke-virtual {v1, p4}, Lcom/mopub/nativeads/RequestParameters$Builder;->location(Landroid/location/Location;)Lcom/mopub/nativeads/RequestParameters$Builder;

    move-result-object p4

    .line 250
    invoke-virtual {p4, p5}, Lcom/mopub/nativeads/RequestParameters$Builder;->desiredAssets(Ljava/util/EnumSet;)Lcom/mopub/nativeads/RequestParameters$Builder;

    move-result-object p4

    .line 251
    invoke-virtual {p4}, Lcom/mopub/nativeads/RequestParameters$Builder;->build()Lcom/mopub/nativeads/RequestParameters;

    move-result-object p4

    iput-object p4, p0, Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter;->requestParameters:Lcom/mopub/nativeads/RequestParameters;

    .line 253
    new-instance p4, Lcom/mopub/common/SdkConfiguration$Builder;

    invoke-direct {p4, p3}, Lcom/mopub/common/SdkConfiguration$Builder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4}, Lcom/mopub/common/SdkConfiguration$Builder;->build()Lcom/mopub/common/SdkConfiguration;

    move-result-object p3

    .line 254
    invoke-static {}, Lcom/google/ads/mediation/mopub/MoPubSingleton;->getInstance()Lcom/google/ads/mediation/mopub/MoPubSingleton;

    move-result-object p4

    new-instance p5, Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter$2;

    invoke-direct {p5, p0, v0}, Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter$2;-><init>(Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter;Lcom/mopub/nativeads/MoPubNative;)V

    invoke-virtual {p4, p1, p3, p5}, Lcom/google/ads/mediation/mopub/MoPubSingleton;->initializeMoPubSDK(Landroid/content/Context;Lcom/mopub/common/SdkConfiguration;Lcom/mopub/common/SdkInitializationListener;)V

    .line 263
    new-instance p1, Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter$3;

    invoke-direct {p1, p0, p2}, Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter$3;-><init>(Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter;Lcom/google/android/gms/ads/mediation/MediationNativeListener;)V

    iput-object p1, p0, Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter;->mMoPubNativeEventListener:Lcom/mopub/nativeads/NativeAd$MoPubNativeEventListener;

    return-void
.end method

.method public showInterstitial()V
    .locals 1

    .line 572
    iget-object v0, p0, Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter;->mMoPubInterstitial:Lcom/mopub/mobileads/MoPubInterstitial;

    invoke-virtual {v0}, Lcom/mopub/mobileads/MoPubInterstitial;->isReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 573
    iget-object v0, p0, Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter;->mMoPubInterstitial:Lcom/mopub/mobileads/MoPubInterstitial;

    invoke-virtual {v0}, Lcom/mopub/mobileads/MoPubInterstitial;->show()Z

    goto :goto_0

    :cond_0
    const-string v0, "Interstitial was not ready. Unable to load the interstitial"

    .line 575
    invoke-static {v0}, Lcom/mopub/common/logging/MoPubLog;->i(Ljava/lang/String;)V

    .line 576
    iget-object v0, p0, Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter;->mMediationInterstitialListener:Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;

    if-eqz v0, :cond_1

    .line 577
    invoke-interface {v0, p0}, Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;->onAdOpened(Lcom/google/android/gms/ads/mediation/MediationInterstitialAdapter;)V

    .line 578
    iget-object v0, p0, Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter;->mMediationInterstitialListener:Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;

    invoke-interface {v0, p0}, Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;->onAdClosed(Lcom/google/android/gms/ads/mediation/MediationInterstitialAdapter;)V

    :cond_1
    :goto_0
    return-void
.end method
