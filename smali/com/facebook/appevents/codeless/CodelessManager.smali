.class public final Lcom/facebook/appevents/codeless/CodelessManager;
.super Ljava/lang/Object;
.source "CodelessManager.java"


# static fields
.field private static deviceSessionID:Ljava/lang/String;

.field private static isAppIndexingEnabled:Ljava/lang/Boolean;

.field private static volatile isCheckingSession:Ljava/lang/Boolean;

.field private static matcher:Lcom/facebook/appevents/codeless/CodelessMatcher;

.field private static sensorManager:Landroid/hardware/SensorManager;

.field private static viewIndexer:Lcom/facebook/appevents/codeless/ViewIndexer;

.field private static final viewIndexingTrigger:Lcom/facebook/appevents/codeless/ViewIndexingTrigger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 53
    new-instance v0, Lcom/facebook/appevents/codeless/ViewIndexingTrigger;

    invoke-direct {v0}, Lcom/facebook/appevents/codeless/ViewIndexingTrigger;-><init>()V

    sput-object v0, Lcom/facebook/appevents/codeless/CodelessManager;->viewIndexingTrigger:Lcom/facebook/appevents/codeless/ViewIndexingTrigger;

    const/4 v0, 0x0

    .line 57
    sput-object v0, Lcom/facebook/appevents/codeless/CodelessManager;->deviceSessionID:Ljava/lang/String;

    const/4 v0, 0x0

    .line 58
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/facebook/appevents/codeless/CodelessManager;->isAppIndexingEnabled:Ljava/lang/Boolean;

    .line 59
    sput-object v0, Lcom/facebook/appevents/codeless/CodelessManager;->isCheckingSession:Ljava/lang/Boolean;

    return-void
.end method

.method static synthetic access$000()Lcom/facebook/appevents/codeless/CodelessMatcher;
    .locals 1

    .line 50
    invoke-static {}, Lcom/facebook/appevents/codeless/CodelessManager;->getMatcher()Lcom/facebook/appevents/codeless/CodelessMatcher;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100()Landroid/hardware/SensorManager;
    .locals 1

    .line 50
    sget-object v0, Lcom/facebook/appevents/codeless/CodelessManager;->sensorManager:Landroid/hardware/SensorManager;

    return-object v0
.end method

.method static synthetic access$102(Landroid/hardware/SensorManager;)Landroid/hardware/SensorManager;
    .locals 0

    .line 50
    sput-object p0, Lcom/facebook/appevents/codeless/CodelessManager;->sensorManager:Landroid/hardware/SensorManager;

    return-object p0
.end method

.method static synthetic access$200()Lcom/facebook/appevents/codeless/ViewIndexer;
    .locals 1

    .line 50
    sget-object v0, Lcom/facebook/appevents/codeless/CodelessManager;->viewIndexer:Lcom/facebook/appevents/codeless/ViewIndexer;

    return-object v0
.end method

.method static synthetic access$202(Lcom/facebook/appevents/codeless/ViewIndexer;)Lcom/facebook/appevents/codeless/ViewIndexer;
    .locals 0

    .line 50
    sput-object p0, Lcom/facebook/appevents/codeless/CodelessManager;->viewIndexer:Lcom/facebook/appevents/codeless/ViewIndexer;

    return-object p0
.end method

.method static synthetic access$300()Lcom/facebook/appevents/codeless/ViewIndexingTrigger;
    .locals 1

    .line 50
    sget-object v0, Lcom/facebook/appevents/codeless/CodelessManager;->viewIndexingTrigger:Lcom/facebook/appevents/codeless/ViewIndexingTrigger;

    return-object v0
.end method

