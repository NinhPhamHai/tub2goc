.class public Lcom/mopub/mobileads/MoPubInterstitial;
.super Ljava/lang/Object;
.source "MoPubInterstitial.java"

# interfaces
.implements Lcom/mopub/mobileads/CustomEventInterstitialAdapter$CustomEventInterstitialAdapterListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mopub/mobileads/MoPubInterstitial$MoPubInterstitialView;,
        Lcom/mopub/mobileads/MoPubInterstitial$InterstitialAdListener;,
        Lcom/mopub/mobileads/MoPubInterstitial$InterstitialState;
    }
.end annotation


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private final mAdExpiration:Ljava/lang/Runnable;

.field private volatile mCurrentInterstitialState:Lcom/mopub/mobileads/MoPubInterstitial$InterstitialState;

.field private mCustomEventInterstitialAdapter:Lcom/mopub/mobileads/CustomEventInterstitialAdapter;

.field private mHandler:Landroid/os/Handler;

.field private mInterstitialAdListener:Lcom/mopub/mobileads/MoPubInterstitial$InterstitialAdListener;

.field private mInterstitialView:Lcom/mopub/mobileads/MoPubInterstitial$MoPubInterstitialView;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 1

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    iput-object p1, p0, Lcom/mopub/mobileads/MoPubInterstitial;->mActivity:Landroid/app/Activity;

    .line 94
    new-instance p1, Lcom/mopub/mobileads/MoPubInterstitial$MoPubInterstitialView;

    iget-object v0, p0, Lcom/mopub/mobileads/MoPubInterstitial;->mActivity:Landroid/app/Activity;

    invoke-direct {p1, p0, v0}, Lcom/mopub/mobileads/MoPubInterstitial$MoPubInterstitialView;-><init>(Lcom/mopub/mobileads/MoPubInterstitial;Landroid/content/Context;)V

    iput-object p1, p0, Lcom/mopub/mobileads/MoPubInterstitial;->mInterstitialView:Lcom/mopub/mobileads/MoPubInterstitial$MoPubInterstitialView;

    .line 95
    iget-object p1, p0, Lcom/mopub/mobileads/MoPubInterstitial;->mInterstitialView:Lcom/mopub/mobileads/MoPubInterstitial$MoPubInterstitialView;

    invoke-virtual {p1, p2}, Lcom/mopub/mobileads/MoPubView;->setAdUnitId(Ljava/lang/String;)V

    .line 97
    sget-object p1, Lcom/mopub/mobileads/MoPubInterstitial$InterstitialState;->IDLE:Lcom/mopub/mobileads/MoPubInterstitial$InterstitialState;

    iput-object p1, p0, Lcom/mopub/mobileads/MoPubInterstitial;->mCurrentInterstitialState:Lcom/mopub/mobileads/MoPubInterstitial$InterstitialState;

    .line 99
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/mopub/mobileads/MoPubInterstitial;->mHandler:Landroid/os/Handler;

    .line 100
    new-instance p1, Lcom/mopub/mobileads/MoPubInterstitial$1;

    invoke-direct {p1, p0}, Lcom/mopub/mobileads/MoPubInterstitial$1;-><init>(Lcom/mopub/mobileads/MoPubInterstitial;)V

    iput-object p1, p0, Lcom/mopub/mobileads/MoPubInterstitial;->mAdExpiration:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/mopub/mobileads/MoPubInterstitial;)Lcom/mopub/mobileads/MoPubInterstitial$InterstitialState;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/mopub/mobileads/MoPubInterstitial;->mCurrentInterstitialState:Lcom/mopub/mobileads/MoPubInterstitial$InterstitialState;

    return-object p0
.end method

.method static synthetic access$100(Lcom/mopub/mobileads/MoPubInterstitial;)Lcom/mopub/mobileads/MoPubInterstitial$MoPubInterstitialView;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/mopub/mobileads/MoPubInterstitial;->mInterstitialView:Lcom/mopub/mobileads/MoPubInterstitial$MoPubInterstitialView;

    return-object p0
.end method

.method static synthetic access$200(Lcom/mopub/mobileads/MoPubInterstitial;)Lcom/mopub/mobileads/CustomEventInterstitialAdapter;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/mopub/mobileads/MoPubInterstitial;->mCustomEventInterstitialAdapter:Lcom/mopub/mobileads/CustomEventInterstitialAdapter;

    return-object p0
.end method

.method static synthetic access$202(Lcom/mopub/mobileads/MoPubInterstitial;Lcom/mopub/mobileads/CustomEventInterstitialAdapter;)Lcom/mopub/mobileads/CustomEventInterstitialAdapter;
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/mopub/mobileads/MoPubInterstitial;->mCustomEventInterstitialAdapter:Lcom/mopub/mobileads/CustomEventInterstitialAdapter;

    return-object p1
.end method

