.class public abstract Lcom/mopub/nativeads/VideoNativeAd;
.super Lcom/mopub/nativeads/BaseNativeAd;
.source "VideoNativeAd.java"

# interfaces
.implements Lcom/mopub/nativeads/NativeVideoController$Listener;


# instance fields
.field private mCallToAction:Ljava/lang/String;

.field private mClickDestinationUrl:Ljava/lang/String;

.field private final mExtras:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mIconImageUrl:Ljava/lang/String;

.field private mMainImageUrl:Ljava/lang/String;

.field private mPrivacyInformationIconClickThroughUrl:Ljava/lang/String;

.field private mPrivacyInformationIconImageUrl:Ljava/lang/String;

.field private mText:Ljava/lang/String;

.field private mTitle:Ljava/lang/String;

.field private mVastVideo:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 33
    invoke-direct {p0}, Lcom/mopub/nativeads/BaseNativeAd;-><init>()V

    .line 34
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mopub/nativeads/VideoNativeAd;->mExtras:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final addExtra(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    const-string v0, "addExtra key is not allowed to be null"

    .line 151
    invoke-static {p1, v0}, Lcom/mopub/common/Preconditions$NoThrow;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 154
    :cond_0
    iget-object v0, p0, Lcom/mopub/nativeads/VideoNativeAd;->mExtras:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public clear(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public destroy()V
    .locals 0

    return-void
.end method

.method public getCallToAction()Ljava/lang/String;
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/mopub/nativeads/VideoNativeAd;->mCallToAction:Ljava/lang/String;

    return-object v0
.end method

.method public getClickDestinationUrl()Ljava/lang/String;
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/mopub/nativeads/VideoNativeAd;->mClickDestinationUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final getExtra(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    const-string v0, "getExtra key is not allowed to be null"

    .line 101
    invoke-static {p1, v0}, Lcom/mopub/common/Preconditions$NoThrow;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 104
    :cond_0
    iget-object v0, p0, Lcom/mopub/nativeads/VideoNativeAd;->mExtras:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final getExtras()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 108
    iget-object v0, p0, Lcom/mopub/nativeads/VideoNativeAd;->mExtras:Ljava/util/Map;

    return-object v0
.end method

.method public getIconImageUrl()Ljava/lang/String;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/mopub/nativeads/VideoNativeAd;->mIconImageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getMainImageUrl()Ljava/lang/String;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/mopub/nativeads/VideoNativeAd;->mMainImageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getPrivacyInformationIconClickThroughUrl()Ljava/lang/String;
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/mopub/nativeads/VideoNativeAd;->mPrivacyInformationIconClickThroughUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getPrivacyInformationIconImageUrl()Ljava/lang/String;
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/mopub/nativeads/VideoNativeAd;->mPrivacyInformationIconImageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/mopub/nativeads/VideoNativeAd;->mText:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/mopub/nativeads/VideoNativeAd;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getVastVideo()Ljava/lang/String;
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/mopub/nativeads/VideoNativeAd;->mVastVideo:Ljava/lang/String;

    return-object v0
.end method

.method public prepare(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public render(Lcom/mopub/nativeads/MediaLayout;)V
    .locals 0

    return-void
.end method

.method public setCallToAction(Ljava/lang/String;)V
    .locals 0

    .line 137
    iput-object p1, p0, Lcom/mopub/nativeads/VideoNativeAd;->mCallToAction:Ljava/lang/String;

    return-void
.end method

.method public setClickDestinationUrl(Ljava/lang/String;)V
    .locals 0

    .line 129
    iput-object p1, p0, Lcom/mopub/nativeads/VideoNativeAd;->mClickDestinationUrl:Ljava/lang/String;

    return-void
.end method

.method public setIconImageUrl(Ljava/lang/String;)V
    .locals 0

    .line 125
    iput-object p1, p0, Lcom/mopub/nativeads/VideoNativeAd;->mIconImageUrl:Ljava/lang/String;

    return-void
.end method

.method public setMainImageUrl(Ljava/lang/String;)V
    .locals 0

    .line 121
    iput-object p1, p0, Lcom/mopub/nativeads/VideoNativeAd;->mMainImageUrl:Ljava/lang/String;

    return-void
.end method

.method public setPrivacyInformationIconClickThroughUrl(Ljava/lang/String;)V
    .locals 0

    .line 142
    iput-object p1, p0, Lcom/mopub/nativeads/VideoNativeAd;->mPrivacyInformationIconClickThroughUrl:Ljava/lang/String;

    return-void
.end method

.method public setPrivacyInformationIconImageUrl(Ljava/lang/String;)V
    .locals 0

    .line 147
    iput-object p1, p0, Lcom/mopub/nativeads/VideoNativeAd;->mPrivacyInformationIconImageUrl:Ljava/lang/String;

    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0

    .line 117
    iput-object p1, p0, Lcom/mopub/nativeads/VideoNativeAd;->mText:Ljava/lang/String;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 113
    iput-object p1, p0, Lcom/mopub/nativeads/VideoNativeAd;->mTitle:Ljava/lang/String;

    return-void
.end method

.method public setVastVideo(Ljava/lang/String;)V
    .locals 0

    .line 133
    iput-object p1, p0, Lcom/mopub/nativeads/VideoNativeAd;->mVastVideo:Ljava/lang/String;

    return-void
.end method
