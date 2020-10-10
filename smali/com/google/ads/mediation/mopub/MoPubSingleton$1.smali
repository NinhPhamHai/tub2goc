.class Lcom/google/ads/mediation/mopub/MoPubSingleton$1;
.super Ljava/lang/Object;
.source "MoPubSingleton.java"

# interfaces
.implements Lcom/mopub/common/SdkInitializationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/ads/mediation/mopub/MoPubSingleton;->initializeMoPubSDK(Landroid/content/Context;Lcom/mopub/common/SdkConfiguration;Lcom/mopub/common/SdkInitializationListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/ads/mediation/mopub/MoPubSingleton;


# direct methods
.method constructor <init>(Lcom/google/ads/mediation/mopub/MoPubSingleton;)V
    .locals 0

    .line 85
    iput-object p1, p0, Lcom/google/ads/mediation/mopub/MoPubSingleton$1;->this$0:Lcom/google/ads/mediation/mopub/MoPubSingleton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInitializationFinished()V
    .locals 2

    const-string v0, "MoPub SDK initialized."

    .line 88
    invoke-static {v0}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    .line 90
    iget-object v0, p0, Lcom/google/ads/mediation/mopub/MoPubSingleton$1;->this$0:Lcom/google/ads/mediation/mopub/MoPubSingleton;

    invoke-static {v0}, Lcom/mopub/mobileads/MoPubRewardedVideos;->setRewardedVideoListener(Lcom/mopub/mobileads/MoPubRewardedVideoListener;)V

    .line 91
    iget-object v0, p0, Lcom/google/ads/mediation/mopub/MoPubSingleton$1;->this$0:Lcom/google/ads/mediation/mopub/MoPubSingleton;

    invoke-static {v0}, Lcom/google/ads/mediation/mopub/MoPubSingleton;->access$000(Lcom/google/ads/mediation/mopub/MoPubSingleton;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mopub/common/SdkInitializationListener;

    .line 92
    invoke-interface {v1}, Lcom/mopub/common/SdkInitializationListener;->onInitializationFinished()V

    goto :goto_0

    .line 94
    :cond_0
    iget-object v0, p0, Lcom/google/ads/mediation/mopub/MoPubSingleton$1;->this$0:Lcom/google/ads/mediation/mopub/MoPubSingleton;

    invoke-static {v0}, Lcom/google/ads/mediation/mopub/MoPubSingleton;->access$000(Lcom/google/ads/mediation/mopub/MoPubSingleton;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    .line 95
    invoke-static {v0}, Lcom/google/ads/mediation/mopub/MoPubSingleton;->access$102(Z)Z

    return-void
.end method
