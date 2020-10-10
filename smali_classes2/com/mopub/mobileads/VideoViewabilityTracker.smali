.class public Lcom/mopub/mobileads/VideoViewabilityTracker;
.super Lcom/mopub/mobileads/VastTracker;
.source "VideoViewabilityTracker.java"


# instance fields
.field private final mPercentViewable:I

.field private final mViewablePlaytimeMS:I


# direct methods
.method public constructor <init>(IILjava/lang/String;)V
    .locals 0

    .line 15
    invoke-direct {p0, p3}, Lcom/mopub/mobileads/VastTracker;-><init>(Ljava/lang/String;)V

    .line 16
    iput p1, p0, Lcom/mopub/mobileads/VideoViewabilityTracker;->mViewablePlaytimeMS:I

    .line 17
    iput p2, p0, Lcom/mopub/mobileads/VideoViewabilityTracker;->mPercentViewable:I

    return-void
.end method


# virtual methods
.method public getPercentViewable()I
    .locals 1

    .line 25
    iget v0, p0, Lcom/mopub/mobileads/VideoViewabilityTracker;->mPercentViewable:I

    return v0
.end method

.method public getViewablePlaytimeMS()I
    .locals 1

    .line 21
    iget v0, p0, Lcom/mopub/mobileads/VideoViewabilityTracker;->mViewablePlaytimeMS:I

    return v0
.end method
