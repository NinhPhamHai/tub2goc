.class Lcom/floatingtunes/youtubeplayer/topmusic/admediation/AdmobNative$2;
.super Ljava/lang/Object;
.source "AdmobNative.java"

# interfaces
.implements Lcom/google/android/gms/ads/formats/UnifiedNativeAd$OnUnifiedNativeAdLoadedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/floatingtunes/youtubeplayer/topmusic/admediation/AdmobNative;->load(Landroid/content/Context;Ljava/lang/String;Landroid/view/ViewGroup;ILcom/floatingtunes/youtubeplayer/topmusic/admediation/AmListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/floatingtunes/youtubeplayer/topmusic/admediation/AdmobNative;

.field final synthetic val$container:Landroid/view/ViewGroup;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$layoutId:I

.field final synthetic val$listener:Lcom/floatingtunes/youtubeplayer/topmusic/admediation/AmListener;


# direct methods
.method constructor <init>(Lcom/floatingtunes/youtubeplayer/topmusic/admediation/AdmobNative;Landroid/content/Context;ILandroid/view/ViewGroup;Lcom/floatingtunes/youtubeplayer/topmusic/admediation/AmListener;)V
    .locals 0

    .line 27
    iput-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/admediation/AdmobNative$2;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/admediation/AdmobNative;

    iput-object p2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/admediation/AdmobNative$2;->val$context:Landroid/content/Context;

    iput p3, p0, Lcom/floatingtunes/youtubeplayer/topmusic/admediation/AdmobNative$2;->val$layoutId:I

    iput-object p4, p0, Lcom/floatingtunes/youtubeplayer/topmusic/admediation/AdmobNative$2;->val$container:Landroid/view/ViewGroup;

    iput-object p5, p0, Lcom/floatingtunes/youtubeplayer/topmusic/admediation/AdmobNative$2;->val$listener:Lcom/floatingtunes/youtubeplayer/topmusic/admediation/AmListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onUnifiedNativeAdLoaded(Lcom/google/android/gms/ads/formats/UnifiedNativeAd;)V
    .locals 4

    .line 31
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/admediation/AdmobNative$2;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/admediation/AdmobNative;

    invoke-static {v0}, Lcom/floatingtunes/youtubeplayer/topmusic/admediation/AdmobNative;->access$000(Lcom/floatingtunes/youtubeplayer/topmusic/admediation/AdmobNative;)Lcom/google/android/gms/ads/AdLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdLoader;->isLoading()Z

    move-result v0

    if-nez v0, :cond_0

    .line 35
    :try_start_0
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/admediation/AdmobNative$2;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/admediation/AdmobNative;

    iget-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/admediation/AdmobNative$2;->val$context:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iget v2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/admediation/AdmobNative$2;->val$layoutId:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/ads/formats/UnifiedNativeAdView;

    invoke-static {v0, v1}, Lcom/floatingtunes/youtubeplayer/topmusic/admediation/AdmobNative;->access$102(Lcom/floatingtunes/youtubeplayer/topmusic/admediation/AdmobNative;Lcom/google/android/gms/ads/formats/UnifiedNativeAdView;)Lcom/google/android/gms/ads/formats/UnifiedNativeAdView;

    .line 36
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/admediation/AdmobNative$2;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/admediation/AdmobNative;

    iget-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/admediation/AdmobNative$2;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/admediation/AdmobNative;

    invoke-static {v1}, Lcom/floatingtunes/youtubeplayer/topmusic/admediation/AdmobNative;->access$100(Lcom/floatingtunes/youtubeplayer/topmusic/admediation/AdmobNative;)Lcom/google/android/gms/ads/formats/UnifiedNativeAdView;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/floatingtunes/youtubeplayer/topmusic/admediation/AdmobNative;->access$200(Lcom/floatingtunes/youtubeplayer/topmusic/admediation/AdmobNative;Lcom/google/android/gms/ads/formats/UnifiedNativeAdView;Lcom/google/android/gms/ads/formats/UnifiedNativeAd;)V

    .line 37
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/admediation/AdmobNative$2;->val$container:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 38
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/admediation/AdmobNative$2;->val$container:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/admediation/AdmobNative$2;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/admediation/AdmobNative;

    invoke-static {v0}, Lcom/floatingtunes/youtubeplayer/topmusic/admediation/AdmobNative;->access$100(Lcom/floatingtunes/youtubeplayer/topmusic/admediation/AdmobNative;)Lcom/google/android/gms/ads/formats/UnifiedNativeAdView;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 39
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/admediation/AdmobNative$2;->val$listener:Lcom/floatingtunes/youtubeplayer/topmusic/admediation/AmListener;

    invoke-interface {p1}, Lcom/floatingtunes/youtubeplayer/topmusic/admediation/AmListener;->success()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 42
    :catch_0
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/admediation/AdmobNative$2;->val$listener:Lcom/floatingtunes/youtubeplayer/topmusic/admediation/AmListener;

    invoke-interface {p1}, Lcom/floatingtunes/youtubeplayer/topmusic/admediation/AmListener;->failed()V

    :cond_0
    :goto_0
    return-void
.end method
