.class public abstract Lcom/mopub/mobileads/CustomEventRewardedVideo;
.super Lcom/mopub/mobileads/CustomEventRewardedAd;
.source "CustomEventRewardedVideo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mopub/mobileads/CustomEventRewardedVideo$CustomEventRewardedVideoListener;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Lcom/mopub/mobileads/CustomEventRewardedAd;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract hasVideoAvailable()Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method protected isReady()Z
    .locals 1

    .line 46
    invoke-virtual {p0}, Lcom/mopub/mobileads/CustomEventRewardedVideo;->hasVideoAvailable()Z

    move-result v0

    return v0
.end method

.method protected show()V
    .locals 0

    .line 51
    invoke-virtual {p0}, Lcom/mopub/mobileads/CustomEventRewardedVideo;->showVideo()V

    return-void
.end method

.method protected abstract showVideo()V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method