.method static synthetic access$300(Lcom/mopub/mobileads/MoPubInterstitial;Lcom/mopub/mobileads/MoPubInterstitial$InterstitialState;)Z
    .locals 0

    .line 46
    invoke-direct {p0, p1}, Lcom/mopub/mobileads/MoPubInterstitial;->attemptStateTransition(Lcom/mopub/mobileads/MoPubInterstitial$InterstitialState;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$400(Lcom/mopub/mobileads/MoPubInterstitial;)Lcom/mopub/mobileads/MoPubInterstitial$InterstitialAdListener;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/mopub/mobileads/MoPubInterstitial;->mInterstitialAdListener:Lcom/mopub/mobileads/MoPubInterstitial$InterstitialAdListener;

    return-object p0
.end method

.method static synthetic access$500(Lcom/mopub/mobileads/MoPubInterstitial;)Landroid/app/Activity;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/mopub/mobileads/MoPubInterstitial;->mActivity:Landroid/app/Activity;

    return-object p0
.end method

.method private attemptStateTransition(Lcom/mopub/mobileads/MoPubInterstitial$InterstitialState;)Z
    .locals 1

    const/4 v0, 0x0

    .line 116
    invoke-virtual {p0, p1, v0}, Lcom/mopub/mobileads/MoPubInterstitial;->attemptStateTransition(Lcom/mopub/mobileads/MoPubInterstitial$InterstitialState;Z)Z

    move-result p1

    return p1
.end method

.method private invalidateInterstitialAdapter()V
    .locals 1

    .line 342
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubInterstitial;->mCustomEventInterstitialAdapter:Lcom/mopub/mobileads/CustomEventInterstitialAdapter;

    if-eqz v0, :cond_0

    .line 343
    invoke-virtual {v0}, Lcom/mopub/mobileads/CustomEventInterstitialAdapter;->invalidate()V

    const/4 v0, 0x0

    .line 344
    iput-object v0, p0, Lcom/mopub/mobileads/MoPubInterstitial;->mCustomEventInterstitialAdapter:Lcom/mopub/mobileads/CustomEventInterstitialAdapter;

    :cond_0
    return-void
.end method

.method private setInterstitialStateDestroyed()V
    .locals 2

    .line 281
    invoke-direct {p0}, Lcom/mopub/mobileads/MoPubInterstitial;->invalidateInterstitialAdapter()V

    const/4 v0, 0x0

    .line 282
    iput-object v0, p0, Lcom/mopub/mobileads/MoPubInterstitial;->mInterstitialAdListener:Lcom/mopub/mobileads/MoPubInterstitial$InterstitialAdListener;

    .line 283
    iget-object v1, p0, Lcom/mopub/mobileads/MoPubInterstitial;->mInterstitialView:Lcom/mopub/mobileads/MoPubInterstitial$MoPubInterstitialView;

    invoke-virtual {v1, v0}, Lcom/mopub/mobileads/MoPubView;->setBannerAdListener(Lcom/mopub/mobileads/MoPubView$BannerAdListener;)V

    .line 284
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubInterstitial;->mInterstitialView:Lcom/mopub/mobileads/MoPubInterstitial$MoPubInterstitialView;

    invoke-virtual {v0}, Lcom/mopub/mobileads/MoPubView;->destroy()V

    .line 285
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubInterstitial;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/mopub/mobileads/MoPubInterstitial;->mAdExpiration:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 286
    sget-object v0, Lcom/mopub/mobileads/MoPubInterstitial$InterstitialState;->DESTROYED:Lcom/mopub/mobileads/MoPubInterstitial$InterstitialState;

    iput-object v0, p0, Lcom/mopub/mobileads/MoPubInterstitial;->mCurrentInterstitialState:Lcom/mopub/mobileads/MoPubInterstitial$InterstitialState;

    return-void
.end method

.method private showCustomEventInterstitial()V
    .locals 1

    .line 336
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubInterstitial;->mCustomEventInterstitialAdapter:Lcom/mopub/mobileads/CustomEventInterstitialAdapter;

    if-eqz v0, :cond_0

    .line 337
    invoke-virtual {v0}, Lcom/mopub/mobileads/CustomEventInterstitialAdapter;->showInterstitial()V

    :cond_0
    return-void
.end method

.method private updatedInsets()V
    .locals 2

    .line 290
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_2

    .line 291
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubInterstitial;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 295
    :cond_0
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 299
    :cond_1
    iget-object v1, p0, Lcom/mopub/mobileads/MoPubInterstitial;->mInterstitialView:Lcom/mopub/mobileads/MoPubInterstitial$MoPubInterstitialView;

    invoke-virtual {v1, v0}, Lcom/mopub/mobileads/MoPubView;->setWindowInsets(Landroid/view/WindowInsets;)V

    :cond_2
    return-void
.end method


# virtual methods
.method declared-synchronized attemptStateTransition(Lcom/mopub/mobileads/MoPubInterstitial$InterstitialState;Z)Z
    .locals 7
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    monitor-enter p0

    .line 132
    :try_start_0
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 134
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubInterstitial;->mCurrentInterstitialState:Lcom/mopub/mobileads/MoPubInterstitial$InterstitialState;

    .line 144
    sget-object v1, Lcom/mopub/mobileads/MoPubInterstitial$2;->$SwitchMap$com$mopub$mobileads$MoPubInterstitial$InterstitialState:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x2

    const/4 v2, 0x5

    const/4 v3, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eq v0, v5, :cond_15

    if-eq v0, v1, :cond_e

    if-eq v0, v4, :cond_7

    if-eq v0, v3, :cond_6

    if-eq v0, v2, :cond_0

    .line 273
    monitor-exit p0

    return v6

    .line 146
    :cond_0
    :try_start_1
    sget-object v0, Lcom/mopub/mobileads/MoPubInterstitial$2;->$SwitchMap$com$mopub$mobileads$MoPubInterstitial$InterstitialState:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eq p1, v5, :cond_4

    if-eq p1, v1, :cond_3

    if-eq p1, v4, :cond_2

    if-eq p1, v3, :cond_1

    .line 171
    monitor-exit p0

    return v6

    .line 168
    :cond_1
    :try_start_2
    invoke-direct {p0}, Lcom/mopub/mobileads/MoPubInterstitial;->setInterstitialStateDestroyed()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 169
    monitor-exit p0

    return v5

    .line 165
    :cond_2
    :try_start_3
    sget-object p1, Lcom/mopub/common/logging/MoPubLog$AdLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$AdLogEvent;

    new-array p2, v5, [Ljava/lang/Object;

    const-string v0, "No interstitial loading or loaded."

    aput-object v0, p2, v6

    invoke-static {p1, p2}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 166
    monitor-exit p0

    return v6

    .line 161
    :cond_3
    :try_start_4
    sget-object p1, Lcom/mopub/common/logging/MoPubLog$AdLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$AdLogEvent;

    new-array p2, v5, [Ljava/lang/Object;

    const-string v0, "Attempted transition from IDLE to READY failed due to no known load call."

    aput-object v0, p2, v6

    invoke-static {p1, p2}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 163
    monitor-exit p0

    return v6

    .line 149
    :cond_4
    :try_start_5
    invoke-direct {p0}, Lcom/mopub/mobileads/MoPubInterstitial;->invalidateInterstitialAdapter()V

    .line 150
    sget-object p1, Lcom/mopub/mobileads/MoPubInterstitial$InterstitialState;->LOADING:Lcom/mopub/mobileads/MoPubInterstitial$InterstitialState;

    iput-object p1, p0, Lcom/mopub/mobileads/MoPubInterstitial;->mCurrentInterstitialState:Lcom/mopub/mobileads/MoPubInterstitial$InterstitialState;

    .line 151
    invoke-direct {p0}, Lcom/mopub/mobileads/MoPubInterstitial;->updatedInsets()V

    if-eqz p2, :cond_5

    .line 154
    iget-object p1, p0, Lcom/mopub/mobileads/MoPubInterstitial;->mInterstitialView:Lcom/mopub/mobileads/MoPubInterstitial$MoPubInterstitialView;

    invoke-virtual {p1}, Lcom/mopub/mobileads/MoPubView;->forceRefresh()V

    goto :goto_0

    .line 157
    :cond_5
    iget-object p1, p0, Lcom/mopub/mobileads/MoPubInterstitial;->mInterstitialView:Lcom/mopub/mobileads/MoPubInterstitial$MoPubInterstitialView;

    invoke-virtual {p1}, Lcom/mopub/mobileads/MoPubView;->loadAd()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 159
    :goto_0
    monitor-exit p0

    return v5

    .line 270
    :cond_6
    :try_start_6
    sget-object p1, Lcom/mopub/common/logging/MoPubLog$AdLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$AdLogEvent;

    new-array p2, v5, [Ljava/lang/Object;

    const-string v0, "MoPubInterstitial destroyed. Ignoring all requests."

    aput-object v0, p2, v6

    invoke-static {p1, p2}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 271
    monitor-exit p0

    return v6

    .line 244
    :cond_7
    :try_start_7
    sget-object v0, Lcom/mopub/mobileads/MoPubInterstitial$2;->$SwitchMap$com$mopub$mobileads$MoPubInterstitial$InterstitialState:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    if-eq p1, v5, :cond_c

    if-eq p1, v4, :cond_b

    if-eq p1, v3, :cond_a

    if-eq p1, v2, :cond_8

    .line 266
    monitor-exit p0

    return v6

    :cond_8
    if-eqz p2, :cond_9

    .line 247
    :try_start_8
    sget-object p1, Lcom/mopub/common/logging/MoPubLog$AdLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$AdLogEvent;

    new-array p2, v5, [Ljava/lang/Object;

    const-string v0, "Cannot force refresh while showing an interstitial."

    aput-object v0, p2, v6

    invoke-static {p1, p2}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 248
    monitor-exit p0

    return v6

    .line 251
    :cond_9
    :try_start_9
    invoke-direct {p0}, Lcom/mopub/mobileads/MoPubInterstitial;->invalidateInterstitialAdapter()V

    .line 252
    sget-object p1, Lcom/mopub/mobileads/MoPubInterstitial$InterstitialState;->IDLE:Lcom/mopub/mobileads/MoPubInterstitial$InterstitialState;

    iput-object p1, p0, Lcom/mopub/mobileads/MoPubInterstitial;->mCurrentInterstitialState:Lcom/mopub/mobileads/MoPubInterstitial$InterstitialState;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 253
    monitor-exit p0

    return v5

    .line 263
    :cond_a
    :try_start_a
    invoke-direct {p0}, Lcom/mopub/mobileads/MoPubInterstitial;->setInterstitialStateDestroyed()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 264
    monitor-exit p0

    return v5

    .line 260
    :cond_b
    :try_start_b
    sget-object p1, Lcom/mopub/common/logging/MoPubLog$AdLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$AdLogEvent;

    new-array p2, v5, [Ljava/lang/Object;

    const-string v0, "Already showing an interstitial. Cannot show it again."

    aput-object v0, p2, v6

    invoke-static {p1, p2}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 261
    monitor-exit p0

    return v6

    :cond_c
    if-nez p2, :cond_d

    .line 256
    :try_start_c
    sget-object p1, Lcom/mopub/common/logging/MoPubLog$AdLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$AdLogEvent;

    new-array p2, v5, [Ljava/lang/Object;

    const-string v0, "Interstitial already showing. Not loading another."

    aput-object v0, p2, v6

    invoke-static {p1, p2}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 258
    :cond_d
    monitor-exit p0

    return v6

    .line 214
    :cond_e
    :try_start_d
    sget-object v0, Lcom/mopub/mobileads/MoPubInterstitial$2;->$SwitchMap$com$mopub$mobileads$MoPubInterstitial$InterstitialState:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    if-eq p1, v5, :cond_13

    if-eq p1, v4, :cond_12

    if-eq p1, v3, :cond_11

    if-eq p1, v2, :cond_f

    .line 241
    monitor-exit p0

    return v6

    :cond_f
    if-eqz p2, :cond_10

    .line 218
    :try_start_e
    invoke-direct {p0}, Lcom/mopub/mobileads/MoPubInterstitial;->invalidateInterstitialAdapter()V

    .line 219
    sget-object p1, Lcom/mopub/mobileads/MoPubInterstitial$InterstitialState;->IDLE:Lcom/mopub/mobileads/MoPubInterstitial$InterstitialState;

    iput-object p1, p0, Lcom/mopub/mobileads/MoPubInterstitial;->mCurrentInterstitialState:Lcom/mopub/mobileads/MoPubInterstitial$InterstitialState;
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    .line 220
    monitor-exit p0

    return v5

    .line 222
    :cond_10
    monitor-exit p0

    return v6

    .line 238
    :cond_11
    :try_start_f
    invoke-direct {p0}, Lcom/mopub/mobileads/MoPubInterstitial;->setInterstitialStateDestroyed()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    .line 239
    monitor-exit p0

    return v5

    .line 233
    :cond_12
    :try_start_10
    invoke-direct {p0}, Lcom/mopub/mobileads/MoPubInterstitial;->showCustomEventInterstitial()V

    .line 234
    sget-object p1, Lcom/mopub/mobileads/MoPubInterstitial$InterstitialState;->SHOWING:Lcom/mopub/mobileads/MoPubInterstitial$InterstitialState;

    iput-object p1, p0, Lcom/mopub/mobileads/MoPubInterstitial;->mCurrentInterstitialState:Lcom/mopub/mobileads/MoPubInterstitial$InterstitialState;

    .line 235
    iget-object p1, p0, Lcom/mopub/mobileads/MoPubInterstitial;->mHandler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/mopub/mobileads/MoPubInterstitial;->mAdExpiration:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    .line 236
    monitor-exit p0

    return v5

    .line 225
    :cond_13
    :try_start_11
    sget-object p1, Lcom/mopub/common/logging/MoPubLog$AdLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$AdLogEvent;

    new-array p2, v5, [Ljava/lang/Object;

    const-string v0, "Interstitial already loaded. Not loading another."

    aput-object v0, p2, v6

    invoke-static {p1, p2}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 227
    iget-object p1, p0, Lcom/mopub/mobileads/MoPubInterstitial;->mInterstitialAdListener:Lcom/mopub/mobileads/MoPubInterstitial$InterstitialAdListener;

    if-eqz p1, :cond_14

    .line 228
    iget-object p1, p0, Lcom/mopub/mobileads/MoPubInterstitial;->mInterstitialAdListener:Lcom/mopub/mobileads/MoPubInterstitial$InterstitialAdListener;

    invoke-interface {p1, p0}, Lcom/mopub/mobileads/MoPubInterstitial$InterstitialAdListener;->onInterstitialLoaded(Lcom/mopub/mobileads/MoPubInterstitial;)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    .line 230
    :cond_14
    monitor-exit p0

    return v6

    .line 174
    :cond_15
    :try_start_12
    sget-object v0, Lcom/mopub/mobileads/MoPubInterstitial$2;->$SwitchMap$com$mopub$mobileads$MoPubInterstitial$InterstitialState:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    if-eq p1, v5, :cond_1d

    if-eq p1, v1, :cond_19

    if-eq p1, v4, :cond_18

    if-eq p1, v3, :cond_17

    if-eq p1, v2, :cond_16

    .line 211
    monitor-exit p0

    return v6

    .line 179
    :cond_16
    :try_start_13
    invoke-direct {p0}, Lcom/mopub/mobileads/MoPubInterstitial;->invalidateInterstitialAdapter()V

    .line 180
    sget-object p1, Lcom/mopub/mobileads/MoPubInterstitial$InterstitialState;->IDLE:Lcom/mopub/mobileads/MoPubInterstitial$InterstitialState;

    iput-object p1, p0, Lcom/mopub/mobileads/MoPubInterstitial;->mCurrentInterstitialState:Lcom/mopub/mobileads/MoPubInterstitial$InterstitialState;
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    .line 181
    monitor-exit p0

    return v5

    .line 208
    :cond_17
    :try_start_14
    invoke-direct {p0}, Lcom/mopub/mobileads/MoPubInterstitial;->setInterstitialStateDestroyed()V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_0

    .line 209
    monitor-exit p0

    return v5

    .line 205
    :cond_18
    :try_start_15
    sget-object p1, Lcom/mopub/common/logging/MoPubLog$AdLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$AdLogEvent;

    new-array p2, v5, [Ljava/lang/Object;

    const-string v0, "Interstitial is not ready to be shown yet."

    aput-object v0, p2, v6

    invoke-static {p1, p2}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_0

    .line 206
    monitor-exit p0

    return v6

    .line 190
    :cond_19
    :try_start_16
    sget-object p1, Lcom/mopub/common/logging/MoPubLog$AdLogEvent;->LOAD_SUCCESS:Lcom/mopub/common/logging/MoPubLog$AdLogEvent;

    new-array p2, v6, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 191
    sget-object p1, Lcom/mopub/mobileads/MoPubInterstitial$InterstitialState;->READY:Lcom/mopub/mobileads/MoPubInterstitial$InterstitialState;

    iput-object p1, p0, Lcom/mopub/mobileads/MoPubInterstitial;->mCurrentInterstitialState:Lcom/mopub/mobileads/MoPubInterstitial$InterstitialState;

    .line 193
    iget-object p1, p0, Lcom/mopub/mobileads/MoPubInterstitial;->mInterstitialView:Lcom/mopub/mobileads/MoPubInterstitial$MoPubInterstitialView;

    .line 194
    invoke-virtual {p1}, Lcom/mopub/mobileads/MoPubInterstitial$MoPubInterstitialView;->getCustomEventClassName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/mopub/mobileads/AdTypeTranslator$CustomEventType;->isMoPubSpecific(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1a

    .line 195
    iget-object p1, p0, Lcom/mopub/mobileads/MoPubInterstitial;->mHandler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/mopub/mobileads/MoPubInterstitial;->mAdExpiration:Ljava/lang/Runnable;

    const-wide/32 v0, 0xdbba00

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 197
    :cond_1a
    iget-object p1, p0, Lcom/mopub/mobileads/MoPubInterstitial;->mInterstitialView:Lcom/mopub/mobileads/MoPubInterstitial$MoPubInterstitialView;

    iget-object p1, p1, Lcom/mopub/mobileads/MoPubView;->mAdViewController:Lcom/mopub/mobileads/AdViewController;

    if-eqz p1, :cond_1b

    .line 198
    iget-object p1, p0, Lcom/mopub/mobileads/MoPubInterstitial;->mInterstitialView:Lcom/mopub/mobileads/MoPubInterstitial$MoPubInterstitialView;

    iget-object p1, p1, Lcom/mopub/mobileads/MoPubView;->mAdViewController:Lcom/mopub/mobileads/AdViewController;

    invoke-virtual {p1}, Lcom/mopub/mobileads/AdViewController;->creativeDownloadSuccess()V

    .line 200
    :cond_1b
    iget-object p1, p0, Lcom/mopub/mobileads/MoPubInterstitial;->mInterstitialAdListener:Lcom/mopub/mobileads/MoPubInterstitial$InterstitialAdListener;

    if-eqz p1, :cond_1c

    .line 201
    iget-object p1, p0, Lcom/mopub/mobileads/MoPubInterstitial;->mInterstitialAdListener:Lcom/mopub/mobileads/MoPubInterstitial$InterstitialAdListener;

    invoke-interface {p1, p0}, Lcom/mopub/mobileads/MoPubInterstitial$InterstitialAdListener;->onInterstitialLoaded(Lcom/mopub/mobileads/MoPubInterstitial;)V
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_0

    .line 203
    :cond_1c
    monitor-exit p0

    return v5

    :cond_1d
    if-nez p2, :cond_1e

    .line 185
    :try_start_17
    sget-object p1, Lcom/mopub/common/logging/MoPubLog$AdLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$AdLogEvent;

    new-array p2, v5, [Ljava/lang/Object;

    const-string v0, "Already loading an interstitial."

    aput-object v0, p2, v6

    invoke-static {p1, p2}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_0

    .line 187
    :cond_1e
    monitor-exit p0

    return v6

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public destroy()V
    .locals 1

    .line 379
    sget-object v0, Lcom/mopub/mobileads/MoPubInterstitial$InterstitialState;->DESTROYED:Lcom/mopub/mobileads/MoPubInterstitial$InterstitialState;

    invoke-direct {p0, v0}, Lcom/mopub/mobileads/MoPubInterstitial;->attemptStateTransition(Lcom/mopub/mobileads/MoPubInterstitial$InterstitialState;)Z

    return-void
.end method

.method public forceRefresh()V
    .locals 2

    .line 314
    sget-object v0, Lcom/mopub/mobileads/MoPubInterstitial$InterstitialState;->IDLE:Lcom/mopub/mobileads/MoPubInterstitial$InterstitialState;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/mopub/mobileads/MoPubInterstitial;->attemptStateTransition(Lcom/mopub/mobileads/MoPubInterstitial$InterstitialState;Z)Z

    .line 315
    sget-object v0, Lcom/mopub/mobileads/MoPubInterstitial$InterstitialState;->LOADING:Lcom/mopub/mobileads/MoPubInterstitial$InterstitialState;

    invoke-virtual {p0, v0, v1}, Lcom/mopub/mobileads/MoPubInterstitial;->attemptStateTransition(Lcom/mopub/mobileads/MoPubInterstitial$InterstitialState;Z)Z

    return-void
.end method

.method public getActivity()Landroid/app/Activity;
    .locals 1

    .line 370
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubInterstitial;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method getAdTimeoutDelay(I)Ljava/lang/Integer;
    .locals 1

    .line 327
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubInterstitial;->mInterstitialView:Lcom/mopub/mobileads/MoPubInterstitial$MoPubInterstitialView;

    invoke-virtual {v0, p1}, Lcom/mopub/mobileads/MoPubView;->getAdTimeoutDelay(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public getInterstitialAdListener()Lcom/mopub/mobileads/MoPubInterstitial$InterstitialAdListener;
    .locals 1

    .line 388
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubInterstitial;->mInterstitialAdListener:Lcom/mopub/mobileads/MoPubInterstitial$InterstitialAdListener;

    return-object v0
.end method

.method public getKeywords()Ljava/lang/String;
    .locals 1

    .line 356
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubInterstitial;->mInterstitialView:Lcom/mopub/mobileads/MoPubInterstitial$MoPubInterstitialView;

    invoke-virtual {v0}, Lcom/mopub/mobileads/MoPubView;->getKeywords()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLocalExtras()Ljava/util/Map;
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

    .line 405
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubInterstitial;->mInterstitialView:Lcom/mopub/mobileads/MoPubInterstitial$MoPubInterstitialView;

    invoke-virtual {v0}, Lcom/mopub/mobileads/MoPubView;->getLocalExtras()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getLocation()Landroid/location/Location;
    .locals 1

    .line 375
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubInterstitial;->mInterstitialView:Lcom/mopub/mobileads/MoPubInterstitial$MoPubInterstitialView;

    invoke-virtual {v0}, Lcom/mopub/mobileads/MoPubView;->getLocation()Landroid/location/Location;

    move-result-object v0

    return-object v0
.end method

.method public getTesting()Z
    .locals 1

    .line 396
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubInterstitial;->mInterstitialView:Lcom/mopub/mobileads/MoPubInterstitial$MoPubInterstitialView;

    invoke-virtual {v0}, Lcom/mopub/mobileads/MoPubView;->getTesting()Z

    move-result v0

    return v0
.end method

.method public getUserDataKeywords()Ljava/lang/String;
    .locals 1

    .line 365
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubInterstitial;->mInterstitialView:Lcom/mopub/mobileads/MoPubInterstitial$MoPubInterstitialView;

    invoke-virtual {v0}, Lcom/mopub/mobileads/MoPubView;->getUserDataKeywords()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method isDestroyed()Z
    .locals 2

    .line 323
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubInterstitial;->mCurrentInterstitialState:Lcom/mopub/mobileads/MoPubInterstitial$InterstitialState;

    sget-object v1, Lcom/mopub/mobileads/MoPubInterstitial$InterstitialState;->DESTROYED:Lcom/mopub/mobileads/MoPubInterstitial$InterstitialState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isReady()Z
    .locals 2

    .line 319
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubInterstitial;->mCurrentInterstitialState:Lcom/mopub/mobileads/MoPubInterstitial$InterstitialState;

    sget-object v1, Lcom/mopub/mobileads/MoPubInterstitial$InterstitialState;->READY:Lcom/mopub/mobileads/MoPubInterstitial$InterstitialState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public load()V
    .locals 2

    .line 304
    sget-object v0, Lcom/mopub/common/logging/MoPubLog$AdLogEvent;->LOAD_ATTEMPTED:Lcom/mopub/common/logging/MoPubLog$AdLogEvent;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 305
    sget-object v0, Lcom/mopub/mobileads/MoPubInterstitial$InterstitialState;->LOADING:Lcom/mopub/mobileads/MoPubInterstitial$InterstitialState;

    invoke-direct {p0, v0}, Lcom/mopub/mobileads/MoPubInterstitial;->attemptStateTransition(Lcom/mopub/mobileads/MoPubInterstitial$InterstitialState;)Z

    return-void
.end method

.method public onCustomEventInterstitialClicked()V
    .locals 2

    .line 459
    invoke-virtual {p0}, Lcom/mopub/mobileads/MoPubInterstitial;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 462
    :cond_0
    sget-object v0, Lcom/mopub/common/logging/MoPubLog$AdLogEvent;->CLICKED:Lcom/mopub/common/logging/MoPubLog$AdLogEvent;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 464
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubInterstitial;->mInterstitialView:Lcom/mopub/mobileads/MoPubInterstitial$MoPubInterstitialView;

    invoke-virtual {v0}, Lcom/mopub/mobileads/MoPubView;->registerClick()V

    .line 466
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubInterstitial;->mInterstitialAdListener:Lcom/mopub/mobileads/MoPubInterstitial$InterstitialAdListener;

    if-eqz v0, :cond_1

    .line 467
    invoke-interface {v0, p0}, Lcom/mopub/mobileads/MoPubInterstitial$InterstitialAdListener;->onInterstitialClicked(Lcom/mopub/mobileads/MoPubInterstitial;)V

    :cond_1
    return-void
.end method

.method public onCustomEventInterstitialDismissed()V
    .locals 2

    .line 485
    invoke-virtual {p0}, Lcom/mopub/mobileads/MoPubInterstitial;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 488
    :cond_0
    sget-object v0, Lcom/mopub/common/logging/MoPubLog$AdLogEvent;->WILL_DISAPPEAR:Lcom/mopub/common/logging/MoPubLog$AdLogEvent;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 490
    sget-object v0, Lcom/mopub/mobileads/MoPubInterstitial$InterstitialState;->IDLE:Lcom/mopub/mobileads/MoPubInterstitial$InterstitialState;

    invoke-direct {p0, v0}, Lcom/mopub/mobileads/MoPubInterstitial;->attemptStateTransition(Lcom/mopub/mobileads/MoPubInterstitial$InterstitialState;)Z

    .line 492
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubInterstitial;->mInterstitialAdListener:Lcom/mopub/mobileads/MoPubInterstitial$InterstitialAdListener;

    if-eqz v0, :cond_1

    .line 493
    invoke-interface {v0, p0}, Lcom/mopub/mobileads/MoPubInterstitial$InterstitialAdListener;->onInterstitialDismissed(Lcom/mopub/mobileads/MoPubInterstitial;)V

    :cond_1
    return-void
.end method

.method public onCustomEventInterstitialFailed(Lcom/mopub/mobileads/MoPubErrorCode;)V
    .locals 5

    .line 424
    invoke-virtual {p0}, Lcom/mopub/mobileads/MoPubInterstitial;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 428
    :cond_0
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubInterstitial;->mCurrentInterstitialState:Lcom/mopub/mobileads/MoPubInterstitial$InterstitialState;

    sget-object v1, Lcom/mopub/mobileads/MoPubInterstitial$InterstitialState;->LOADING:Lcom/mopub/mobileads/MoPubInterstitial$InterstitialState;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x2

    if-ne v0, v1, :cond_1

    .line 429
    sget-object v0, Lcom/mopub/common/logging/MoPubLog$AdLogEvent;->LOAD_FAILED:Lcom/mopub/common/logging/MoPubLog$AdLogEvent;

    new-array v1, v4, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/mopub/mobileads/MoPubErrorCode;->getIntCode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v3

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    goto :goto_0

    .line 430
    :cond_1
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubInterstitial;->mCurrentInterstitialState:Lcom/mopub/mobileads/MoPubInterstitial$InterstitialState;

    sget-object v1, Lcom/mopub/mobileads/MoPubInterstitial$InterstitialState;->SHOWING:Lcom/mopub/mobileads/MoPubInterstitial$InterstitialState;

    if-ne v0, v1, :cond_2

    .line 431
    sget-object v0, Lcom/mopub/common/logging/MoPubLog$AdLogEvent;->SHOW_FAILED:Lcom/mopub/common/logging/MoPubLog$AdLogEvent;

    new-array v1, v4, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/mopub/mobileads/MoPubErrorCode;->getIntCode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v3

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 434
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubInterstitial;->mInterstitialView:Lcom/mopub/mobileads/MoPubInterstitial$MoPubInterstitialView;

    invoke-virtual {v0, p1}, Lcom/mopub/mobileads/MoPubView;->loadFailUrl(Lcom/mopub/mobileads/MoPubErrorCode;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 435
    sget-object p1, Lcom/mopub/mobileads/MoPubInterstitial$InterstitialState;->IDLE:Lcom/mopub/mobileads/MoPubInterstitial$InterstitialState;

    invoke-direct {p0, p1}, Lcom/mopub/mobileads/MoPubInterstitial;->attemptStateTransition(Lcom/mopub/mobileads/MoPubInterstitial$InterstitialState;)Z

    :cond_3
    return-void
.end method

.method public onCustomEventInterstitialImpression()V
    .locals 1

    .line 473
    invoke-virtual {p0}, Lcom/mopub/mobileads/MoPubInterstitial;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 477
    :cond_0
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubInterstitial;->mCustomEventInterstitialAdapter:Lcom/mopub/mobileads/CustomEventInterstitialAdapter;

    if-eqz v0, :cond_1

    .line 478
    invoke-virtual {v0}, Lcom/mopub/mobileads/CustomEventInterstitialAdapter;->isAutomaticImpressionAndClickTrackingEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 479
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubInterstitial;->mInterstitialView:Lcom/mopub/mobileads/MoPubInterstitial$MoPubInterstitialView;

    invoke-virtual {v0}, Lcom/mopub/mobileads/MoPubInterstitial$MoPubInterstitialView;->trackImpression()V

    :cond_1
    return-void
.end method

.method public onCustomEventInterstitialLoaded()V
    .locals 1

    .line 415
    invoke-virtual {p0}, Lcom/mopub/mobileads/MoPubInterstitial;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 419
    :cond_0
    sget-object v0, Lcom/mopub/mobileads/MoPubInterstitial$InterstitialState;->READY:Lcom/mopub/mobileads/MoPubInterstitial$InterstitialState;

    invoke-direct {p0, v0}, Lcom/mopub/mobileads/MoPubInterstitial;->attemptStateTransition(Lcom/mopub/mobileads/MoPubInterstitial$InterstitialState;)Z

    return-void
.end method

.method public onCustomEventInterstitialShown()V
    .locals 2

    .line 441
    invoke-virtual {p0}, Lcom/mopub/mobileads/MoPubInterstitial;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 445
    :cond_0
    sget-object v0, Lcom/mopub/common/logging/MoPubLog$AdLogEvent;->SHOW_SUCCESS:Lcom/mopub/common/logging/MoPubLog$AdLogEvent;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 447
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubInterstitial;->mCustomEventInterstitialAdapter:Lcom/mopub/mobileads/CustomEventInterstitialAdapter;

    if-eqz v0, :cond_1

    .line 448
    invoke-virtual {v0}, Lcom/mopub/mobileads/CustomEventInterstitialAdapter;->isAutomaticImpressionAndClickTrackingEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 449
    :cond_1
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubInterstitial;->mInterstitialView:Lcom/mopub/mobileads/MoPubInterstitial$MoPubInterstitialView;

    invoke-virtual {v0}, Lcom/mopub/mobileads/MoPubInterstitial$MoPubInterstitialView;->trackImpression()V

    .line 452
    :cond_2
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubInterstitial;->mInterstitialAdListener:Lcom/mopub/mobileads/MoPubInterstitial$InterstitialAdListener;

    if-eqz v0, :cond_3

    .line 453
    invoke-interface {v0, p0}, Lcom/mopub/mobileads/MoPubInterstitial$InterstitialAdListener;->onInterstitialShown(Lcom/mopub/mobileads/MoPubInterstitial;)V

    :cond_3
    return-void
.end method

.method public setInterstitialAdListener(Lcom/mopub/mobileads/MoPubInterstitial$InterstitialAdListener;)V
    .locals 0

    .line 383
    iput-object p1, p0, Lcom/mopub/mobileads/MoPubInterstitial;->mInterstitialAdListener:Lcom/mopub/mobileads/MoPubInterstitial$InterstitialAdListener;

    return-void
.end method

.method public setKeywords(Ljava/lang/String;)V
    .locals 1

    .line 351
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubInterstitial;->mInterstitialView:Lcom/mopub/mobileads/MoPubInterstitial$MoPubInterstitialView;

    invoke-virtual {v0, p1}, Lcom/mopub/mobileads/MoPubView;->setKeywords(Ljava/lang/String;)V

    return-void
.end method

.method public setLocalExtras(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 400
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubInterstitial;->mInterstitialView:Lcom/mopub/mobileads/MoPubInterstitial$MoPubInterstitialView;

    invoke-virtual {v0, p1}, Lcom/mopub/mobileads/MoPubView;->setLocalExtras(Ljava/util/Map;)V

    return-void
.end method

.method public setTesting(Z)V
    .locals 1

    .line 392
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubInterstitial;->mInterstitialView:Lcom/mopub/mobileads/MoPubInterstitial$MoPubInterstitialView;

    invoke-virtual {v0, p1}, Lcom/mopub/mobileads/MoPubView;->setTesting(Z)V

    return-void
.end method

.method public setUserDataKeywords(Ljava/lang/String;)V
    .locals 1

    .line 360
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubInterstitial;->mInterstitialView:Lcom/mopub/mobileads/MoPubInterstitial$MoPubInterstitialView;

    invoke-virtual {v0, p1}, Lcom/mopub/mobileads/MoPubView;->setUserDataKeywords(Ljava/lang/String;)V

    return-void
.end method

.method public show()Z
    .locals 2

    .line 309
    sget-object v0, Lcom/mopub/common/logging/MoPubLog$AdLogEvent;->SHOW_ATTEMPTED:Lcom/mopub/common/logging/MoPubLog$AdLogEvent;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 310
    sget-object v0, Lcom/mopub/mobileads/MoPubInterstitial$InterstitialState;->SHOWING:Lcom/mopub/mobileads/MoPubInterstitial$InterstitialState;

    invoke-direct {p0, v0}, Lcom/mopub/mobileads/MoPubInterstitial;->attemptStateTransition(Lcom/mopub/mobileads/MoPubInterstitial$InterstitialState;)Z

    move-result v0

    return v0
.end method
