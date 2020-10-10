.class Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter$2;
.super Ljava/lang/Object;
.source "MoPubAdapter.java"

# interfaces
.implements Lcom/mopub/common/SdkInitializationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter;->requestNativeAd(Landroid/content/Context;Lcom/google/android/gms/ads/mediation/MediationNativeListener;Landroid/os/Bundle;Lcom/google/android/gms/ads/mediation/NativeMediationAdRequest;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter;

.field final synthetic val$moPubNative:Lcom/mopub/nativeads/MoPubNative;


# direct methods
.method constructor <init>(Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter;Lcom/mopub/nativeads/MoPubNative;)V
    .locals 0

    .line 255
    iput-object p1, p0, Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter$2;->this$0:Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter;

    iput-object p2, p0, Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter$2;->val$moPubNative:Lcom/mopub/nativeads/MoPubNative;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInitializationFinished()V
    .locals 2

    .line 258
    iget-object v0, p0, Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter$2;->val$moPubNative:Lcom/mopub/nativeads/MoPubNative;

    iget-object v1, p0, Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter$2;->this$0:Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter;

    invoke-static {v1}, Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter;->access$300(Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter;)Lcom/mopub/nativeads/RequestParameters;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mopub/nativeads/MoPubNative;->makeRequest(Lcom/mopub/nativeads/RequestParameters;)V

    return-void
.end method
