.class final Lcom/facebook/appevents/codeless/CodelessManager$1;
.super Ljava/lang/Object;
.source "CodelessManager.java"

# interfaces
.implements Lcom/facebook/internal/FeatureManager$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/appevents/codeless/CodelessManager;->onActivityResumed(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/facebook/appevents/codeless/CodelessManager$1;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted(Z)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    .line 69
    :cond_0
    invoke-static {}, Lcom/facebook/appevents/codeless/CodelessManager;->access$000()Lcom/facebook/appevents/codeless/CodelessMatcher;

    move-result-object p1

    iget-object v0, p0, Lcom/facebook/appevents/codeless/CodelessManager$1;->val$activity:Landroid/app/Activity;

    invoke-virtual {p1, v0}, Lcom/facebook/appevents/codeless/CodelessMatcher;->add(Landroid/app/Activity;)V

    .line 71
    iget-object p1, p0, Lcom/facebook/appevents/codeless/CodelessManager$1;->val$activity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 72
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationId()Ljava/lang/String;

    move-result-object v0

    .line 74
    invoke-static {v0}, Lcom/facebook/internal/FetchedAppSettingsManager;->getAppSettingsWithoutQuery(Ljava/lang/String;)Lcom/facebook/internal/FetchedAppSettings;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 75
    invoke-virtual {v1}, Lcom/facebook/internal/FetchedAppSettings;->getCodelessEventsEnabled()Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    const-string v2, "sensor"

    .line 78
    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/SensorManager;

    .line 77
    invoke-static {p1}, Lcom/facebook/appevents/codeless/CodelessManager;->access$102(Landroid/hardware/SensorManager;)Landroid/hardware/SensorManager;

    .line 79
    invoke-static {}, Lcom/facebook/appevents/codeless/CodelessManager;->access$100()Landroid/hardware/SensorManager;

    move-result-object p1

    if-nez p1, :cond_2

    return-void

    .line 83
    :cond_2
    invoke-static {}, Lcom/facebook/appevents/codeless/CodelessManager;->access$100()Landroid/hardware/SensorManager;

    move-result-object p1

    const/4 v2, 0x1

    .line 84
    invoke-virtual {p1, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object p1

    .line 85
    new-instance v2, Lcom/facebook/appevents/codeless/ViewIndexer;

    iget-object v3, p0, Lcom/facebook/appevents/codeless/CodelessManager$1;->val$activity:Landroid/app/Activity;

    invoke-direct {v2, v3}, Lcom/facebook/appevents/codeless/ViewIndexer;-><init>(Landroid/app/Activity;)V

    invoke-static {v2}, Lcom/facebook/appevents/codeless/CodelessManager;->access$202(Lcom/facebook/appevents/codeless/ViewIndexer;)Lcom/facebook/appevents/codeless/ViewIndexer;

    .line 86
    invoke-static {}, Lcom/facebook/appevents/codeless/CodelessManager;->access$300()Lcom/facebook/appevents/codeless/ViewIndexingTrigger;

    move-result-object v2

    new-instance v3, Lcom/facebook/appevents/codeless/CodelessManager$1$1;

    invoke-direct {v3, p0, v1, v0}, Lcom/facebook/appevents/codeless/CodelessManager$1$1;-><init>(Lcom/facebook/appevents/codeless/CodelessManager$1;Lcom/facebook/internal/FetchedAppSettings;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/facebook/appevents/codeless/ViewIndexingTrigger;->setOnShakeListener(Lcom/facebook/appevents/codeless/ViewIndexingTrigger$OnShakeListener;)V

    .line 99
    invoke-static {}, Lcom/facebook/appevents/codeless/CodelessManager;->access$100()Landroid/hardware/SensorManager;

    move-result-object v0

    .line 100
    invoke-static {}, Lcom/facebook/appevents/codeless/CodelessManager;->access$300()Lcom/facebook/appevents/codeless/ViewIndexingTrigger;

    move-result-object v2

    const/4 v3, 0x2

    .line 99
    invoke-virtual {v0, v2, p1, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    if-eqz v1, :cond_3

    .line 102
    invoke-virtual {v1}, Lcom/facebook/internal/FetchedAppSettings;->getCodelessEventsEnabled()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 103
    invoke-static {}, Lcom/facebook/appevents/codeless/CodelessManager;->access$200()Lcom/facebook/appevents/codeless/ViewIndexer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/facebook/appevents/codeless/ViewIndexer;->schedule()V

    :cond_3
    :goto_0
    return-void
.end method