.method static synthetic access$400()Ljava/lang/Boolean;
    .locals 1

    .line 50
    sget-object v0, Lcom/facebook/appevents/codeless/CodelessManager;->isAppIndexingEnabled:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic access$402(Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0

    .line 50
    sput-object p0, Lcom/facebook/appevents/codeless/CodelessManager;->isAppIndexingEnabled:Ljava/lang/Boolean;

    return-object p0
.end method

.method static synthetic access$502(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 50
    sput-object p0, Lcom/facebook/appevents/codeless/CodelessManager;->deviceSessionID:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$602(Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0

    .line 50
    sput-object p0, Lcom/facebook/appevents/codeless/CodelessManager;->isCheckingSession:Ljava/lang/Boolean;

    return-object p0
.end method

.method public static checkCodelessSession(Ljava/lang/String;)V
    .locals 2

    .line 149
    sget-object v0, Lcom/facebook/appevents/codeless/CodelessManager;->isCheckingSession:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 152
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/facebook/appevents/codeless/CodelessManager;->isCheckingSession:Ljava/lang/Boolean;

    .line 154
    invoke-static {}, Lcom/facebook/FacebookSdk;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/facebook/appevents/codeless/CodelessManager$3;

    invoke-direct {v1, p0}, Lcom/facebook/appevents/codeless/CodelessManager$3;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static getCurrentDeviceSessionID()Ljava/lang/String;
    .locals 1

    .line 208
    sget-object v0, Lcom/facebook/appevents/codeless/CodelessManager;->deviceSessionID:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 209
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/appevents/codeless/CodelessManager;->deviceSessionID:Ljava/lang/String;

    .line 212
    :cond_0
    sget-object v0, Lcom/facebook/appevents/codeless/CodelessManager;->deviceSessionID:Ljava/lang/String;

    return-object v0
.end method

.method public static getIsAppIndexingEnabled()Z
    .locals 1

    .line 216
    sget-object v0, Lcom/facebook/appevents/codeless/CodelessManager;->isAppIndexingEnabled:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method private static declared-synchronized getMatcher()Lcom/facebook/appevents/codeless/CodelessMatcher;
    .locals 2

    const-class v0, Lcom/facebook/appevents/codeless/CodelessManager;

    monitor-enter v0

    .line 139
    :try_start_0
    sget-object v1, Lcom/facebook/appevents/codeless/CodelessManager;->matcher:Lcom/facebook/appevents/codeless/CodelessMatcher;

    if-nez v1, :cond_0

    .line 140
    new-instance v1, Lcom/facebook/appevents/codeless/CodelessMatcher;

    invoke-direct {v1}, Lcom/facebook/appevents/codeless/CodelessMatcher;-><init>()V

    sput-object v1, Lcom/facebook/appevents/codeless/CodelessManager;->matcher:Lcom/facebook/appevents/codeless/CodelessMatcher;

    .line 143
    :cond_0
    sget-object v1, Lcom/facebook/appevents/codeless/CodelessManager;->matcher:Lcom/facebook/appevents/codeless/CodelessMatcher;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static onActivityPaused(Landroid/app/Activity;)V
    .locals 2

    .line 119
    sget-object v0, Lcom/facebook/internal/FeatureManager$Feature;->CodelessEvents:Lcom/facebook/internal/FeatureManager$Feature;

    new-instance v1, Lcom/facebook/appevents/codeless/CodelessManager$2;

    invoke-direct {v1, p0}, Lcom/facebook/appevents/codeless/CodelessManager$2;-><init>(Landroid/app/Activity;)V

    invoke-static {v0, v1}, Lcom/facebook/internal/FeatureManager;->checkFeature(Lcom/facebook/internal/FeatureManager$Feature;Lcom/facebook/internal/FeatureManager$Callback;)V

    return-void
.end method

.method public static onActivityResumed(Landroid/app/Activity;)V
    .locals 2

    .line 62
    sget-object v0, Lcom/facebook/internal/FeatureManager$Feature;->CodelessEvents:Lcom/facebook/internal/FeatureManager$Feature;

    new-instance v1, Lcom/facebook/appevents/codeless/CodelessManager$1;

    invoke-direct {v1, p0}, Lcom/facebook/appevents/codeless/CodelessManager$1;-><init>(Landroid/app/Activity;)V

    invoke-static {v0, v1}, Lcom/facebook/internal/FeatureManager;->checkFeature(Lcom/facebook/internal/FeatureManager$Feature;Lcom/facebook/internal/FeatureManager$Callback;)V

    return-void
.end method

.method public static updateAppIndexing(Ljava/lang/Boolean;)V
    .locals 0

    .line 220
    sput-object p0, Lcom/facebook/appevents/codeless/CodelessManager;->isAppIndexingEnabled:Ljava/lang/Boolean;

    return-void
.end method
