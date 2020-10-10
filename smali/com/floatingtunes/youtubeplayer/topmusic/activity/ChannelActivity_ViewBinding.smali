.class public Lcom/floatingtunes/youtubeplayer/topmusic/activity/ChannelActivity_ViewBinding;
.super Ljava/lang/Object;
.source "ChannelActivity_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/floatingtunes/youtubeplayer/topmusic/activity/ChannelActivity;


# direct methods
.method public constructor <init>(Lcom/floatingtunes/youtubeplayer/topmusic/activity/ChannelActivity;Landroid/view/View;)V
    .locals 3

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/activity/ChannelActivity_ViewBinding;->target:Lcom/floatingtunes/youtubeplayer/topmusic/activity/ChannelActivity;

    .line 27
    const-class v0, Landroidx/appcompat/widget/Toolbar;

    const v1, 0x7f090246

    const-string v2, "field \'mSettingToolbar\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    iput-object v0, p1, Lcom/floatingtunes/youtubeplayer/topmusic/activity/ChannelActivity;->mSettingToolbar:Landroidx/appcompat/widget/Toolbar;

    .line 28
    const-class v0, Landroid/widget/FrameLayout;

    const v1, 0x7f0900dd

    const-string v2, "field \'mFragmentContainer\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/FrameLayout;

    iput-object p2, p1, Lcom/floatingtunes/youtubeplayer/topmusic/activity/ChannelActivity;->mFragmentContainer:Landroid/widget/FrameLayout;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 34
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/activity/ChannelActivity_ViewBinding;->target:Lcom/floatingtunes/youtubeplayer/topmusic/activity/ChannelActivity;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 36
    iput-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/activity/ChannelActivity_ViewBinding;->target:Lcom/floatingtunes/youtubeplayer/topmusic/activity/ChannelActivity;

    .line 38
    iput-object v1, v0, Lcom/floatingtunes/youtubeplayer/topmusic/activity/ChannelActivity;->mSettingToolbar:Landroidx/appcompat/widget/Toolbar;

    .line 39
    iput-object v1, v0, Lcom/floatingtunes/youtubeplayer/topmusic/activity/ChannelActivity;->mFragmentContainer:Landroid/widget/FrameLayout;

    return-void

    .line 35
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
