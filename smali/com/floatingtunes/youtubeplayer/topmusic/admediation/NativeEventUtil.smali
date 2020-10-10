.class public Lcom/floatingtunes/youtubeplayer/topmusic/admediation/NativeEventUtil;
.super Ljava/lang/Object;
.source "NativeEventUtil.java"


# static fields
.field private static mUtils:Lcom/floatingtunes/youtubeplayer/topmusic/admediation/NativeEventUtil;


# instance fields
.field private logger:Lcom/facebook/appevents/AppEventsLogger;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/admediation/NativeEventUtil;->logger:Lcom/facebook/appevents/AppEventsLogger;

    if-nez v0, :cond_0

    .line 20
    invoke-static {p1}, Lcom/facebook/appevents/AppEventsLogger;->newLogger(Landroid/content/Context;)Lcom/facebook/appevents/AppEventsLogger;

    move-result-object p1

    iput-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/admediation/NativeEventUtil;->logger:Lcom/facebook/appevents/AppEventsLogger;

    :cond_0
    return-void
.end method

.method public static getLogger(Landroid/content/Context;)Lcom/floatingtunes/youtubeplayer/topmusic/admediation/NativeEventUtil;
    .locals 1

    .line 25
    sget-object v0, Lcom/floatingtunes/youtubeplayer/topmusic/admediation/NativeEventUtil;->mUtils:Lcom/floatingtunes/youtubeplayer/topmusic/admediation/NativeEventUtil;

    if-eqz v0, :cond_0

    return-object v0

    .line 28
    :cond_0
    new-instance v0, Lcom/floatingtunes/youtubeplayer/topmusic/admediation/NativeEventUtil;

    invoke-direct {v0, p0}, Lcom/floatingtunes/youtubeplayer/topmusic/admediation/NativeEventUtil;-><init>(Landroid/content/Context;)V

    return-object v0
.end method


# virtual methods
.method public SetNative_Click()V
    .locals 2

    .line 47
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/admediation/NativeEventUtil;->logger:Lcom/facebook/appevents/AppEventsLogger;

    const-string v1, "Native Click"

    invoke-virtual {v0, v1}, Lcom/facebook/appevents/AppEventsLogger;->logEvent(Ljava/lang/String;)V

    return-void
.end method

.method public SetNative_Enter()V
    .locals 2

    .line 43
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/admediation/NativeEventUtil;->logger:Lcom/facebook/appevents/AppEventsLogger;

    const-string v1, "Native Enter"

    invoke-virtual {v0, v1}, Lcom/facebook/appevents/AppEventsLogger;->logEvent(Ljava/lang/String;)V

    return-void
.end method

.method public SetNative_Impression()V
    .locals 2

    .line 38
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/admediation/NativeEventUtil;->logger:Lcom/facebook/appevents/AppEventsLogger;

    const-string v1, "Native impression"

    invoke-virtual {v0, v1}, Lcom/facebook/appevents/AppEventsLogger;->logEvent(Ljava/lang/String;)V

    return-void
.end method

.method public SetNative_Request()V
    .locals 2

    .line 33
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/admediation/NativeEventUtil;->logger:Lcom/facebook/appevents/AppEventsLogger;

    const-string v1, "Native request"

    invoke-virtual {v0, v1}, Lcom/facebook/appevents/AppEventsLogger;->logEvent(Ljava/lang/String;)V

    return-void
.end method
