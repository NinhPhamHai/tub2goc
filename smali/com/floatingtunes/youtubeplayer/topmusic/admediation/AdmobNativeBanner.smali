.class public Lcom/floatingtunes/youtubeplayer/topmusic/admediation/AdmobNativeBanner;
.super Ljava/lang/Object;
.source "AdmobNativeBanner.java"


# instance fields
.field private adLoader:Lcom/google/android/gms/ads/AdLoader;

.field private adView:Lcom/google/android/gms/ads/formats/UnifiedNativeAdView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/floatingtunes/youtubeplayer/topmusic/admediation/AdmobNativeBanner;)Lcom/google/android/gms/ads/AdLoader;
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/admediation/AdmobNativeBanner;->adLoader:Lcom/google/android/gms/ads/AdLoader;

    return-object p0
.end method

.method static synthetic access$100(Lcom/floatingtunes/youtubeplayer/topmusic/admediation/AdmobNativeBanner;)Lcom/google/android/gms/ads/formats/UnifiedNativeAdView;
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/admediation/AdmobNativeBanner;->adView:Lcom/google/android/gms/ads/formats/UnifiedNativeAdView;

    return-object p0
.end method

.method static synthetic access$102(Lcom/floatingtunes/youtubeplayer/topmusic/admediation/AdmobNativeBanner;Lcom/google/android/gms/ads/formats/UnifiedNativeAdView;)Lcom/google/android/gms/ads/formats/UnifiedNativeAdView;
    .locals 0

    .line 17
    iput-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/admediation/AdmobNativeBanner;->adView:Lcom/google/android/gms/ads/formats/UnifiedNativeAdView;

    return-object p1
.end method

.method static synthetic access$200(Lcom/floatingtunes/youtubeplayer/topmusic/admediation/AdmobNativeBanner;Lcom/google/android/gms/ads/formats/UnifiedNativeAdView;Lcom/google/android/gms/ads/formats/UnifiedNativeAd;)V
    .locals 0

    .line 17
    invoke-direct {p0, p1, p2}, Lcom/floatingtunes/youtubeplayer/topmusic/admediation/AdmobNativeBanner;->initLayout(Lcom/google/android/gms/ads/formats/UnifiedNativeAdView;Lcom/google/android/gms/ads/formats/UnifiedNativeAd;)V

    return-void
.end method

.method private initLayout(Lcom/google/android/gms/ads/formats/UnifiedNativeAdView;Lcom/google/android/gms/ads/formats/UnifiedNativeAd;)V
    .locals 2

    const v0, 0x7f09019f

    .line 65
    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 66
    invoke-virtual {p2}, Lcom/google/android/gms/ads/formats/UnifiedNativeAd;->getHeadline()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 67
    invoke-virtual {p1, v0}, Lcom/google/android/gms/ads/formats/UnifiedNativeAdView;->setHeadlineView(Landroid/view/View;)V

    const v0, 0x7f09019e

    .line 69
    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 70
    invoke-virtual {p2}, Lcom/google/android/gms/ads/formats/UnifiedNativeAd;->getBody()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 71
    invoke-virtual {p1, v0}, Lcom/google/android/gms/ads/formats/UnifiedNativeAdView;->setBodyView(Landroid/view/View;)V

    const v0, 0x7f09019b

    .line 73
    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 74
    invoke-virtual {p2}, Lcom/google/android/gms/ads/formats/UnifiedNativeAd;->getIcon()Lcom/google/android/gms/ads/formats/NativeAd$Image;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 75
    invoke-virtual {p2}, Lcom/google/android/gms/ads/formats/UnifiedNativeAd;->getIcon()Lcom/google/android/gms/ads/formats/NativeAd$Image;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/ads/formats/NativeAd$Image;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 76
    invoke-virtual {p1, v0}, Lcom/google/android/gms/ads/formats/UnifiedNativeAdView;->setIconView(Landroid/view/View;)V

    :cond_0
    const v0, 0x7f09019a

    .line 78
    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 79
    invoke-virtual {p2}, Lcom/google/android/gms/ads/formats/UnifiedNativeAd;->getCallToAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 80
    invoke-virtual {p1, v0}, Lcom/google/android/gms/ads/formats/UnifiedNativeAdView;->setCallToActionView(Landroid/view/View;)V

    .line 82
    invoke-virtual {p1, p2}, Lcom/google/android/gms/ads/formats/UnifiedNativeAdView;->setNativeAd(Lcom/google/android/gms/ads/formats/UnifiedNativeAd;)V

    return-void
