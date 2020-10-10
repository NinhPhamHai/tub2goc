.class Lcom/mopub/mobileads/VastIconConfig;
.super Ljava/lang/Object;
.source "VastIconConfig.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private final mClickThroughUri:Ljava/lang/String;

.field private final mClickTrackingUris:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/mopub/mobileads/VastTracker;",
            ">;"
        }
    .end annotation
.end field

.field private final mDurationMS:Ljava/lang/Integer;

.field private final mHeight:I

.field private final mOffsetMS:I

.field private final mVastResource:Lcom/mopub/mobileads/VastResource;

.field private final mViewTrackingUris:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/mopub/mobileads/VastTracker;",
            ">;"
        }
    .end annotation
.end field

.field private final mWidth:I


# direct methods
.method constructor <init>(IILjava/lang/Integer;Ljava/lang/Integer;Lcom/mopub/mobileads/VastResource;Ljava/util/List;Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Lcom/mopub/mobileads/VastResource;",
            "Ljava/util/List<",
            "Lcom/mopub/mobileads/VastTracker;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/mopub/mobileads/VastTracker;",
            ">;)V"
        }
    .end annotation

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    invoke-static {p5}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 52
    invoke-static {p6}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 53
    invoke-static {p8}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 55
    iput p1, p0, Lcom/mopub/mobileads/VastIconConfig;->mWidth:I

    .line 56
    iput p2, p0, Lcom/mopub/mobileads/VastIconConfig;->mHeight:I

    if-nez p3, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 57
    :cond_0
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p1

    :goto_0
    iput p1, p0, Lcom/mopub/mobileads/VastIconConfig;->mOffsetMS:I

    .line 58
    iput-object p4, p0, Lcom/mopub/mobileads/VastIconConfig;->mDurationMS:Ljava/lang/Integer;

    .line 59
    iput-object p5, p0, Lcom/mopub/mobileads/VastIconConfig;->mVastResource:Lcom/mopub/mobileads/VastResource;

    .line 60
    iput-object p6, p0, Lcom/mopub/mobileads/VastIconConfig;->mClickTrackingUris:Ljava/util/List;

    .line 61
    iput-object p7, p0, Lcom/mopub/mobileads/VastIconConfig;->mClickThroughUri:Ljava/lang/String;

    .line 62
    iput-object p8, p0, Lcom/mopub/mobileads/VastIconConfig;->mViewTrackingUris:Ljava/util/List;

    return-void
.end method


# virtual methods
.method getClickTrackingUris()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/mopub/mobileads/VastTracker;",
            ">;"
        }
    .end annotation

    .line 104
    iget-object v0, p0, Lcom/mopub/mobileads/VastIconConfig;->mClickTrackingUris:Ljava/util/List;

    return-object v0
.end method

.method getDurationMS()Ljava/lang/Integer;
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/mopub/mobileads/VastIconConfig;->mDurationMS:Ljava/lang/Integer;

    return-object v0
.end method

.method getHeight()I
    .locals 1

    .line 70
    iget v0, p0, Lcom/mopub/mobileads/VastIconConfig;->mHeight:I

    return v0
.end method

.method getOffsetMS()I
    .locals 1

    .line 79
    iget v0, p0, Lcom/mopub/mobileads/VastIconConfig;->mOffsetMS:I

    return v0
.end method

.method getVastResource()Lcom/mopub/mobileads/VastResource;
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/mopub/mobileads/VastIconConfig;->mVastResource:Lcom/mopub/mobileads/VastResource;

    return-object v0
.end method

.method getWidth()I
    .locals 1

    .line 66
    iget v0, p0, Lcom/mopub/mobileads/VastIconConfig;->mWidth:I

    return v0
.end method

.method handleClick(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .line 146
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 149
    iget-object v0, p0, Lcom/mopub/mobileads/VastIconConfig;->mVastResource:Lcom/mopub/mobileads/VastResource;

    iget-object v1, p0, Lcom/mopub/mobileads/VastIconConfig;->mClickThroughUri:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Lcom/mopub/mobileads/VastResource;->getCorrectClickThroughUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 152
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 156
    :cond_0
    new-instance v0, Lcom/mopub/common/UrlHandler$Builder;

    invoke-direct {v0}, Lcom/mopub/common/UrlHandler$Builder;-><init>()V

    sget-object v1, Lcom/mopub/common/UrlAction;->IGNORE_ABOUT_SCHEME:Lcom/mopub/common/UrlAction;

    const/4 v2, 0x2

    new-array v2, v2, [Lcom/mopub/common/UrlAction;

    const/4 v3, 0x0

    sget-object v4, Lcom/mopub/common/UrlAction;->OPEN_NATIVE_BROWSER:Lcom/mopub/common/UrlAction;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    sget-object v4, Lcom/mopub/common/UrlAction;->OPEN_IN_APP_BROWSER:Lcom/mopub/common/UrlAction;

    aput-object v4, v2, v3

    .line 157
    invoke-virtual {v0, v1, v2}, Lcom/mopub/common/UrlHandler$Builder;->withSupportedUrlActions(Lcom/mopub/common/UrlAction;[Lcom/mopub/common/UrlAction;)Lcom/mopub/common/UrlHandler$Builder;

    move-result-object v0

    new-instance v1, Lcom/mopub/mobileads/VastIconConfig$1;

    invoke-direct {v1, p0, p3, p1}, Lcom/mopub/mobileads/VastIconConfig$1;-><init>(Lcom/mopub/mobileads/VastIconConfig;Ljava/lang/String;Landroid/content/Context;)V

    .line 161
    invoke-virtual {v0, v1}, Lcom/mopub/common/UrlHandler$Builder;->withResultActions(Lcom/mopub/common/UrlHandler$ResultActions;)Lcom/mopub/common/UrlHandler$Builder;

    move-result-object p3

    .line 186
    invoke-virtual {p3}, Lcom/mopub/common/UrlHandler$Builder;->withoutMoPubBrowser()Lcom/mopub/common/UrlHandler$Builder;

    move-result-object p3

    .line 187
    invoke-virtual {p3}, Lcom/mopub/common/UrlHandler$Builder;->build()Lcom/mopub/common/UrlHandler;

    move-result-object p3

    .line 188
    invoke-virtual {p3, p1, p2}, Lcom/mopub/common/UrlHandler;->handleUrl(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method handleImpression(Landroid/content/Context;ILjava/lang/String;)V
    .locals 2

    .line 125
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 126
    invoke-static {p3}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 128
    iget-object v0, p0, Lcom/mopub/mobileads/VastIconConfig;->mViewTrackingUris:Ljava/util/List;

    .line 131
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 v1, 0x0

    .line 128
    invoke-static {v0, v1, p2, p3, p1}, Lcom/mopub/network/TrackingRequest;->makeVastTrackingHttpRequest(Ljava/util/List;Lcom/mopub/mobileads/VastErrorCode;Ljava/lang/Integer;Ljava/lang/String;Landroid/content/Context;)V

    return-void
.end method
