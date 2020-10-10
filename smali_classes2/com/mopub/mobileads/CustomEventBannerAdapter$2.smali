.class Lcom/mopub/mobileads/CustomEventBannerAdapter$2;
.super Ljava/lang/Object;
.source "CustomEventBannerAdapter.java"

# interfaces
.implements Lcom/mopub/mobileads/BannerVisibilityTracker$BannerVisibilityTrackerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mopub/mobileads/CustomEventBannerAdapter;->onBannerLoaded(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mopub/mobileads/CustomEventBannerAdapter;


# direct methods
.method constructor <init>(Lcom/mopub/mobileads/CustomEventBannerAdapter;)V
    .locals 0

    .line 247
    iput-object p1, p0, Lcom/mopub/mobileads/CustomEventBannerAdapter$2;->this$0:Lcom/mopub/mobileads/CustomEventBannerAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onVisibilityChanged()V
    .locals 1

    .line 250
    iget-object v0, p0, Lcom/mopub/mobileads/CustomEventBannerAdapter$2;->this$0:Lcom/mopub/mobileads/CustomEventBannerAdapter;

    invoke-static {v0}, Lcom/mopub/mobileads/CustomEventBannerAdapter;->access$000(Lcom/mopub/mobileads/CustomEventBannerAdapter;)Lcom/mopub/mobileads/MoPubView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mopub/mobileads/MoPubView;->trackNativeImpression()V

    .line 251
    iget-object v0, p0, Lcom/mopub/mobileads/CustomEventBannerAdapter$2;->this$0:Lcom/mopub/mobileads/CustomEventBannerAdapter;

    invoke-static {v0}, Lcom/mopub/mobileads/CustomEventBannerAdapter;->access$100(Lcom/mopub/mobileads/CustomEventBannerAdapter;)Lcom/mopub/mobileads/CustomEventBanner;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 252
    iget-object v0, p0, Lcom/mopub/mobileads/CustomEventBannerAdapter$2;->this$0:Lcom/mopub/mobileads/CustomEventBannerAdapter;

    invoke-static {v0}, Lcom/mopub/mobileads/CustomEventBannerAdapter;->access$100(Lcom/mopub/mobileads/CustomEventBannerAdapter;)Lcom/mopub/mobileads/CustomEventBanner;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mopub/mobileads/CustomEventBanner;->trackMpxAndThirdPartyImpressions()V

    .line 254
    :cond_0
    iget-object v0, p0, Lcom/mopub/mobileads/CustomEventBannerAdapter$2;->this$0:Lcom/mopub/mobileads/CustomEventBannerAdapter;

    invoke-static {v0}, Lcom/mopub/mobileads/CustomEventBannerAdapter;->access$000(Lcom/mopub/mobileads/CustomEventBannerAdapter;)Lcom/mopub/mobileads/MoPubView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mopub/mobileads/MoPubView;->resumeAutoRefresh()V

    return-void
.end method
