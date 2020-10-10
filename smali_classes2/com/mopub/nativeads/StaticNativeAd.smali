.class public abstract Lcom/mopub/nativeads/StaticNativeAd;
.super Lcom/mopub/nativeads/BaseNativeAd;
.source "StaticNativeAd.java"

# interfaces
.implements Lcom/mopub/nativeads/ImpressionInterface;
.implements Lcom/mopub/nativeads/ClickInterface;


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

.field private mImpressionMinPercentageViewed:I

.field private mImpressionMinTimeViewed:I

.field private mImpressionMinVisiblePx:Ljava/lang/Integer;

.field private mImpressionRecorded:Z

.field private mMainImageUrl:Ljava/lang/String;

.field private mPrivacyInformationIconClickThroughUrl:Ljava/lang/String;

.field private mPrivacyInformationIconImageUrl:Ljava/lang/String;

.field private mStarRating:Ljava/lang/Double;

.field private mText:Ljava/lang/String;

.field private mTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 49
    invoke-direct {p0}, Lcom/mopub/nativeads/BaseNativeAd;-><init>()V

    const/16 v0, 0x3e8

    .line 50
    iput v0, p0, Lcom/mopub/nativeads/StaticNativeAd;->mImpressionMinTimeViewed:I

    const/16 v0, 0x32

    .line 51
    iput v0, p0, Lcom/mopub/nativeads/StaticNativeAd;->mImpressionMinPercentageViewed:I

    const/4 v0, 0x0

    .line 52
    iput-object v0, p0, Lcom/mopub/nativeads/StaticNativeAd;->mImpressionMinVisiblePx:Ljava/lang/Integer;

    .line 54
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mopub/nativeads/StaticNativeAd;->mExtras:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final addExtra(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    const-string v0, "addExtra key is not allowed to be null"

    .line 208
    invoke-static {p1, v0}, Lcom/mopub/common/Preconditions$NoThrow;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 211
    :cond_0
    iget-object v0, p0, Lcom/mopub/nativeads/StaticNativeAd;->mExtras:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public clear(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public destroy()V
    .locals 0

    .line 267
    invoke-virtual {p0}, Lcom/mopub/nativeads/BaseNativeAd;->invalidate()V

    return-void
.end method

.method public final getCallToAction()Ljava/lang/String;
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/mopub/nativeads/StaticNativeAd;->mCallToAction:Ljava/lang/String;

    return-object v0
.end method

.method public final getClickDestinationUrl()Ljava/lang/String;
    .locals 1

    .line 159
    iget-object v0, p0, Lcom/mopub/nativeads/StaticNativeAd;->mClickDestinationUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final getExtra(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    const-string v0, "getExtra key is not allowed to be null"

    .line 137
    invoke-static {p1, v0}, Lcom/mopub/common/Preconditions$NoThrow;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 140
    :cond_0
    iget-object v0, p0, Lcom/mopub/nativeads/StaticNativeAd;->mExtras:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final getExtras()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 151
    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p0, Lcom/mopub/nativeads/StaticNativeAd;->mExtras:Ljava/util/Map;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method public final getIconImageUrl()Ljava/lang/String;
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/mopub/nativeads/StaticNativeAd;->mIconImageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final getImpressionMinPercentageViewed()I
    .locals 1

    .line 287
    iget v0, p0, Lcom/mopub/nativeads/StaticNativeAd;->mImpressionMinPercentageViewed:I

    return v0
.end method

.method public final getImpressionMinTimeViewed()I
    .locals 1

    .line 297
    iget v0, p0, Lcom/mopub/nativeads/StaticNativeAd;->mImpressionMinTimeViewed:I

    return v0
.end method

.method public final getImpressionMinVisiblePx()Ljava/lang/Integer;
    .locals 1

    .line 308
    iget-object v0, p0, Lcom/mopub/nativeads/StaticNativeAd;->mImpressionMinVisiblePx:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getMainImageUrl()Ljava/lang/String;
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/mopub/nativeads/StaticNativeAd;->mMainImageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final getPrivacyInformationIconClickThroughUrl()Ljava/lang/String;
    .locals 1

    .line 116
    iget-object v0, p0, Lcom/mopub/nativeads/StaticNativeAd;->mPrivacyInformationIconClickThroughUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getPrivacyInformationIconImageUrl()Ljava/lang/String;
    .locals 1

    .line 127
    iget-object v0, p0, Lcom/mopub/nativeads/StaticNativeAd;->mPrivacyInformationIconImageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final getStarRating()Ljava/lang/Double;
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/mopub/nativeads/StaticNativeAd;->mStarRating:Ljava/lang/Double;

    return-object v0
.end method

.method public final getText()Ljava/lang/String;
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/mopub/nativeads/StaticNativeAd;->mText:Ljava/lang/String;

    return-object v0
.end method

.method public final getTitle()Ljava/lang/String;
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/mopub/nativeads/StaticNativeAd;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public handleClick(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public final isImpressionRecorded()Z
    .locals 1

    .line 313
    iget-boolean v0, p0, Lcom/mopub/nativeads/StaticNativeAd;->mImpressionRecorded:Z

    return v0
.end method

.method public prepare(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public recordImpression(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public final setCallToAction(Ljava/lang/String;)V
    .locals 0

    .line 175
    iput-object p1, p0, Lcom/mopub/nativeads/StaticNativeAd;->mCallToAction:Ljava/lang/String;

    return-void
.end method

.method public final setClickDestinationUrl(Ljava/lang/String;)V
    .locals 0

    .line 171
    iput-object p1, p0, Lcom/mopub/nativeads/StaticNativeAd;->mClickDestinationUrl:Ljava/lang/String;

    return-void
.end method

.method public final setIconImageUrl(Ljava/lang/String;)V
    .locals 0

    .line 167
    iput-object p1, p0, Lcom/mopub/nativeads/StaticNativeAd;->mIconImageUrl:Ljava/lang/String;

    return-void
.end method

.method public final setImpressionMinPercentageViewed(I)V
    .locals 5

    if-ltz p1, :cond_0

    const/16 v0, 0x64

    if-gt p1, v0, :cond_0

    .line 236
    iput p1, p0, Lcom/mopub/nativeads/StaticNativeAd;->mImpressionMinPercentageViewed:I

    goto :goto_0

    .line 238
    :cond_0
    sget-object v0, Lcom/mopub/common/logging/MoPubLog$AdLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$AdLogEvent;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Ignoring impressionMinTimeViewed that\'s not a percent [0, 100]: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public final setImpressionMinTimeViewed(I)V
    .locals 5

    if-lez p1, :cond_0

    .line 222
    iput p1, p0, Lcom/mopub/nativeads/StaticNativeAd;->mImpressionMinTimeViewed:I

    goto :goto_0

    .line 224
    :cond_0
    sget-object v0, Lcom/mopub/common/logging/MoPubLog$AdLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$AdLogEvent;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Ignoring non-positive impressionMinTimeViewed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public final setImpressionMinVisiblePx(Ljava/lang/Integer;)V
    .locals 5

    if-eqz p1, :cond_0

    .line 250
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_0

    .line 251
    iput-object p1, p0, Lcom/mopub/nativeads/StaticNativeAd;->mImpressionMinVisiblePx:Ljava/lang/Integer;

    goto :goto_0

    .line 253
    :cond_0
    sget-object v0, Lcom/mopub/common/logging/MoPubLog$AdLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$AdLogEvent;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Ignoring null or non-positive impressionMinVisiblePx: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public final setImpressionRecorded()V
    .locals 1

    const/4 v0, 0x1

    .line 318
    iput-boolean v0, p0, Lcom/mopub/nativeads/StaticNativeAd;->mImpressionRecorded:Z

    return-void
.end method

.method public final setMainImageUrl(Ljava/lang/String;)V
    .locals 0

    .line 163
    iput-object p1, p0, Lcom/mopub/nativeads/StaticNativeAd;->mMainImageUrl:Ljava/lang/String;

    return-void
.end method

.method public final setPrivacyInformationIconClickThroughUrl(Ljava/lang/String;)V
    .locals 0

    .line 199
    iput-object p1, p0, Lcom/mopub/nativeads/StaticNativeAd;->mPrivacyInformationIconClickThroughUrl:Ljava/lang/String;

    return-void
.end method

.method public final setPrivacyInformationIconImageUrl(Ljava/lang/String;)V
    .locals 0

    .line 204
    iput-object p1, p0, Lcom/mopub/nativeads/StaticNativeAd;->mPrivacyInformationIconImageUrl:Ljava/lang/String;

    return-void
.end method

.method public final setStarRating(Ljava/lang/Double;)V
    .locals 9

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 188
    iput-object p1, p0, Lcom/mopub/nativeads/StaticNativeAd;->mStarRating:Ljava/lang/Double;

    goto :goto_0

    .line 189
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    const-wide/high16 v2, 0x4014000000000000L    # 5.0

    const-wide/16 v4, 0x0

    cmpl-double v6, v0, v4

    if-ltz v6, :cond_1

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    cmpg-double v6, v0, v2

    if-gtz v6, :cond_1

    .line 190
    iput-object p1, p0, Lcom/mopub/nativeads/StaticNativeAd;->mStarRating:Ljava/lang/Double;

    goto :goto_0

    .line 192
    :cond_1
    sget-object v0, Lcom/mopub/common/logging/MoPubLog$AdLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$AdLogEvent;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v6, 0x0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Ignoring attempt to set invalid star rating ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "). Must be between "

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string p1, " and "

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string p1, "."

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v6

    invoke-static {v0, v1}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public final setText(Ljava/lang/String;)V
    .locals 0

    .line 183
    iput-object p1, p0, Lcom/mopub/nativeads/StaticNativeAd;->mText:Ljava/lang/String;

    return-void
.end method

.method public final setTitle(Ljava/lang/String;)V
    .locals 0

    .line 179
    iput-object p1, p0, Lcom/mopub/nativeads/StaticNativeAd;->mTitle:Ljava/lang/String;

    return-void
.end method
