.class public Lcom/floatingtunes/youtubeplayer/topmusic/admediation/AdmobNative;
.super Ljava/lang/Object;
.source "AdmobNative.java"


# instance fields
.field private adLoader:Lcom/google/android/gms/ads/AdLoader;

.field private adView:Lcom/google/android/gms/ads/formats/UnifiedNativeAdView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/floatingtunes/youtubeplayer/topmusic/admediation/AdmobNative;)Lcom/google/android/gms/ads/AdLoader;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/admediation/AdmobNative;->adLoader:Lcom/google/android/gms/ads/AdLoader;

    return-object p0
.end method

.method static synthetic access$100(Lcom/floatingtunes/youtubeplayer/topmusic/admediation/AdmobNative;)Lcom/google/android/gms/ads/formats/UnifiedNativeAdView;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/admediation/AdmobNative;->adView:Lcom/google/android/gms/ads/formats/UnifiedNativeAdView;

    return-object p0
.end method

.method static synthetic access$102(Lcom/floatingtunes/youtubeplayer/topmusic/admediation/AdmobNative;Lcom/google/android/gms/ads/formats/UnifiedNativeAdView;)Lcom/google/android/gms/ads/formats/UnifiedNativeAdView;
    .locals 0

    .line 19
    iput-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/admediation/AdmobNative;->adView:Lcom/google/android/gms/ads/formats/UnifiedNativeAdView;

    return-object p1
.end method

.method static synthetic access$200(Lcom/floatingtunes/youtubeplayer/topmusic/admediation/AdmobNative;Lcom/google/android/gms/ads/formats/UnifiedNativeAdView;Lcom/google/android/gms/ads/formats/UnifiedNativeAd;)V
    .locals 0

    .line 19
    invoke-direct {p0, p1, p2}, Lcom/floatingtunes/youtubeplayer/topmusic/admediation/AdmobNative;->initLayout(Lcom/google/android/gms/ads/formats/UnifiedNativeAdView;Lcom/google/android/gms/ads/formats/UnifiedNativeAd;)V

    return-void
.end method

.method private initLayout(Lcom/google/android/gms/ads/formats/UnifiedNativeAdView;Lcom/google/android/gms/ads/formats/UnifiedNativeAd;)V
    .locals 2

    const v0, 0x7f09019f

    .line 76
    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 77
    invoke-virtual {p2}, Lcom/google/android/gms/ads/formats/UnifiedNativeAd;->getHeadline()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 78
    invoke-virtual {p1, v0}, Lcom/google/android/gms/ads/formats/UnifiedNativeAdView;->setHeadlineView(Landroid/view/View;)V

    const v0, 0x7f09019e

    .line 80
    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 81
    invoke-virtual {p2}, Lcom/google/android/gms/ads/formats/UnifiedNativeAd;->getBody()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 82
    invoke-virtual {p1, v0}, Lcom/google/android/gms/ads/formats/UnifiedNativeAdView;->setBodyView(Landroid/view/View;)V

    const v0, 0x7f09019b

    .line 84
    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 86
    invoke-virtual {p2}, Lcom/google/android/gms/ads/formats/UnifiedNativeAd;->getIcon()Lcom/google/android/gms/ads/formats/NativeAd$Image;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 87
    invoke-virtual {p2}, Lcom/google/android/gms/ads/formats/UnifiedNativeAd;->getIcon()Lcom/google/android/gms/ads/formats/NativeAd$Image;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/ads/formats/NativeAd$Image;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 88
    invoke-virtual {p1, v0}, Lcom/google/android/gms/ads/formats/UnifiedNativeAdView;->setIconView(Landroid/view/View;)V

    :cond_0
    const v0, 0x7f09019a

    .line 91
    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 92
    invoke-virtual {p2}, Lcom/google/android/gms/ads/formats/UnifiedNativeAd;->getCallToAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 93
    invoke-virtual {p1, v0}, Lcom/google/android/gms/ads/formats/UnifiedNativeAdView;->setCallToActionView(Landroid/view/View;)V

    const v0, 0x7f090022

    .line 95
    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/ads/formats/MediaView;

    .line 96
    invoke-virtual {p1, v0}, Lcom/google/android/gms/ads/formats/UnifiedNativeAdView;->setMediaView(Lcom/google/android/gms/ads/formats/MediaView;)V

    .line 98
    invoke-virtual {p1, p2}, Lcom/google/android/gms/ads/formats/UnifiedNativeAdView;->setNativeAd(Lcom/google/android/gms/ads/formats/UnifiedNativeAd;)V

    return-void
