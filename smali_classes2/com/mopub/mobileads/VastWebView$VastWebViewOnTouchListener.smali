.class Lcom/mopub/mobileads/VastWebView$VastWebViewOnTouchListener;
.super Ljava/lang/Object;
.source "VastWebView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mopub/mobileads/VastWebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "VastWebViewOnTouchListener"
.end annotation


# instance fields
.field private mClickStarted:Z

.field final synthetic this$0:Lcom/mopub/mobileads/VastWebView;


# direct methods
.method constructor <init>(Lcom/mopub/mobileads/VastWebView;)V
    .locals 0

    .line 83
    iput-object p1, p0, Lcom/mopub/mobileads/VastWebView$VastWebViewOnTouchListener;->this$0:Lcom/mopub/mobileads/VastWebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    .line 88
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 p2, 0x1

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    if-eq p1, p2, :cond_0

    goto :goto_0

    .line 93
    :cond_0
    iget-boolean p1, p0, Lcom/mopub/mobileads/VastWebView$VastWebViewOnTouchListener;->mClickStarted:Z

    if-nez p1, :cond_1

    return v0

    .line 96
    :cond_1
    iput-boolean v0, p0, Lcom/mopub/mobileads/VastWebView$VastWebViewOnTouchListener;->mClickStarted:Z

    .line 97
    iget-object p1, p0, Lcom/mopub/mobileads/VastWebView$VastWebViewOnTouchListener;->this$0:Lcom/mopub/mobileads/VastWebView;

    iget-object p1, p1, Lcom/mopub/mobileads/VastWebView;->mVastWebViewClickListener:Lcom/mopub/mobileads/VastWebView$VastWebViewClickListener;

    if-eqz p1, :cond_3

    .line 98
    invoke-interface {p1}, Lcom/mopub/mobileads/VastWebView$VastWebViewClickListener;->onVastWebViewClick()V

    goto :goto_0

    .line 90
    :cond_2
    iput-boolean p2, p0, Lcom/mopub/mobileads/VastWebView$VastWebViewOnTouchListener;->mClickStarted:Z

    :cond_3
    :goto_0
    return v0
.end method
