.class final Lcom/facebook/appevents/codeless/CodelessManager$2;
.super Ljava/lang/Object;
.source "CodelessManager.java"

# interfaces
.implements Lcom/facebook/internal/FeatureManager$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/appevents/codeless/CodelessManager;->onActivityPaused(Landroid/app/Activity;)V
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

    .line 119
    iput-object p1, p0, Lcom/facebook/appevents/codeless/CodelessManager$2;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted(Z)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 126
    :cond_0
    invoke-static {}, Lcom/facebook/appevents/codeless/CodelessManager;->access$000()Lcom/facebook/appevents/codeless/CodelessMatcher;

    move-result-object p1

    iget-object v0, p0, Lcom/facebook/appevents/codeless/CodelessManager$2;->val$activity:Landroid/app/Activity;

    invoke-virtual {p1, v0}, Lcom/facebook/appevents/codeless/CodelessMatcher;->remove(Landroid/app/Activity;)V

    .line 128
    invoke-static {}, Lcom/facebook/appevents/codeless/CodelessManager;->access$200()Lcom/facebook/appevents/codeless/ViewIndexer;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 129
    invoke-static {}, Lcom/facebook/appevents/codeless/CodelessManager;->access$200()Lcom/facebook/appevents/codeless/ViewIndexer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/facebook/appevents/codeless/ViewIndexer;->unschedule()V

    .line 131
    :cond_1
    invoke-static {}, Lcom/facebook/appevents/codeless/CodelessManager;->access$100()Landroid/hardware/SensorManager;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 132
    invoke-static {}, Lcom/facebook/appevents/codeless/CodelessManager;->access$100()Landroid/hardware/SensorManager;

    move-result-object p1

    invoke-static {}, Lcom/facebook/appevents/codeless/CodelessManager;->access$300()Lcom/facebook/appevents/codeless/ViewIndexingTrigger;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    :cond_2
    return-void
.end method