.end method


# virtual methods
.method public load(Landroid/content/Context;Ljava/lang/String;Landroid/view/ViewGroup;Lcom/floatingtunes/youtubeplayer/topmusic/admediation/AmListener;)V
    .locals 1

    .line 25
    new-instance v0, Lcom/google/android/gms/ads/AdLoader$Builder;

    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/ads/AdLoader$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    new-instance p2, Lcom/floatingtunes/youtubeplayer/topmusic/admediation/AdmobNativeBanner$2;

    invoke-direct {p2, p0, p1, p3, p4}, Lcom/floatingtunes/youtubeplayer/topmusic/admediation/AdmobNativeBanner$2;-><init>(Lcom/floatingtunes/youtubeplayer/topmusic/admediation/AdmobNativeBanner;Landroid/content/Context;Landroid/view/ViewGroup;Lcom/floatingtunes/youtubeplayer/topmusic/admediation/AmListener;)V

    .line 26
    invoke-virtual {v0, p2}, Lcom/google/android/gms/ads/AdLoader$Builder;->forUnifiedNativeAd(Lcom/google/android/gms/ads/formats/UnifiedNativeAd$OnUnifiedNativeAdLoadedListener;)Lcom/google/android/gms/ads/AdLoader$Builder;

    move-result-object p1

    new-instance p2, Lcom/floatingtunes/youtubeplayer/topmusic/admediation/AdmobNativeBanner$1;

    invoke-direct {p2, p0}, Lcom/floatingtunes/youtubeplayer/topmusic/admediation/AdmobNativeBanner$1;-><init>(Lcom/floatingtunes/youtubeplayer/topmusic/admediation/AdmobNativeBanner;)V

    .line 48
    invoke-virtual {p1, p2}, Lcom/google/android/gms/ads/AdLoader$Builder;->withAdListener(Lcom/google/android/gms/ads/AdListener;)Lcom/google/android/gms/ads/AdLoader$Builder;

    move-result-object p1

    new-instance p2, Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;

    invoke-direct {p2}, Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;-><init>()V

    .line 57
    invoke-virtual {p2}, Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;->build()Lcom/google/android/gms/ads/formats/NativeAdOptions;

    move-result-object p2

    .line 55
    invoke-virtual {p1, p2}, Lcom/google/android/gms/ads/AdLoader$Builder;->withNativeAdOptions(Lcom/google/android/gms/ads/formats/NativeAdOptions;)Lcom/google/android/gms/ads/AdLoader$Builder;

    move-result-object p1

    .line 58
    invoke-virtual {p1}, Lcom/google/android/gms/ads/AdLoader$Builder;->build()Lcom/google/android/gms/ads/AdLoader;

    move-result-object p1

    iput-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/admediation/AdmobNativeBanner;->adLoader:Lcom/google/android/gms/ads/AdLoader;

    .line 60
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/admediation/AdmobNativeBanner;->adLoader:Lcom/google/android/gms/ads/AdLoader;

    new-instance p2, Lcom/google/android/gms/ads/AdRequest$Builder;

    invoke-direct {p2}, Lcom/google/android/gms/ads/AdRequest$Builder;-><init>()V

    invoke-virtual {p2}, Lcom/google/android/gms/ads/AdRequest$Builder;->build()Lcom/google/android/gms/ads/AdRequest;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/android/gms/ads/AdLoader;->loadAd(Lcom/google/android/gms/ads/AdRequest;)V

    return-void
.end method
