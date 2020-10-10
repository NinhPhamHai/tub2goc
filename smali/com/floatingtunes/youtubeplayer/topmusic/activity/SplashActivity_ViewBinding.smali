.class public Lcom/floatingtunes/youtubeplayer/topmusic/activity/SplashActivity_ViewBinding;
.super Ljava/lang/Object;
.source "SplashActivity_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/floatingtunes/youtubeplayer/topmusic/activity/SplashActivity;

.field private view7f0900b1:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/floatingtunes/youtubeplayer/topmusic/activity/SplashActivity;Landroid/view/View;)V
    .locals 4

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/activity/SplashActivity_ViewBinding;->target:Lcom/floatingtunes/youtubeplayer/topmusic/activity/SplashActivity;

    .line 33
    const-class v0, Landroid/widget/RelativeLayout;

    const v1, 0x7f09002b

    const-string v2, "field \'mAppBackground\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p1, Lcom/floatingtunes/youtubeplayer/topmusic/activity/SplashActivity;->mAppBackground:Landroid/widget/RelativeLayout;

    const v0, 0x7f0900b1

    const-string v1, "field \'mEnterLayout\' and method \'onViewClicked\'"

    .line 34
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 35
    const-class v2, Landroid/widget/LinearLayout;

    const-string v3, "field \'mEnterLayout\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/floatingtunes/youtubeplayer/topmusic/activity/SplashActivity;->mEnterLayout:Landroid/widget/LinearLayout;

    .line 36
    iput-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/activity/SplashActivity_ViewBinding;->view7f0900b1:Landroid/view/View;

    .line 37
    new-instance v0, Lcom/floatingtunes/youtubeplayer/topmusic/activity/SplashActivity_ViewBinding$1;

    invoke-direct {v0, p0, p1}, Lcom/floatingtunes/youtubeplayer/topmusic/activity/SplashActivity_ViewBinding$1;-><init>(Lcom/floatingtunes/youtubeplayer/topmusic/activity/SplashActivity_ViewBinding;Lcom/floatingtunes/youtubeplayer/topmusic/activity/SplashActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 43
    const-class v0, Landroid/widget/RelativeLayout;

    const v1, 0x7f0902a1

    const-string v2, "field \'mTopLayout\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p1, Lcom/floatingtunes/youtubeplayer/topmusic/activity/SplashActivity;->mTopLayout:Landroid/widget/RelativeLayout;

    .line 44
    const-class v0, Landroid/widget/LinearLayout;

    const v1, 0x7f09001e

    const-string v2, "field \'mAdContainer\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/floatingtunes/youtubeplayer/topmusic/activity/SplashActivity;->mAdContainer:Landroid/widget/LinearLayout;

    .line 45
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0902c7

    const-string v2, "field \'mTvTimeCount\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/floatingtunes/youtubeplayer/topmusic/activity/SplashActivity;->mTvTimeCount:Landroid/widget/TextView;

    .line 46
    const-class v0, Landroid/widget/ImageView;

    const v1, 0x7f09002d

    const-string v2, "field \'mArrow\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p1, Lcom/floatingtunes/youtubeplayer/topmusic/activity/SplashActivity;->mArrow:Landroid/widget/ImageView;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 52
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/activity/SplashActivity_ViewBinding;->target:Lcom/floatingtunes/youtubeplayer/topmusic/activity/SplashActivity;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 54
    iput-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/activity/SplashActivity_ViewBinding;->target:Lcom/floatingtunes/youtubeplayer/topmusic/activity/SplashActivity;

    .line 56
    iput-object v1, v0, Lcom/floatingtunes/youtubeplayer/topmusic/activity/SplashActivity;->mAppBackground:Landroid/widget/RelativeLayout;

    .line 57
    iput-object v1, v0, Lcom/floatingtunes/youtubeplayer/topmusic/activity/SplashActivity;->mEnterLayout:Landroid/widget/LinearLayout;

    .line 58
    iput-object v1, v0, Lcom/floatingtunes/youtubeplayer/topmusic/activity/SplashActivity;->mTopLayout:Landroid/widget/RelativeLayout;

    .line 59
    iput-object v1, v0, Lcom/floatingtunes/youtubeplayer/topmusic/activity/SplashActivity;->mAdContainer:Landroid/widget/LinearLayout;

    .line 60
    iput-object v1, v0, Lcom/floatingtunes/youtubeplayer/topmusic/activity/SplashActivity;->mTvTimeCount:Landroid/widget/TextView;

    .line 61
    iput-object v1, v0, Lcom/floatingtunes/youtubeplayer/topmusic/activity/SplashActivity;->mArrow:Landroid/widget/ImageView;

    .line 63
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/activity/SplashActivity_ViewBinding;->view7f0900b1:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 64
    iput-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/activity/SplashActivity_ViewBinding;->view7f0900b1:Landroid/view/View;

    return-void

    .line 53
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
