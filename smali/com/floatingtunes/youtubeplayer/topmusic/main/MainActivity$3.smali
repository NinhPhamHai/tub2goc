.class Lcom/floatingtunes/youtubeplayer/topmusic/main/MainActivity$3;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Lcom/facebook/applinks/AppLinkData$CompletionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/floatingtunes/youtubeplayer/topmusic/main/MainActivity;->deeplink()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/floatingtunes/youtubeplayer/topmusic/main/MainActivity;


# direct methods
.method constructor <init>(Lcom/floatingtunes/youtubeplayer/topmusic/main/MainActivity;)V
    .locals 0

    .line 144
    iput-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/main/MainActivity$3;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/main/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDeferredAppLinkDataFetched(Lcom/facebook/applinks/AppLinkData;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 149
    invoke-static {}, Lcom/floatingtunes/youtubeplayer/topmusic/app/AppContext;->getAppContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/floatingtunes/youtubeplayer/topmusic/sp/SuperSp;->setAppFromFb(Landroid/content/Context;Z)V

    .line 151
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 152
    invoke-virtual {p1}, Lcom/facebook/applinks/AppLinkData;->getTargetUri()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "link_data"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/main/MainActivity$3;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/main/MainActivity;

    const-string v1, "user_from_facebook"

    invoke-static {p1, v1, v0}, Lcom/floatingtunes/youtubeplayer/topmusic/util/FirebaseUtil;->addAnalyticsEvent(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 155
    :try_start_0
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance v0, Lcom/floatingtunes/youtubeplayer/topmusic/bus/FBEvent;

    invoke-direct {v0}, Lcom/floatingtunes/youtubeplayer/topmusic/bus/FBEvent;-><init>()V

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 157
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method
