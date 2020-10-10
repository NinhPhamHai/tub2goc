.class Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter$1$1;
.super Ljava/lang/Object;
.source "MoPubAdapter.java"

# interfaces
.implements Lcom/mopub/mobileads/dfp/adapters/DrawableDownloadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter$1;->onNativeLoad(Lcom/mopub/nativeads/NativeAd;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter$1;

.field final synthetic val$staticNativeAd:Lcom/mopub/nativeads/StaticNativeAd;


# direct methods
.method constructor <init>(Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter$1;Lcom/mopub/nativeads/StaticNativeAd;)V
    .locals 0

    .line 159
    iput-object p1, p0, Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter$1$1;->this$1:Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter$1;

    iput-object p2, p0, Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter$1$1;->val$staticNativeAd:Lcom/mopub/nativeads/StaticNativeAd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDownloadFailure()V
    .locals 3

    .line 194
    iget-object v0, p0, Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter$1$1;->this$1:Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter$1;

    iget-object v1, v0, Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter$1;->val$listener:Lcom/google/android/gms/ads/mediation/MediationNativeListener;

    iget-object v0, v0, Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter$1;->this$0:Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Lcom/google/android/gms/ads/mediation/MediationNativeListener;->onAdFailedToLoad(Lcom/google/android/gms/ads/mediation/MediationNativeAdapter;I)V

    return-void
.end method

.method public onDownloadSuccess(Ljava/util/HashMap;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/graphics/drawable/Drawable;",
            ">;)V"
        }
    .end annotation

    .line 166
    :try_start_0
    new-instance v0, Lcom/mopub/mobileads/dfp/adapters/MoPubNativeAppInstallAdMapper;

    iget-object v1, p0, Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter$1$1;->val$staticNativeAd:Lcom/mopub/nativeads/StaticNativeAd;

    iget-object v2, p0, Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter$1$1;->this$1:Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter$1;

    iget-object v2, v2, Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter$1;->this$0:Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter;

    .line 170
    invoke-static {v2}, Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter;->access$100(Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter;)I

    move-result v2

    iget-object v3, p0, Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter$1$1;->this$1:Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter$1;

    iget-object v3, v3, Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter$1;->this$0:Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter;

    .line 171
    invoke-static {v3}, Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter;->access$200(Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter;)I

    move-result v3

    invoke-direct {v0, v1, p1, v2, v3}, Lcom/mopub/mobileads/dfp/adapters/MoPubNativeAppInstallAdMapper;-><init>(Lcom/mopub/nativeads/StaticNativeAd;Ljava/util/HashMap;II)V

    .line 175
    new-instance v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter$1$1;->this$1:Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter$1;

    iget-object v2, v2, Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter$1;->val$context:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const-string v2, "image_key"

    .line 176
    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 178
    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/mediation/NativeAdMapper;->setMediaView(Landroid/view/View;)V

    .line 180
    iget-object p1, p0, Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter$1$1;->this$1:Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter$1;

    iget-object p1, p1, Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter$1;->val$listener:Lcom/google/android/gms/ads/mediation/MediationNativeListener;

    iget-object v1, p0, Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter$1$1;->this$1:Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter$1;

    iget-object v1, v1, Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter$1;->this$0:Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter;

    invoke-interface {p1, v1, v0}, Lcom/google/android/gms/ads/mediation/MediationNativeListener;->onAdLoaded(Lcom/google/android/gms/ads/mediation/MediationNativeAdapter;Lcom/google/android/gms/ads/mediation/NativeAdMapper;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 184
    :catch_0
    sget-object p1, Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter;->TAG:Ljava/lang/String;

    const-string v0, "Exception trying to download native ad drawables"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    iget-object p1, p0, Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter$1$1;->this$1:Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter$1;

    iget-object v0, p1, Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter$1;->val$listener:Lcom/google/android/gms/ads/mediation/MediationNativeListener;

    iget-object p1, p1, Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter$1;->this$0:Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/google/android/gms/ads/mediation/MediationNativeListener;->onAdFailedToLoad(Lcom/google/android/gms/ads/mediation/MediationNativeAdapter;I)V

    :goto_0
    return-void
.end method
