.class final Lcom/facebook/FacebookSdk$3;
.super Ljava/lang/Object;
.source "FacebookSdk.java"

# interfaces
.implements Lcom/facebook/internal/FeatureManager$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/FacebookSdk;->sdkInitialize(Landroid/content/Context;Lcom/facebook/FacebookSdk$InitializeCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 335
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 339
    invoke-static {}, Lcom/facebook/appevents/internal/RestrictiveDataManager;->enable()V

    :cond_0
    return-void
.end method
