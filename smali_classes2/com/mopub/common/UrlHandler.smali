.class public Lcom/mopub/common/UrlHandler;
.super Ljava/lang/Object;
.source "UrlHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mopub/common/UrlHandler$Builder;,
        Lcom/mopub/common/UrlHandler$MoPubSchemeListener;,
        Lcom/mopub/common/UrlHandler$ResultActions;
    }
.end annotation


# static fields
.field private static final EMPTY_CLICK_LISTENER:Lcom/mopub/common/UrlHandler$ResultActions;

.field private static final EMPTY_MOPUB_SCHEME_LISTENER:Lcom/mopub/common/UrlHandler$MoPubSchemeListener;


# instance fields
.field private mAlreadySucceeded:Z

.field private mDspCreativeId:Ljava/lang/String;

.field private mMoPubSchemeListener:Lcom/mopub/common/UrlHandler$MoPubSchemeListener;

.field private mResultActions:Lcom/mopub/common/UrlHandler$ResultActions;

.field private mSkipShowMoPubBrowser:Z

.field private mSupportedUrlActions:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet<",
            "Lcom/mopub/common/UrlAction;",
            ">;"
        }
    .end annotation
.end field

.field private mTaskPending:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 162
    new-instance v0, Lcom/mopub/common/UrlHandler$1;

    invoke-direct {v0}, Lcom/mopub/common/UrlHandler$1;-><init>()V

    sput-object v0, Lcom/mopub/common/UrlHandler;->EMPTY_CLICK_LISTENER:Lcom/mopub/common/UrlHandler$ResultActions;

    .line 169
    new-instance v0, Lcom/mopub/common/UrlHandler$2;

    invoke-direct {v0}, Lcom/mopub/common/UrlHandler$2;-><init>()V

    sput-object v0, Lcom/mopub/common/UrlHandler;->EMPTY_MOPUB_SCHEME_LISTENER:Lcom/mopub/common/UrlHandler$MoPubSchemeListener;

    return-void
.end method

