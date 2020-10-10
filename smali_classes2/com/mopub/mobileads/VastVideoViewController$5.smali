.class Lcom/mopub/mobileads/VastVideoViewController$5;
.super Ljava/lang/Object;
.source "VastVideoViewController.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mopub/mobileads/VastVideoViewController;->createVideoView(Landroid/content/Context;I)Lcom/mopub/mobileads/VastVideoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mopub/mobileads/VastVideoViewController;


# direct methods
.method constructor <init>(Lcom/mopub/mobileads/VastVideoViewController;)V
    .locals 0

    .line 458
    iput-object p1, p0, Lcom/mopub/mobileads/VastVideoViewController$5;->this$0:Lcom/mopub/mobileads/VastVideoViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 2

    .line 461
    iget-object p1, p0, Lcom/mopub/mobileads/VastVideoViewController$5;->this$0:Lcom/mopub/mobileads/VastVideoViewController;

    invoke-static {p1}, Lcom/mopub/mobileads/VastVideoViewController;->access$100(Lcom/mopub/mobileads/VastVideoViewController;)Lcom/mopub/common/ExternalViewabilitySessionManager;

    move-result-object p1

    sget-object p2, Lcom/mopub/common/ExternalViewabilitySession$VideoEvent;->RECORD_AD_ERROR:Lcom/mopub/common/ExternalViewabilitySession$VideoEvent;

    iget-object p3, p0, Lcom/mopub/mobileads/VastVideoViewController$5;->this$0:Lcom/mopub/mobileads/VastVideoViewController;

    .line 462
    invoke-virtual {p3}, Lcom/mopub/mobileads/VastVideoViewController;->getCurrentPosition()I

    move-result p3

    .line 461
    invoke-virtual {p1, p2, p3}, Lcom/mopub/common/ExternalViewabilitySessionManager;->recordVideoEvent(Lcom/mopub/common/ExternalViewabilitySession$VideoEvent;I)V

    .line 463
    iget-object p1, p0, Lcom/mopub/mobileads/VastVideoViewController$5;->this$0:Lcom/mopub/mobileads/VastVideoViewController;

    invoke-static {p1}, Lcom/mopub/mobileads/VastVideoViewController;->access$1700(Lcom/mopub/mobileads/VastVideoViewController;)V

    .line 464
    iget-object p1, p0, Lcom/mopub/mobileads/VastVideoViewController$5;->this$0:Lcom/mopub/mobileads/VastVideoViewController;

    invoke-virtual {p1}, Lcom/mopub/mobileads/VastVideoViewController;->makeVideoInteractable()V

    .line 465
    iget-object p1, p0, Lcom/mopub/mobileads/VastVideoViewController$5;->this$0:Lcom/mopub/mobileads/VastVideoViewController;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/mopub/mobileads/BaseVideoViewController;->videoError(Z)V

    .line 466
    iget-object p1, p0, Lcom/mopub/mobileads/VastVideoViewController$5;->this$0:Lcom/mopub/mobileads/VastVideoViewController;

    const/4 p3, 0x1

    invoke-static {p1, p3}, Lcom/mopub/mobileads/VastVideoViewController;->access$1802(Lcom/mopub/mobileads/VastVideoViewController;Z)Z

    .line 468
    iget-object p1, p0, Lcom/mopub/mobileads/VastVideoViewController$5;->this$0:Lcom/mopub/mobileads/VastVideoViewController;

    invoke-static {p1}, Lcom/mopub/mobileads/VastVideoViewController;->access$500(Lcom/mopub/mobileads/VastVideoViewController;)Lcom/mopub/mobileads/VastVideoConfig;

    move-result-object p1

    iget-object p3, p0, Lcom/mopub/mobileads/VastVideoViewController$5;->this$0:Lcom/mopub/mobileads/VastVideoViewController;

    invoke-virtual {p3}, Lcom/mopub/mobileads/BaseVideoViewController;->getContext()Landroid/content/Context;

    move-result-object p3

    sget-object v0, Lcom/mopub/mobileads/VastErrorCode;->GENERAL_LINEAR_AD_ERROR:Lcom/mopub/mobileads/VastErrorCode;

    iget-object v1, p0, Lcom/mopub/mobileads/VastVideoViewController$5;->this$0:Lcom/mopub/mobileads/VastVideoViewController;

    .line 469
    invoke-virtual {v1}, Lcom/mopub/mobileads/VastVideoViewController;->getCurrentPosition()I

    move-result v1

    .line 468
    invoke-virtual {p1, p3, v0, v1}, Lcom/mopub/mobileads/VastVideoConfig;->handleError(Landroid/content/Context;Lcom/mopub/mobileads/VastErrorCode;I)V

    return p2
.end method