.end method


# virtual methods
.method public load(Landroid/content/Context;Ljava/lang/String;Landroid/view/ViewGroup;ILcom/floatingtunes/youtubeplayer/topmusic/admediation/AmListener;)V
    .locals 8

    .line 26
    new-instance v0, Lcom/google/android/gms/ads/AdLoader$Builder;

    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/ads/AdLoader$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v7, Lcom/floatingtunes/youtubeplayer/topmusic/admediation/AdmobNative$2;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move v4, p4

    move-object v5, p3

    move-object v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/floatingtunes/youtubeplayer/topmusic/admediation/AdmobNative$2;-><init>(Lcom/floatingtunes/youtubeplayer/topmusic/admediation/AdmobNative;Landroid/content/Context;ILandroid/view/ViewGroup;Lcom/floatingtunes/youtubeplayer/topmusic/admediation/AmListener;)V

    .line 27
    invoke-virtual {v0, v7}, Lcom/google/android/gms/ads/AdLoader$Builder;->forUnifiedNativeAd(Lcom/google/android/gms/ads/formats/UnifiedNativeAd$OnUnifiedNativeAdLoadedListener;)Lcom/google/android/gms/ads/AdLoader$Builder;

    move-result-object p3

    new-instance p4, Lcom/floatingtunes/youtubeplayer/topmusic/admediation/AdmobNative$1;

    invoke-direct {p4, p0, p5, p2, p1}, Lcom/floatingtunes/youtubeplayer/topmusic/admediation/AdmobNative$1;-><init>(Lcom/floatingtunes/youtubeplayer/topmusic/admediation/AdmobNative;Lcom/floatingtunes/youtubeplayer/topmusic/admediation/AmListener;Ljava/lang/String;Landroid/content/Context;)V

    .line 48
    invoke-virtual {p3, p4}, Lcom/google/android/gms/ads/AdLoader$Builder;->withAdListener(Lcom/google/android/gms/ads/AdListener;)Lcom/google/android/gms/ads/AdLoader$Builder;

    move-result-object p1

    new-instance p2, Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;

    invoke-direct {p2}, Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;-><init>()V

    .line 68
    invoke-virtual {p2}, Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;->build()Lcom/google/android/gms/ads/formats/NativeAdOptions;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/android/gms/ads/AdLoader$Builder;->withNativeAdOptions(Lcom/google/android/gms/ads/formats/NativeAdOptions;)Lcom/google/android/gms/ads/AdLoader$Builder;

    move-result-object p1

    .line 69
    invoke-virtual {p1}, Lcom/google/android/gms/ads/AdLoader$Builder;->build()Lcom/google/android/gms/ads/AdLoader;

    move-result-object p1

    iput-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/admediation/AdmobNative;->adLoader:Lcom/google/android/gms/ads/AdLoader;

    .line 71
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/admediation/AdmobNative;->adLoader:Lcom/google/android/gms/ads/AdLoader;

    new-instance p2, Lcom/google/android/gms/ads/AdRequest$Builder;

    invoke-direct {p2}, Lcom/google/android/gms/ads/AdRequest$Builder;-><init>()V

    invoke-virtual {p2}, Lcom/google/android/gms/ads/AdRequest$Builder;->build()Lcom/google/android/gms/ads/AdRequest;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/android/gms/ads/AdLoader;->loadAd(Lcom/google/android/gms/ads/AdRequest;)V

    return-void
.end method