.method private constructor <init>(Ljava/util/EnumSet;Lcom/mopub/common/UrlHandler$ResultActions;Lcom/mopub/common/UrlHandler$MoPubSchemeListener;ZLjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/EnumSet<",
            "Lcom/mopub/common/UrlAction;",
            ">;",
            "Lcom/mopub/common/UrlHandler$ResultActions;",
            "Lcom/mopub/common/UrlHandler$MoPubSchemeListener;",
            "Z",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 199
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 200
    invoke-static {p1}, Ljava/util/EnumSet;->copyOf(Ljava/util/EnumSet;)Ljava/util/EnumSet;

    move-result-object p1

    iput-object p1, p0, Lcom/mopub/common/UrlHandler;->mSupportedUrlActions:Ljava/util/EnumSet;

    .line 201
    iput-object p2, p0, Lcom/mopub/common/UrlHandler;->mResultActions:Lcom/mopub/common/UrlHandler$ResultActions;

    .line 202
    iput-object p3, p0, Lcom/mopub/common/UrlHandler;->mMoPubSchemeListener:Lcom/mopub/common/UrlHandler$MoPubSchemeListener;

    .line 203
    iput-boolean p4, p0, Lcom/mopub/common/UrlHandler;->mSkipShowMoPubBrowser:Z

    .line 204
    iput-object p5, p0, Lcom/mopub/common/UrlHandler;->mDspCreativeId:Ljava/lang/String;

    const/4 p1, 0x0

    .line 205
    iput-boolean p1, p0, Lcom/mopub/common/UrlHandler;->mAlreadySucceeded:Z

    .line 206
    iput-boolean p1, p0, Lcom/mopub/common/UrlHandler;->mTaskPending:Z

    return-void
.end method

.method synthetic constructor <init>(Ljava/util/EnumSet;Lcom/mopub/common/UrlHandler$ResultActions;Lcom/mopub/common/UrlHandler$MoPubSchemeListener;ZLjava/lang/String;Lcom/mopub/common/UrlHandler$1;)V
    .locals 0

    .line 30
    invoke-direct/range {p0 .. p5}, Lcom/mopub/common/UrlHandler;-><init>(Ljava/util/EnumSet;Lcom/mopub/common/UrlHandler$ResultActions;Lcom/mopub/common/UrlHandler$MoPubSchemeListener;ZLjava/lang/String;)V

    return-void
.end method

.method static synthetic access$000()Lcom/mopub/common/UrlHandler$ResultActions;
    .locals 1

    .line 30
    sget-object v0, Lcom/mopub/common/UrlHandler;->EMPTY_CLICK_LISTENER:Lcom/mopub/common/UrlHandler$ResultActions;

    return-object v0
.end method

.method static synthetic access$100()Lcom/mopub/common/UrlHandler$MoPubSchemeListener;
    .locals 1

    .line 30
    sget-object v0, Lcom/mopub/common/UrlHandler;->EMPTY_MOPUB_SCHEME_LISTENER:Lcom/mopub/common/UrlHandler$MoPubSchemeListener;

    return-object v0
.end method

.method static synthetic access$302(Lcom/mopub/common/UrlHandler;Z)Z
    .locals 0

    .line 30
    iput-boolean p1, p0, Lcom/mopub/common/UrlHandler;->mTaskPending:Z

    return p1
.end method

.method static synthetic access$400(Lcom/mopub/common/UrlHandler;Ljava/lang/String;Lcom/mopub/common/UrlAction;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/mopub/common/UrlHandler;->failUrlHandling(Ljava/lang/String;Lcom/mopub/common/UrlAction;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private failUrlHandling(Ljava/lang/String;Lcom/mopub/common/UrlAction;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3

    .line 342
    invoke-static {p3}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    if-nez p2, :cond_0

    .line 345
    sget-object p2, Lcom/mopub/common/UrlAction;->NOOP:Lcom/mopub/common/UrlAction;

    .line 348
    :cond_0
    sget-object v0, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->ERROR:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p3, v1, v2

    const/4 p3, 0x1

    aput-object p4, v1, p3

    invoke-static {v0, v1}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 349
    iget-object p3, p0, Lcom/mopub/common/UrlHandler;->mResultActions:Lcom/mopub/common/UrlHandler$ResultActions;

    invoke-interface {p3, p1, p2}, Lcom/mopub/common/UrlHandler$ResultActions;->urlHandlingFailed(Ljava/lang/String;Lcom/mopub/common/UrlAction;)V

    return-void
.end method


# virtual methods
.method getMoPubSchemeListener()Lcom/mopub/common/UrlHandler$MoPubSchemeListener;
    .locals 1

    .line 221
    iget-object v0, p0, Lcom/mopub/common/UrlHandler;->mMoPubSchemeListener:Lcom/mopub/common/UrlHandler$MoPubSchemeListener;

    return-object v0
.end method

.method public handleResolvedUrl(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/Iterable;)Z
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    move-object v7, p0

    move-object/from16 v8, p2

    .line 307
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v9, 0x0

    const/4 v10, 0x0

    if-eqz v0, :cond_0

    const-string v0, "Attempted to handle empty url."

    .line 308
    invoke-direct {p0, v8, v10, v0, v10}, Lcom/mopub/common/UrlHandler;->failUrlHandling(Ljava/lang/String;Lcom/mopub/common/UrlAction;Ljava/lang/String;Ljava/lang/Throwable;)V

    return v9

    .line 312
    :cond_0
    sget-object v0, Lcom/mopub/common/UrlAction;->NOOP:Lcom/mopub/common/UrlAction;

    .line 313
    invoke-static/range {p2 .. p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    .line 315
    iget-object v1, v7, Lcom/mopub/common/UrlHandler;->mSupportedUrlActions:Ljava/util/EnumSet;

    invoke-virtual {v1}, Ljava/util/EnumSet;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v13, v1

    check-cast v13, Lcom/mopub/common/UrlAction;

    .line 316
    invoke-virtual {v13, v11}, Lcom/mopub/common/UrlAction;->shouldTryHandlingUrl(Landroid/net/Uri;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v14, 0x1

    .line 318
    :try_start_0
    iget-object v6, v7, Lcom/mopub/common/UrlHandler;->mDspCreativeId:Ljava/lang/String;

    move-object v1, v13

    move-object v2, p0

    move-object/from16 v3, p1

    move-object v4, v11

    move/from16 v5, p3

    invoke-virtual/range {v1 .. v6}, Lcom/mopub/common/UrlAction;->handleUrl(Lcom/mopub/common/UrlHandler;Landroid/content/Context;Landroid/net/Uri;ZLjava/lang/String;)V

    .line 320
    iget-boolean v0, v7, Lcom/mopub/common/UrlHandler;->mAlreadySucceeded:Z

    if-nez v0, :cond_1

    iget-boolean v0, v7, Lcom/mopub/common/UrlHandler;->mTaskPending:Z

    if-nez v0, :cond_1

    sget-object v0, Lcom/mopub/common/UrlAction;->IGNORE_ABOUT_SCHEME:Lcom/mopub/common/UrlAction;

    .line 321
    invoke-virtual {v0, v13}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/mopub/common/UrlAction;->HANDLE_MOPUB_SCHEME:Lcom/mopub/common/UrlAction;

    .line 322
    invoke-virtual {v0, v13}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catch Lcom/mopub/exceptions/IntentNotResolvableException; {:try_start_0 .. :try_end_0} :catch_1

    if-nez v0, :cond_1

    move-object/from16 v1, p1

    move-object/from16 v2, p4

    .line 323
    :try_start_1
    invoke-static {v2, v1}, Lcom/mopub/network/TrackingRequest;->makeTrackingHttpRequest(Ljava/lang/Iterable;Landroid/content/Context;)V

    .line 324
    iget-object v0, v7, Lcom/mopub/common/UrlHandler;->mResultActions:Lcom/mopub/common/UrlHandler$ResultActions;

    invoke-virtual {v11}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3, v13}, Lcom/mopub/common/UrlHandler$ResultActions;->urlHandlingSucceeded(Ljava/lang/String;Lcom/mopub/common/UrlAction;)V

    .line 326
    iput-boolean v14, v7, Lcom/mopub/common/UrlHandler;->mAlreadySucceeded:Z
    :try_end_1
    .catch Lcom/mopub/exceptions/IntentNotResolvableException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_2

    :cond_1
    :goto_1
    return v14

    :catch_1
    move-exception v0

    move-object/from16 v1, p1

    move-object/from16 v2, p4

    .line 330
    :goto_2
    sget-object v3, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->ERROR:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v9

    aput-object v0, v4, v14

    invoke-static {v3, v4}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    move-object v0, v13

    goto :goto_0

    :cond_2
    move-object/from16 v1, p1

    move-object/from16 v2, p4

    goto :goto_0

    .line 336
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Link ignored. Unable to handle url: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v8, v0, v1, v10}, Lcom/mopub/common/UrlHandler;->failUrlHandling(Ljava/lang/String;Lcom/mopub/common/UrlAction;Ljava/lang/String;Ljava/lang/Throwable;)V

    return v9
.end method

.method public handleUrl(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 236
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    const/4 v0, 0x1

    .line 238
    invoke-virtual {p0, p1, p2, v0}, Lcom/mopub/common/UrlHandler;->handleUrl(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method

.method public handleUrl(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 1

    .line 251
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 253
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/mopub/common/UrlHandler;->handleUrl(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/Iterable;)V

    return-void
.end method

.method public handleUrl(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/Iterable;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 266
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 268
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    const-string p3, "Attempted to handle empty url."

    .line 269
    invoke-direct {p0, p2, p1, p3, p1}, Lcom/mopub/common/UrlHandler;->failUrlHandling(Ljava/lang/String;Lcom/mopub/common/UrlAction;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    .line 273
    :cond_0
    new-instance v6, Lcom/mopub/common/UrlHandler$3;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move v3, p3

    move-object v4, p4

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/mopub/common/UrlHandler$3;-><init>(Lcom/mopub/common/UrlHandler;Landroid/content/Context;ZLjava/lang/Iterable;Ljava/lang/String;)V

    .line 290
    invoke-static {p2, v6}, Lcom/mopub/common/UrlResolutionTask;->getResolvedUrl(Ljava/lang/String;Lcom/mopub/common/UrlResolutionTask$UrlResolutionListener;)V

    const/4 p1, 0x1

    .line 291
    iput-boolean p1, p0, Lcom/mopub/common/UrlHandler;->mTaskPending:Z

    return-void
.end method

.method shouldSkipShowMoPubBrowser()Z
    .locals 1

    .line 225
    iget-boolean v0, p0, Lcom/mopub/common/UrlHandler;->mSkipShowMoPubBrowser:Z

    return v0
.end method
